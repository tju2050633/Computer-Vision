#include "orb.hpp"

void get_keypoint_descriptor(cv::Mat img, std::vector<cv::KeyPoint> &key_points, cv::Mat &descriptor, cv::Mat &img_kp) {
    cv::Mat gray_img;
    cv::cvtColor(img, gray_img, cv::COLOR_BGR2GRAY);

    cv::Ptr<cv::ORB> orb = cv::ORB::create(10000, 1.2f, 8, 31, 0, 2, cv::ORB::HARRIS_SCORE, 31, 20);

    orb->detectAndCompute(gray_img, cv::noArray(), key_points, descriptor);
    cv::drawKeypoints(img, key_points, img_kp);
}

std::vector<cv::DMatch> match_descriptors(cv::Mat &des1, cv::Mat &des2) {
    // create BFMatcher object
    cv::BFMatcher bf(cv::NORM_HAMMING);

    // Match descriptors.
    std::vector<std::vector<cv::DMatch>> matches;
    bf.knnMatch(des1, des2, matches, 2);

    // Sort them in the order of their distance.
    std::sort(matches.begin(), matches.end(), [](const std::vector<cv::DMatch>& a, const std::vector<cv::DMatch>& b) {
        return a[0].distance / a[1].distance < b[0].distance / b[1].distance;
    });

    // Filter matches by distance
    std::vector<cv::DMatch> good_matches;
    for (size_t i = 0; i < matches.size(); i++) {
        if (matches[i][0].distance < 0.7 * matches[i][1].distance) {
            good_matches.push_back(matches[i][0]);
        }
    }

    return good_matches;
}
