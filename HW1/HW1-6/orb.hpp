#ifndef SIFT_HPP
#define SIFT_HPP

#include <opencv2/opencv.hpp>

void get_keypoint_descriptor(cv::Mat img, std::vector<cv::KeyPoint> &key_points, cv::Mat &descriptor, cv::Mat &img_kp);
std::vector<cv::DMatch> match_descriptors(cv::Mat &des1, cv::Mat &des2);

#endif // SIFT_HPP