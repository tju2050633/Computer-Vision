# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/bin

# Include any dependencies generated for this target.
include CMakeFiles/ORB.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ORB.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ORB.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ORB.dir/flags.make

CMakeFiles/ORB.dir/main.cpp.o: CMakeFiles/ORB.dir/flags.make
CMakeFiles/ORB.dir/main.cpp.o: /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/main.cpp
CMakeFiles/ORB.dir/main.cpp.o: CMakeFiles/ORB.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ORB.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ORB.dir/main.cpp.o -MF CMakeFiles/ORB.dir/main.cpp.o.d -o CMakeFiles/ORB.dir/main.cpp.o -c /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/main.cpp

CMakeFiles/ORB.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ORB.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/main.cpp > CMakeFiles/ORB.dir/main.cpp.i

CMakeFiles/ORB.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ORB.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/main.cpp -o CMakeFiles/ORB.dir/main.cpp.s

CMakeFiles/ORB.dir/orb.cpp.o: CMakeFiles/ORB.dir/flags.make
CMakeFiles/ORB.dir/orb.cpp.o: /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/orb.cpp
CMakeFiles/ORB.dir/orb.cpp.o: CMakeFiles/ORB.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ORB.dir/orb.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ORB.dir/orb.cpp.o -MF CMakeFiles/ORB.dir/orb.cpp.o.d -o CMakeFiles/ORB.dir/orb.cpp.o -c /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/orb.cpp

CMakeFiles/ORB.dir/orb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ORB.dir/orb.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/orb.cpp > CMakeFiles/ORB.dir/orb.cpp.i

CMakeFiles/ORB.dir/orb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ORB.dir/orb.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/orb.cpp -o CMakeFiles/ORB.dir/orb.cpp.s

# Object files for target ORB
ORB_OBJECTS = \
"CMakeFiles/ORB.dir/main.cpp.o" \
"CMakeFiles/ORB.dir/orb.cpp.o"

# External object files for target ORB
ORB_EXTERNAL_OBJECTS =

ORB: CMakeFiles/ORB.dir/main.cpp.o
ORB: CMakeFiles/ORB.dir/orb.cpp.o
ORB: CMakeFiles/ORB.dir/build.make
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_aruco.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_aruco.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_aruco.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_bgsegm.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_bgsegm.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_bgsegm.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_bioinspired.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_bioinspired.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_bioinspired.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_calib3d.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_calib3d.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_calib3d.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ccalib.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ccalib.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ccalib.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_core.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_core.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_core.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_datasets.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_datasets.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_datasets.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dnn.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dnn.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dnn.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dnn_objdetect.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dnn_objdetect.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dnn_objdetect.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dpm.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dpm.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_dpm.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_face.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_face.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_face.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_features2d.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_features2d.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_features2d.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_flann.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_flann.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_flann.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_freetype.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_freetype.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_freetype.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_fuzzy.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_fuzzy.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_fuzzy.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_hfs.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_hfs.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_hfs.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_highgui.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_highgui.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_highgui.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_img_hash.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_img_hash.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_img_hash.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_imgcodecs.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_imgcodecs.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_imgcodecs.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_imgproc.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_imgproc.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_imgproc.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_line_descriptor.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_line_descriptor.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_line_descriptor.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ml.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ml.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ml.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_objdetect.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_objdetect.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_objdetect.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_optflow.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_optflow.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_optflow.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_phase_unwrapping.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_phase_unwrapping.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_phase_unwrapping.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_photo.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_photo.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_photo.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_plot.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_plot.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_plot.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_reg.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_reg.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_reg.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_rgbd.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_rgbd.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_rgbd.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_saliency.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_saliency.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_saliency.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_sfm.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_sfm.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_sfm.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_shape.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_shape.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_shape.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_stereo.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_stereo.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_stereo.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_stitching.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_stitching.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_stitching.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_structured_light.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_structured_light.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_structured_light.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_superres.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_superres.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_superres.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_surface_matching.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_surface_matching.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_surface_matching.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_tracking.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_tracking.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_tracking.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_video.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_video.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_video.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_videoio.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_videoio.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_videoio.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_videostab.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_videostab.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_videostab.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xfeatures2d.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xfeatures2d.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xfeatures2d.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ximgproc.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ximgproc.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_ximgproc.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xobjdetect.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xobjdetect.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xobjdetect.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xphoto.3.4.16.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xphoto.3.4.dylib
ORB: /usr/local/Cellar/opencv@3/3.4.16_10/lib/libopencv_xphoto.dylib
ORB: CMakeFiles/ORB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ORB"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ORB.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ORB.dir/build: ORB
.PHONY : CMakeFiles/ORB.dir/build

CMakeFiles/ORB.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ORB.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ORB.dir/clean

CMakeFiles/ORB.dir/depend:
	cd /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6 /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6 /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/bin /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/bin /Users/guolianglu/Desktop/course/CV/CVHW/HW1/HW1-6/bin/CMakeFiles/ORB.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ORB.dir/depend
