import random
import math
from matplotlib import pyplot as plt

# point in 2D space
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

# linear model: y = kx + b
class Model:
    def __init__(self, k, b):
        self.k = k
        self.b = b

    def getParams(self):
        return (self.k, self.b)

    # calculate the distance between a point and a line
    def distance(self, point):
        return abs((self.k * point.x - point.y + self.b) / math.sqrt(self.k ** 2 + 1))
    
    # calculate the total error of the model on a set of points
    def error(self, points):
        return sum(self.distance(point) for point in points)
    
    # fit a model to a set of points using least squares
    @staticmethod
    def fit(points):
        # Calculate the mean of x and y coordinates
        x_mean = sum(point.x for point in points) / len(points)
        y_mean = sum(point.y for point in points) / len(points)

        # Calculate the slope and intercept of the line
        numerator = sum((point.x - x_mean) * (point.y - y_mean) for point in points)
        denominator = sum((point.x - x_mean) ** 2 for point in points)
        k = numerator / denominator
        b = y_mean - k * x_mean

        # Create a new Model object with the fitted parameters
        return Model(k, b)
    
def RANSAC(data, k, n, t, d):
    """
    RANSAC algorithm for fitting a model to noisy data.

    Args:
        data (list): A list of Point objects representing the data points.
        k (int): The maximum number of iterations to perform.
        n (int): The size of the random subset of points to use for fitting the model. Here n = 2.
        t (float): The maximum distance from a point to the model for it to be considered an inlier.
        d (int): The minimum number of inliers required for a model to be considered good.

    Returns:
        Model: The best model found by the algorithm.
    """
    iterations = 0
    bestFit = None
    bestErr = 10**10

    while(iterations < k):
        # fit a model to a random subset of the data
        maybeInliers = random.sample(data, n)
        maybeModel = Model.fit(maybeInliers)

        # build the consensus set
        alsoInliers = []
        for point in data:
            if point not in maybeInliers:
                if maybeModel.distance(point) < t:
                    alsoInliers.append(point)

        # we've found a good model if enough points are in the consensus set
        # now we fit the model again using all the points in the consensus set
        if len(alsoInliers) > d:
            betterModel = Model.fit(maybeInliers + alsoInliers)
            thisErr = betterModel.error(alsoInliers)
            if thisErr < bestErr:
                bestFit = betterModel
                bestErr = thisErr

        iterations += 1

    return bestFit

def test():
    data = [Point(-2, 0), Point(0, 0.9), Point(2, 2.0), Point(3, 6.5), Point(4, 2.9), Point(5, 8.8), Point(6, 3.95), Point(8, 5.03), Point(10, 5.97), Point(12, 7.1), Point(13, 1.2), Point(14, 8.2), Point(16, 8.5), Point(18, 10.1)]
    model = RANSAC(data, 100, 2, 1, 8) # data, k, n, t, d

    # draw the data points and the fitted line
    x = [point.x for point in data]
    y = [point.y for point in data]
    k, b = model.getParams()

    plt.scatter(x, y)
    plt.plot(x, [k * xi + b for xi in x], color='red')
    plt.savefig('result.png')
    plt.show()

def main():
    test()

if __name__ == "__main__":
    main()