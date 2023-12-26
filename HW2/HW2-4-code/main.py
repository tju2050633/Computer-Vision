import os
import argparse
import cv2
import numpy as np

from calibration import perform_camera_calibration
from bev import generate_birds_eye_view

def parse_args():
    parser = argparse.ArgumentParser(description='Camera calibration and bird\'s eye view transformation.')
    parser.add_argument('--grid_size', type=int, default=100, help='Size of the grid in the chessboard.')
    parser.add_argument('--x_offset', type=int, default=200, help='X offset of the chessboard in the bird\'s eye view.')
    parser.add_argument('--y_offset', type=int, default=600, help='Y offset of the chessboard in the bird\'s eye view.')
    parser.add_argument('--image_dir', type=str, default="img/calibration_img", help='Directory containing calibration images.')
    parser.add_argument('--board_size', type=tuple, default=(9, 6), help='Size of the chessboard used for calibration.')
    parser.add_argument('--image_size', type=tuple, default=(640, 480), help='Size of the images used for calibration.')
    parser.add_argument('--intrinsic_dir', type=str, default="intsrinsic", help='Directory to save the intrinsic parameters.')
    parser.add_argument('--input_img_path', type=str, default="img/input.png")
    parser.add_argument('--output_img_path', type=str, default="img/output.png")
    return parser.parse_args()

def main(args):
    perform_camera_calibration(args)
    generate_birds_eye_view(args)

if __name__ == '__main__':
    args = parse_args()
    main(args)