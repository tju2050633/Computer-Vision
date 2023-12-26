# ORB feature point detection and matching

### Introduction

This program is a simple implementation of ORB feature point detection and matching. It mainly relies on the relevant functions provided by the OpenCV library.



### Directory Structure

```
.
├── input # input images directory
│   └── ...
├── output # output images directory
│   └── ...
├── bin # executable files directory
│   └── ...
├── CMakeLists.txt
├── main.cpp
├── orb.cpp
├── orb.hpp
└── README.md
```



### Enviroment

- C++ compiler: clang 14.0.0
- OpenCV: 4.8.1

### Run

Before running the project, you can modify the `CMakeLists.txt` file to change the **minimum required CMake version**, **C++ standard**, etc. The **OpenCV path** needs to be modified to the path on your own computer. To do this, you can use the "find_package" command to locate the OpenCV library on your system without specifying the exact path. You can replace the "include_directories" and "file(GLOB)" commands with the following command:

```
find_package(OpenCV REQUIRED)
target_link_libraries(ORB ${OpenCV_LIBS})
```



Enter the following example command in the terminal after navigating to the directory `main.cpp` file is located：

```sh
mkdir bin
cd bin
cmake .. && make && ./ORB ../input/jishi1.png ../input/jishi2.png ../output/jishi.png 1
```

The program accepts the following command-line arguments:

- --img1: Path to the first input image. 
- --img2: Path to the second input image. 
- --output: Path to the output image. 
- --show: Whether to show the intermediate and resulting images in a window or not. If the value is 1, the intermediate and resulting images will be shown in a window. If the value is 0, they will not be shown.

The result image will be saved in the path specified by the --output argument.  Press any key to close the image windows.

Note: All the relative paths in the program are relative to the directory where the executable file is located, i.e. the `bin` directory.

