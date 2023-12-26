import cv2
import numpy as np

from utils import load_intrinsic_params
from utils import create_obj_points

def generate_birds_eye_view(args):
    """
    Generate a bird's eye view image from the input image.
    """

    # Get the undistorted image
    img = cv2.imread(args.input_img_path)
    K, dist = load_intrinsic_params(args.intrinsic_dir)
    undistorted_img = undistort_image(img, K, dist)

    # Get the bird's eye view
    corners = find_input_corners(undistorted_img, args.board_size)
    if corners is not None:
        M = generate_transformation_matrix(corners, args.board_size, args.grid_size, args.x_offset, args.y_offset)
        bev_img = warp_perspective(undistorted_img, M)
        cv2.imwrite(args.output_img_path, bev_img)

def undistort_image(img, K, dist):
    """
    Undistort the input image using the camera matrix and distortion coefficients.
    """
    h, w = img.shape[:2]
    new_K, roi = cv2.getOptimalNewCameraMatrix(K, dist, (w, h), 1, (w, h))
    undistorted_img = cv2.undistort(img, K, dist, None, new_K)
    return undistorted_img

def find_input_corners(img, board_size):
    """
    Find the corners of the chessboard in the input image.
    """
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    ret, corners = cv2.findChessboardCorners(gray, board_size, None)
    if ret:
        return corners
    else:
        return None
    
def generate_transformation_matrix(corner_points, board_size, grid_size, x_offset, y_offset):
    """
    Generate the transformation matrix for warping the image to a bird's eye view.
    """
    # Prepare source and destination points
    src_world = np.array([corner_points[0, :], corner_points[board_size[0]-1, :], corner_points[-board_size[1], :], corner_points[-1, :]])
    
    obj_points = create_obj_points(board_size)
    dst_bird = np.array([obj_points[0, :][:-1], obj_points[board_size[0]-1, :][:-1], obj_points[-board_size[1], :][:-1], obj_points[-1, :][:-1]])
    dst_bird[:, :2] = dst_bird[:, :2] * grid_size + np.array([x_offset, y_offset])

    # Compute the perspective transform matrix
    M = cv2.getPerspectiveTransform(src_world, dst_bird)

    return M

def warp_perspective(img, trans):
    """
    Warp the input image using the transformation matrix.
    """
    h, w = img.shape[:2]
    warped_img = cv2.warpPerspective(img, trans, (w, h))
    return warped_img