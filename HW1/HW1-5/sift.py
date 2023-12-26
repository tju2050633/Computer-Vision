import cv2
import numpy as np

def get_keypoint_descriptor(img):
    """
    Detect keypoints and compute descriptors for an input image using SIFT algorithm.

    Args:
        img (numpy.ndarray): Input image.

    Returns:
        tuple: A tuple containing key points, descriptors, and an image with keypoints drawn on it.
            - key_points (list): A list of key points detected in the input image.
            - descriptor (numpy.ndarray): A numpy array containing the descriptors computed for the detected key points.
            - img_kp (numpy.ndarray): An image with the detected key points drawn on it.
    """

    # convert to grayscale
    gray_pic = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    # Initiate SIFT detector
    sift = cv2.SIFT_create()

    # find the keypoints and descriptors with SIFT
    key_points = sift.detect(gray_pic, None)
    key_points, descriptor = sift.compute(gray_pic, key_points)

    # draw keypoints on the image
    img_kp = cv2.drawKeypoints(img, key_points, None)

    return key_points, descriptor, img_kp

def match_descriptors(des1, des2):
    """
    Match descriptors between two sets of descriptors using the Brute-Force Matcher algorithm.

    Args:
        des1 (numpy.ndarray): A numpy array containing the descriptors for the first set of keypoints.
        des2 (numpy.ndarray): A numpy array containing the descriptors for the second set of keypoints.

    Returns:
        list: A list of matches between the two sets of descriptors.
    """

    # create BFMatcher object
    bf = cv2.BFMatcher()

    # Match descriptors.
    matches = bf.knnMatch(des1, des2, k=2)

    # Sort them in the order of their distance.
    matches = sorted(matches, key = lambda x: x[0].distance / x[1].distance)

    # Filter matches by distance
    matches = [m for m, n in matches if m.distance < 0.7 * n.distance]

    return matches

def get_homography(key_points1, key_points2, matches):
    """
    Calculate the homography matrix between two sets of keypoints using RANSAC algorithm.

    Args:
        key_points1 (list): A list of key points detected in the first input image.
        key_points2 (list): A list of key points detected in the second input image.
        matches (list): A list of matches between the two sets of keypoints.

    Returns:
        numpy.ndarray: A 3x3 homography matrix that maps points in the first image to points in the second image.
    """

    # Get the keypoints from the matches
    points1 = np.float32([key_points1[m.queryIdx].pt for m in matches]).reshape(-1, 1, 2)
    points2 = np.float32([key_points2[m.trainIdx].pt for m in matches]).reshape(-1, 1, 2)

    # Calculate homography matrix using RANSAC
    H, _ = cv2.findHomography(points1, points2, cv2.RANSAC, 5.0)

    return H

def stitch_images(img1, img2, H):
    """
    Stitch two input images together using a homography matrix.

    Args:
        img1 (numpy.ndarray): The first input image.
        img2 (numpy.ndarray): The second input image.
        H (numpy.ndarray): A 3x3 homography matrix that maps points in the first image to points in the second image.

    Returns:
        numpy.ndarray: A stitched image that combines the two input images.
    """
    # Get the dimensions of the input images
    h1, w1 = img1.shape[:2]
    h2, w2 = img2.shape[:2]

    # Warp the first image to align with the second image using the homography matrix
    panorama = cv2.warpPerspective(img1, H, (w1 + w2, max(h1, h2)))

    # Copy the second image onto the stitched image
    panorama[0:h2, 0:w2] = img2

    return panorama