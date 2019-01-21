#include "opencv2/opencv.hpp"

int main()
{

    cv::Mat colorMat = cv::imread("test_image.jpg",CV_LOAD_IMAGE_COLOR);
    cv::Mat greyMat;
    cv::cvtColor(colorMat, greyMat, cv::COLOR_BGR2GRAY);
    cv::imwrite("test_image_gray.jpg", greyMat); 
    return 0;
}