# HW1-6/bin % cmake .. && make && ./ORB ../input/library1.jpg ../input/library2.jpg ../output/library.jpg 1

### config

cmake_minimum_required (VERSION 2.8)
set(CMAKE_CXX_STANDARD 17)
project (ORB)

### compile

aux_source_directory(. DIR_SRCS)
add_executable(ORB ${DIR_SRCS})

# opencv
include_directories(/usr/local/Cellar/opencv@3/3.4.16_10/include)
file(GLOB OpenCV_LIBS /usr/local/Cellar/opencv@3/3.4.16_10/lib/*.dylib)
target_link_libraries(ORB ${OpenCV_LIBS})

# uncomment to use opencv without specifying path
# find_package(OpenCV REQUIRED)
# target_link_libraries(ORB ${OpenCV_LIBS})