# RANSAC Implementation

### Introduction

This is a Python implementation of the RANSAC algorithm for fitting a straight 2D line from the sample points.



### Directory Structure

```
.
├── main.py
├── result.png
├── requirements.txt
└── README.md
```



### Enviroment

- Python 3.X
- matplotlib 3.7.2

Make sure that python3 is installed on your machine. To install the required packages, run the following command in the terminal:

```sh
pip3 install -r requirements.txt
```

### Run

Enter the following command in the terminal after navigating to the directory where the `main.py` file is located：

```sh
python3 main.py
```

The result image `result.png` will be saved in the same directory.



### Configuration

The following parameters can be modified in the `main.py` file to change the behavior of the program:

- `POINTS_DATASET data(list)`: The sample points from which we fit a line.
- `MAX_ITERATIONS k(int)`: The maximum number of iterations to perform in the RANSAC algorithm.
- `SUBSET_SIZE n(int)`: The size of the random subset of points to use for fitting the model in each iteration of the RANSAC algorithm.
- `DISTANCE_THRESHOLD t(float)`: The maximum distance from a point to the model for it to be considered an inlier in the RANSAC algorithm.
- `MIN_INLIERS d(int)`: The minimum number of inliers required for a model to be considered good in the RANSAC algorithm.

Specifically, the configurations are located in the two lines below in the function `test()`, line 87 in `main.py`:

```python
def test():
    data = [Point(-2, 0), Point(0, 0.9), Point(2, 2.0), Point(3, 6.5), Point(4, 2.9), Point(5, 8.8), Point(6, 3.95), Point(8, 5.03), Point(10, 5.97), Point(12, 7.1), Point(13, 1.2), Point(14, 8.2), Point(16, 8.5), Point(18, 10.1)]
    model = RANSAC(data, 100, 2, 1, 8) # data, k, n, t, d
    
    ...
```

