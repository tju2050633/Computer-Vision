# SIFT-based panorama stitching

### Introduction

This is a simple implementation of SIFT-based panorama stitching. Get two images $I_1$ and $I_2$ and make sure that the major parts of $I_1$ and $I_2$ are from the same physical plane. This program stitches $I_1$ and $I_2$ together to get a panorama view using scale-normalized LoG based interest point detector and SIFT descriptors. This program mainly relies on the relevant functions provided by the OpenCV library.



### Directory Structure

```
.
├── input # input images directory
│   └── ...
├── output # output images directory
│   └── ...
├── main.py # main pipeline
├── sift.py # functions for SIFT-based panorama stitching
├── requirements.txt
└── README.md
```



### Enviroment

- Python 3.X
- opencv-python 4.8
- numpy 1.26.1

Make sure that python3 is installed on your machine. To install the required packages, run the following command in the terminal:

```sh
pip3 install -r requirements.txt
```

### Run

Enter the following command in the terminal after navigating to the directory where the `main.py` file is located：

```sh
python3 main.py
```

The main.py file accepts the following command-line arguments:

- --img1: Path to the first input image. Default value is 'input/jishi1.png'.
- --img2: Path to the second input image. Default value is 'input/jishi2.png'.
- --output: Path to the output image. Default value is 'output/result.jpg'.
- --show: Whether to show the intermediate and resulting images in a window or not. Default value is True.

The result image will be saved in the path specified by the --output argument. Press any key to close the image windows.

