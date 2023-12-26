import sys  
import cv2
import argparse

from sift import *

def parse_args():
    """
    Parse command-line arguments.

    Returns:
        argparse.Namespace: An object containing the parsed arguments.
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('--img1', type=str, default='input/jishi1.png', help='path to image 1')
    parser.add_argument('--img2', type=str, default='input/jishi2.png', help='path to image 2')
    parser.add_argument('--output', type=str, default='output/jishi.png', help='path to output image')
    parser.add_argument('--show', type=bool, default=True, help='show result or not')
    args = parser.parse_args()

    return args

def main():
    args = parse_args()

    # read images
    img1 = cv2.imread(args.img1)
    if img1 is None:
        print("Error: Could not read image file", args.img1)
        sys.exit(1)
    img2 = cv2.imread(args.img2)
    if img2 is None:
        print("Error: Could not read image file", args.img2)
        sys.exit(1)

    # get keypoints and descriptors
    # get images with keypoints
    kp1, des1, img1_kp = get_keypoint_descriptor(img1)
    kp2, des2, img2_kp = get_keypoint_descriptor(img2)

    # match descriptors
    # get image with matches
    match = match_descriptors(des1, des2)
    match_img = cv2.drawMatches(img1, kp1, img2, kp2, match, None, flags=2)

    # get homography matrix
    H = get_homography(kp1, kp2, match)

    # stitch images
    panorama = stitch_images(img1, img2, H)

    # save result
    cv2.imwrite(args.output, panorama)

    # display result
    if not args.show:
        return
    cv2.imshow('img1_kp', img1_kp)
    cv2.imshow('img2_kp', img2_kp)
    cv2.imshow('match', match_img)
    cv2.imshow('panorama', panorama)

    cv2.waitKey(0)
    cv2.destroyAllWindows()

if __name__ == "__main__":
    main()