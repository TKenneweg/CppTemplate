#include <iostream>
#include "adder.h"
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>


int main(){
    std::string image_path = "../Example.jpg";
    cv::Mat img = cv::imread(image_path, cv::IMREAD_COLOR);
    if(img.empty())
    {
        std::cout << "Could not read the image: " << image_path << std::endl;
        return 1;
    }
    cv::imshow("Display window", img);
    int k = cv::waitKey(0); // Wait for a keystroke in the window
    return 0;
}