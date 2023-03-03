cmake_minimum_required(VERSION 3.1)
set (CMAKE_CXX_STANDARD 14)

project(StaticScanner LANGUAGES CXX)

file(GLOB_RECURSE srcfiles 
src/*.h   
src/*.hpp
src/*.cpp
)
include_directories(${PROJECT_SOURCE_DIR}/src)

# set(OpenCV_DIR ${PROJECT_SOURCE_DIR}/3rdParty/opencv/lib/cmake/opencv4/)
# find_package(OpenCV REQUIRED)

set(target_name main) #cpp files with same name must be located in /mainfiles 
add_executable(${target_name} mainfiles/${target_name}.cpp)
target_sources(${target_name} PRIVATE ${srcfiles})
# target_include_directories(${target_name} PUBLIC ${OpenCV_INCLUDE_DIRS})
# target_link_libraries(${target_name} PRIVATE ${OpenCV_LIBRARIES})
