import numpy as np
import cv2

from utils import load_images
from utils import save_intrinsic_params
from utils import create_obj_points

def perform_camera_calibration(args):
    """
    Perform camera calibration using a set of images of a chessboard.
    """

    # Find the chessboard corners in the images
    image_paths = load_images(args.image_dir)
    obj_points, img_points = find_obj_img_corners(image_paths, args.board_size)

    # Calculate the camera matrix(K) and distortion coefficients, and save them
    K, dist = calibrate_camera(obj_points, img_points, args.image_size)
    save_intrinsic_params(K, dist, args.intrinsic_dir)

def find_obj_img_corners(image_paths, board_size):
    """
    Finds the chessboard corners in each image specified by the given paths.
    """
    obj_points = []  # 3d points in real world space
    img_points = []  # 2d points in image plane

    for img_path in image_paths:
        img = cv2.imread(img_path)
        if img is None:
            print(f"Unable to read image: {img_path}")
            continue
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        ret, corners = cv2.findChessboardCorners(gray, board_size, None)

        if ret:
            obj_points.append(create_obj_points(board_size))
            img_points.append(corners)

    return obj_points, img_points

def calibrate_camera(obj_points, img_points, img_size):
    """
    Calibrate the camera using the object points and image points by calling OpenCV's calibrateCamera function.
    """
    ret, K, dist, rvecs, tvecs = cv2.calibrateCamera(obj_points, img_points, img_size, None, None)
    return K, dist