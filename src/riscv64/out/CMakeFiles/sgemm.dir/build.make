# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out

# Include any dependencies generated for this target.
include CMakeFiles/sgemm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sgemm.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sgemm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sgemm.dir/flags.make

CMakeFiles/sgemm.dir/test_MMult.cpp.o: CMakeFiles/sgemm.dir/flags.make
CMakeFiles/sgemm.dir/test_MMult.cpp.o: ../test_MMult.cpp
CMakeFiles/sgemm.dir/test_MMult.cpp.o: CMakeFiles/sgemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sgemm.dir/test_MMult.cpp.o"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sgemm.dir/test_MMult.cpp.o -MF CMakeFiles/sgemm.dir/test_MMult.cpp.o.d -o CMakeFiles/sgemm.dir/test_MMult.cpp.o -c /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/test_MMult.cpp

CMakeFiles/sgemm.dir/test_MMult.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sgemm.dir/test_MMult.cpp.i"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/test_MMult.cpp > CMakeFiles/sgemm.dir/test_MMult.cpp.i

CMakeFiles/sgemm.dir/test_MMult.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sgemm.dir/test_MMult.cpp.s"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/test_MMult.cpp -o CMakeFiles/sgemm.dir/test_MMult.cpp.s

CMakeFiles/sgemm.dir/REF_MMult.cpp.o: CMakeFiles/sgemm.dir/flags.make
CMakeFiles/sgemm.dir/REF_MMult.cpp.o: ../REF_MMult.cpp
CMakeFiles/sgemm.dir/REF_MMult.cpp.o: CMakeFiles/sgemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sgemm.dir/REF_MMult.cpp.o"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sgemm.dir/REF_MMult.cpp.o -MF CMakeFiles/sgemm.dir/REF_MMult.cpp.o.d -o CMakeFiles/sgemm.dir/REF_MMult.cpp.o -c /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/REF_MMult.cpp

CMakeFiles/sgemm.dir/REF_MMult.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sgemm.dir/REF_MMult.cpp.i"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/REF_MMult.cpp > CMakeFiles/sgemm.dir/REF_MMult.cpp.i

CMakeFiles/sgemm.dir/REF_MMult.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sgemm.dir/REF_MMult.cpp.s"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/REF_MMult.cpp -o CMakeFiles/sgemm.dir/REF_MMult.cpp.s

CMakeFiles/sgemm.dir/random_matrix.cpp.o: CMakeFiles/sgemm.dir/flags.make
CMakeFiles/sgemm.dir/random_matrix.cpp.o: ../random_matrix.cpp
CMakeFiles/sgemm.dir/random_matrix.cpp.o: CMakeFiles/sgemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sgemm.dir/random_matrix.cpp.o"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sgemm.dir/random_matrix.cpp.o -MF CMakeFiles/sgemm.dir/random_matrix.cpp.o.d -o CMakeFiles/sgemm.dir/random_matrix.cpp.o -c /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/random_matrix.cpp

CMakeFiles/sgemm.dir/random_matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sgemm.dir/random_matrix.cpp.i"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/random_matrix.cpp > CMakeFiles/sgemm.dir/random_matrix.cpp.i

CMakeFiles/sgemm.dir/random_matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sgemm.dir/random_matrix.cpp.s"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/random_matrix.cpp -o CMakeFiles/sgemm.dir/random_matrix.cpp.s

CMakeFiles/sgemm.dir/print_matrix.cpp.o: CMakeFiles/sgemm.dir/flags.make
CMakeFiles/sgemm.dir/print_matrix.cpp.o: ../print_matrix.cpp
CMakeFiles/sgemm.dir/print_matrix.cpp.o: CMakeFiles/sgemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sgemm.dir/print_matrix.cpp.o"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sgemm.dir/print_matrix.cpp.o -MF CMakeFiles/sgemm.dir/print_matrix.cpp.o.d -o CMakeFiles/sgemm.dir/print_matrix.cpp.o -c /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/print_matrix.cpp

CMakeFiles/sgemm.dir/print_matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sgemm.dir/print_matrix.cpp.i"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/print_matrix.cpp > CMakeFiles/sgemm.dir/print_matrix.cpp.i

CMakeFiles/sgemm.dir/print_matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sgemm.dir/print_matrix.cpp.s"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/print_matrix.cpp -o CMakeFiles/sgemm.dir/print_matrix.cpp.s

CMakeFiles/sgemm.dir/compare_matrices.cpp.o: CMakeFiles/sgemm.dir/flags.make
CMakeFiles/sgemm.dir/compare_matrices.cpp.o: ../compare_matrices.cpp
CMakeFiles/sgemm.dir/compare_matrices.cpp.o: CMakeFiles/sgemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sgemm.dir/compare_matrices.cpp.o"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sgemm.dir/compare_matrices.cpp.o -MF CMakeFiles/sgemm.dir/compare_matrices.cpp.o.d -o CMakeFiles/sgemm.dir/compare_matrices.cpp.o -c /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/compare_matrices.cpp

CMakeFiles/sgemm.dir/compare_matrices.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sgemm.dir/compare_matrices.cpp.i"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/compare_matrices.cpp > CMakeFiles/sgemm.dir/compare_matrices.cpp.i

