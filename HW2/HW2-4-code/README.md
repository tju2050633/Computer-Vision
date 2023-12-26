# Bird’s-eye-view generation

### Introduction

This is a Python implementation of the bird’s-eye-view generation.



### Directory Structure

```
.
├── img
│   ├── calibration_img # folder of images for camera calibration
│   │   ├── ...
│   ├── caliboard.jpg
│   ├── input.jpg
│   └── output.jpg
├── intsrinsic # intrinsic parameters saved in .npy and .txt formats
│   ├── K_params.npy
│   ├── dist_params.npy
│   └── intrinsic_params.txt
├── main.py
├── calibration.py # mainly for camera calibration
├── bev.py # mainly for generating bird's eye view
├── utils.py # utility functions
├── requirements.txt
└── README.md
```



### Enviroment

- Python 3.X
- opencv-python
- numpy

Make sure that python3 is installed on your machine. To install the required packages, run the following command in the terminal:

```sh
pip3 install -r requirements.txt
```

### Run

Enter the following command in the terminal after navigating to the directory where the `main.py` file is located：

```sh
python3 main.py
```

The result image `output.png` will be saved in the `./img` directory.

## Command-line Arguments

The following command-line arguments are accepted by this project:

- `--grid_size`: The size of the grid in the chessboard, default is 50.
- `--x_offset`: The X offset of the chessboard in the bird's eye view, default is 200.
- `--y_offset`: The Y offset of the chessboard in the bird's eye view, default is 600.
- `--image_dir`: The directory containing calibration images, default is "img/calibration_img".
- `--board_size`: The size of the chessboard used for calibration, default is (9, 6).
- `--image_size`: The size of the images used for calibration, default is (640, 480).
- `--intrinsic_dir`: The directory to save the intrinsic parameters, default is "intrinsic".
- `--input_img_path`: The path of the input image, default is "img/input.jpg".
- `--output_img_path`: The path of the output image, default is "img/output.jpg".

You can modify these values by adding arguments in the command line. For example, if you want to change the grid size, you can run `python main.py --grid_size 60`.
