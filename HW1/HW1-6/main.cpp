#include <iostream>
#include <string>
#include <opencv2/opencv.hpp>
#include "orb.hpp"

int main(int argc, char *argv[]) {
    // Parse command-line arguments
    if (argc != 5) {
        std::cerr << "Usage: " << argv[0] << " <path to image 1> <path to image 2> <path to result image> <if show result image>" << std::endl;
        return 1;
    }
    std::string img1_path = argv[1];
    std::string img2_path = argv[2];
    std::string result_path = argv[3];
    bool show_result = std::stoi(argv[4]);

    // read images
    cv::Mat img1 = cv::imread(img1_path);
    if (img1.empty()) {
        std::cerr << "Error: Could not read image file " << img1_path << std::endl;
        return 1;
    }
    cv::Mat img2 = cv::imread(img2_path);
    if (img2.empty()) {
        std::cerr << "Error: Could not read image file " << img2_path << std::endl;
        return 1;
    }

    // get keypoints and descriptors
    // get images with keypoints
    std::vector<cv::KeyPoint> kp1, kp2;
    cv::Mat des1, des2;
    cv::Mat img1_kp, img2_kp;
    get_keypoint_descriptor(img1, kp1, des1, img1_kp);
    get_keypoint_descriptor(img2, kp2, des2, img2_kp);

    // match descriptors
    // get image with matches
    std::vector<cv::DMatch> match = match_descriptors(des1, des2);
    cv::Mat match_pic;
    cv::drawMatches(img1, kp1, img2, kp2, match, match_pic, cv::Scalar::all(-1), cv::Scalar::all(-1), std::vector<char>(),
                cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS);

    // save result
    cv::imwrite(result_path, match_pic);

    // display result
    if (!show_result) {
        return 0;
    }
    cv::imshow("img1_kp", img1_kp);
    cv::imshow("img2_kp", img2_kp);
    cv::imshow("match", match_pic);
    cv::waitKey(0);

    return 0;
}