CMakeFiles/sgemm.dir/compare_matrices.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sgemm.dir/compare_matrices.cpp.s"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/compare_matrices.cpp -o CMakeFiles/sgemm.dir/compare_matrices.cpp.s

CMakeFiles/sgemm.dir/copy_matrix.cpp.o: CMakeFiles/sgemm.dir/flags.make
CMakeFiles/sgemm.dir/copy_matrix.cpp.o: ../copy_matrix.cpp
CMakeFiles/sgemm.dir/copy_matrix.cpp.o: CMakeFiles/sgemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sgemm.dir/copy_matrix.cpp.o"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sgemm.dir/copy_matrix.cpp.o -MF CMakeFiles/sgemm.dir/copy_matrix.cpp.o.d -o CMakeFiles/sgemm.dir/copy_matrix.cpp.o -c /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/copy_matrix.cpp

CMakeFiles/sgemm.dir/copy_matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sgemm.dir/copy_matrix.cpp.i"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/copy_matrix.cpp > CMakeFiles/sgemm.dir/copy_matrix.cpp.i

CMakeFiles/sgemm.dir/copy_matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sgemm.dir/copy_matrix.cpp.s"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/copy_matrix.cpp -o CMakeFiles/sgemm.dir/copy_matrix.cpp.s

CMakeFiles/sgemm.dir/dclock.cpp.o: CMakeFiles/sgemm.dir/flags.make
CMakeFiles/sgemm.dir/dclock.cpp.o: ../dclock.cpp
CMakeFiles/sgemm.dir/dclock.cpp.o: CMakeFiles/sgemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sgemm.dir/dclock.cpp.o"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sgemm.dir/dclock.cpp.o -MF CMakeFiles/sgemm.dir/dclock.cpp.o.d -o CMakeFiles/sgemm.dir/dclock.cpp.o -c /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/dclock.cpp

CMakeFiles/sgemm.dir/dclock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sgemm.dir/dclock.cpp.i"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/dclock.cpp > CMakeFiles/sgemm.dir/dclock.cpp.i

CMakeFiles/sgemm.dir/dclock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sgemm.dir/dclock.cpp.s"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/dclock.cpp -o CMakeFiles/sgemm.dir/dclock.cpp.s

CMakeFiles/sgemm.dir/MMult1.cpp.o: CMakeFiles/sgemm.dir/flags.make
CMakeFiles/sgemm.dir/MMult1.cpp.o: ../MMult1.cpp
CMakeFiles/sgemm.dir/MMult1.cpp.o: CMakeFiles/sgemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/sgemm.dir/MMult1.cpp.o"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sgemm.dir/MMult1.cpp.o -MF CMakeFiles/sgemm.dir/MMult1.cpp.o.d -o CMakeFiles/sgemm.dir/MMult1.cpp.o -c /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/MMult1.cpp

CMakeFiles/sgemm.dir/MMult1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sgemm.dir/MMult1.cpp.i"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/MMult1.cpp > CMakeFiles/sgemm.dir/MMult1.cpp.i

CMakeFiles/sgemm.dir/MMult1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sgemm.dir/MMult1.cpp.s"
	/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin/riscv64-unknown-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/MMult1.cpp -o CMakeFiles/sgemm.dir/MMult1.cpp.s

# Object files for target sgemm
sgemm_OBJECTS = \
"CMakeFiles/sgemm.dir/test_MMult.cpp.o" \
"CMakeFiles/sgemm.dir/REF_MMult.cpp.o" \
"CMakeFiles/sgemm.dir/random_matrix.cpp.o" \
"CMakeFiles/sgemm.dir/print_matrix.cpp.o" \
"CMakeFiles/sgemm.dir/compare_matrices.cpp.o" \
"CMakeFiles/sgemm.dir/copy_matrix.cpp.o" \
"CMakeFiles/sgemm.dir/dclock.cpp.o" \
"CMakeFiles/sgemm.dir/MMult1.cpp.o"

# External object files for target sgemm
sgemm_EXTERNAL_OBJECTS =

sgemm: CMakeFiles/sgemm.dir/test_MMult.cpp.o
sgemm: CMakeFiles/sgemm.dir/REF_MMult.cpp.o
sgemm: CMakeFiles/sgemm.dir/random_matrix.cpp.o
sgemm: CMakeFiles/sgemm.dir/print_matrix.cpp.o
sgemm: CMakeFiles/sgemm.dir/compare_matrices.cpp.o
sgemm: CMakeFiles/sgemm.dir/copy_matrix.cpp.o
sgemm: CMakeFiles/sgemm.dir/dclock.cpp.o
sgemm: CMakeFiles/sgemm.dir/MMult1.cpp.o
sgemm: CMakeFiles/sgemm.dir/build.make
sgemm: CMakeFiles/sgemm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable sgemm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sgemm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sgemm.dir/build: sgemm
.PHONY : CMakeFiles/sgemm.dir/build

CMakeFiles/sgemm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sgemm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sgemm.dir/clean

CMakeFiles/sgemm.dir/depend:
	cd /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64 /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64 /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out /home/zhangyang/workspace/github/gemm/how-to-optimize-gemm/src/riscv64/out/CMakeFiles/sgemm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sgemm.dir/depend

