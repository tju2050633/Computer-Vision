import os
import numpy as np
from pathlib import Path

def load_images(path):
    """
    Load all images from the specified directory.
    """
    if not os.path.exists(path):
        raise Exception('The specified path does not exist.')
    image_files = os.listdir(path)
    image_paths = [os.path.join(path, img) for img in image_files if Path(img).suffix in ['.png', '.jpg']]
    return image_paths

def save_intrinsic_params(K, dist, path):
    """
    Save the camera matrix (K) and distortion coefficients (dist) to the specified path.
    """
    if not os.path.exists(path):
        os.makedirs(path)
    K_path = os.path.join(path, 'K_params')
    dist_path = os.path.join(path, 'dist_params')
    txt_path = os.path.join(path, 'intrinsic_params.txt')
    np.save(K_path, K)
    np.save(dist_path, dist)
    with open(txt_path, 'w') as f:
        f.write('K:\n')
        f.write(str(K))
        f.write('\n\ndist:\n')
        f.write(str(dist))

def load_intrinsic_params(path):
    """
    Load the camera matrix (K) and distortion coefficients (dist) from the specified path.
    """
    K_path = os.path.join(path, 'K_params.npy')
    dist_path = os.path.join(path, 'dist_params.npy')
    K = np.load(K_path)
    dist = np.load(dist_path)
    return K, dist

def create_obj_points(board_size):
    """
    Creates a 3D point grid for the chessboard corners, 
    assuming the chessboard is fixed on the (x, y) plane at z=0.
    """
    obj_points = np.zeros((np.prod(board_size), 3), dtype=np.float32)
    obj_points[:, :2] = np.mgrid[0:board_size[0], 0:board_size[1]].T.reshape(-1, 2)
    return obj_points