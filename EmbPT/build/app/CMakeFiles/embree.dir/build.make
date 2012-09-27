# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nicolasb/Desktop/EmbPT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nicolasb/Desktop/EmbPT/build

# Include any dependencies generated for this target.
include app/CMakeFiles/embree.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/embree.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/embree.dir/flags.make

app/CMakeFiles/embree.dir/embree.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/embree.o: ../app/embree.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/embree.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/embree.o -c /home/nicolasb/Desktop/EmbPT/app/embree.cpp

app/CMakeFiles/embree.dir/embree.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/embree.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/embree.cpp > CMakeFiles/embree.dir/embree.i

app/CMakeFiles/embree.dir/embree.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/embree.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/embree.cpp -o CMakeFiles/embree.dir/embree.s

app/CMakeFiles/embree.dir/embree.o.requires:
.PHONY : app/CMakeFiles/embree.dir/embree.o.requires

app/CMakeFiles/embree.dir/embree.o.provides: app/CMakeFiles/embree.dir/embree.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/embree.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/embree.o.provides

app/CMakeFiles/embree.dir/embree.o.provides.build: app/CMakeFiles/embree.dir/embree.o
.PHONY : app/CMakeFiles/embree.dir/embree.o.provides.build

app/CMakeFiles/embree.dir/scene.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/scene.o: ../app/scene.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/scene.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/scene.o -c /home/nicolasb/Desktop/EmbPT/app/scene.cpp

app/CMakeFiles/embree.dir/scene.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/scene.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/scene.cpp > CMakeFiles/embree.dir/scene.i

app/CMakeFiles/embree.dir/scene.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/scene.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/scene.cpp -o CMakeFiles/embree.dir/scene.s

app/CMakeFiles/embree.dir/scene.o.requires:
.PHONY : app/CMakeFiles/embree.dir/scene.o.requires

app/CMakeFiles/embree.dir/scene.o.provides: app/CMakeFiles/embree.dir/scene.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/scene.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/scene.o.provides

app/CMakeFiles/embree.dir/scene.o.provides.build: app/CMakeFiles/embree.dir/scene.o
.PHONY : app/CMakeFiles/embree.dir/scene.o.provides.build

app/CMakeFiles/embree.dir/glutdisplay.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/glutdisplay.o: ../app/glutdisplay.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/glutdisplay.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/glutdisplay.o -c /home/nicolasb/Desktop/EmbPT/app/glutdisplay.cpp

app/CMakeFiles/embree.dir/glutdisplay.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/glutdisplay.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/glutdisplay.cpp > CMakeFiles/embree.dir/glutdisplay.i

app/CMakeFiles/embree.dir/glutdisplay.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/glutdisplay.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/glutdisplay.cpp -o CMakeFiles/embree.dir/glutdisplay.s

app/CMakeFiles/embree.dir/glutdisplay.o.requires:
.PHONY : app/CMakeFiles/embree.dir/glutdisplay.o.requires

app/CMakeFiles/embree.dir/glutdisplay.o.provides: app/CMakeFiles/embree.dir/glutdisplay.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/glutdisplay.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/glutdisplay.o.provides

app/CMakeFiles/embree.dir/glutdisplay.o.provides.build: app/CMakeFiles/embree.dir/glutdisplay.o
.PHONY : app/CMakeFiles/embree.dir/glutdisplay.o.provides.build

app/CMakeFiles/embree.dir/regression.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/regression.o: ../app/regression.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/regression.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/regression.o -c /home/nicolasb/Desktop/EmbPT/app/regression.cpp

app/CMakeFiles/embree.dir/regression.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/regression.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/regression.cpp > CMakeFiles/embree.dir/regression.i

app/CMakeFiles/embree.dir/regression.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/regression.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/regression.cpp -o CMakeFiles/embree.dir/regression.s

app/CMakeFiles/embree.dir/regression.o.requires:
.PHONY : app/CMakeFiles/embree.dir/regression.o.requires

app/CMakeFiles/embree.dir/regression.o.provides: app/CMakeFiles/embree.dir/regression.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/regression.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/regression.o.provides

app/CMakeFiles/embree.dir/regression.o.provides.build: app/CMakeFiles/embree.dir/regression.o
.PHONY : app/CMakeFiles/embree.dir/regression.o.provides.build

app/CMakeFiles/embree.dir/embreedevice.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/embreedevice.o: ../app/embreedevice.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/embreedevice.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/embreedevice.o -c /home/nicolasb/Desktop/EmbPT/app/embreedevice.cpp

app/CMakeFiles/embree.dir/embreedevice.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/embreedevice.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/embreedevice.cpp > CMakeFiles/embree.dir/embreedevice.i

app/CMakeFiles/embree.dir/embreedevice.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/embreedevice.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/embreedevice.cpp -o CMakeFiles/embree.dir/embreedevice.s

app/CMakeFiles/embree.dir/embreedevice.o.requires:
.PHONY : app/CMakeFiles/embree.dir/embreedevice.o.requires

app/CMakeFiles/embree.dir/embreedevice.o.provides: app/CMakeFiles/embree.dir/embreedevice.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/embreedevice.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/embreedevice.o.provides

app/CMakeFiles/embree.dir/embreedevice.o.provides.build: app/CMakeFiles/embree.dir/embreedevice.o
.PHONY : app/CMakeFiles/embree.dir/embreedevice.o.provides.build

app/CMakeFiles/embree.dir/lexers/stringstream.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/lexers/stringstream.o: ../app/lexers/stringstream.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/lexers/stringstream.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/lexers/stringstream.o -c /home/nicolasb/Desktop/EmbPT/app/lexers/stringstream.cpp

app/CMakeFiles/embree.dir/lexers/stringstream.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/lexers/stringstream.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/lexers/stringstream.cpp > CMakeFiles/embree.dir/lexers/stringstream.i

app/CMakeFiles/embree.dir/lexers/stringstream.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/lexers/stringstream.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/lexers/stringstream.cpp -o CMakeFiles/embree.dir/lexers/stringstream.s

app/CMakeFiles/embree.dir/lexers/stringstream.o.requires:
.PHONY : app/CMakeFiles/embree.dir/lexers/stringstream.o.requires

app/CMakeFiles/embree.dir/lexers/stringstream.o.provides: app/CMakeFiles/embree.dir/lexers/stringstream.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/lexers/stringstream.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/lexers/stringstream.o.provides

app/CMakeFiles/embree.dir/lexers/stringstream.o.provides.build: app/CMakeFiles/embree.dir/lexers/stringstream.o
.PHONY : app/CMakeFiles/embree.dir/lexers/stringstream.o.provides.build

app/CMakeFiles/embree.dir/lexers/tokenstream.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/lexers/tokenstream.o: ../app/lexers/tokenstream.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/lexers/tokenstream.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/lexers/tokenstream.o -c /home/nicolasb/Desktop/EmbPT/app/lexers/tokenstream.cpp

app/CMakeFiles/embree.dir/lexers/tokenstream.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/lexers/tokenstream.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/lexers/tokenstream.cpp > CMakeFiles/embree.dir/lexers/tokenstream.i

app/CMakeFiles/embree.dir/lexers/tokenstream.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/lexers/tokenstream.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/lexers/tokenstream.cpp -o CMakeFiles/embree.dir/lexers/tokenstream.s

app/CMakeFiles/embree.dir/lexers/tokenstream.o.requires:
.PHONY : app/CMakeFiles/embree.dir/lexers/tokenstream.o.requires

app/CMakeFiles/embree.dir/lexers/tokenstream.o.provides: app/CMakeFiles/embree.dir/lexers/tokenstream.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/lexers/tokenstream.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/lexers/tokenstream.o.provides

app/CMakeFiles/embree.dir/lexers/tokenstream.o.provides.build: app/CMakeFiles/embree.dir/lexers/tokenstream.o
.PHONY : app/CMakeFiles/embree.dir/lexers/tokenstream.o.provides.build

app/CMakeFiles/embree.dir/importers/obj.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/importers/obj.o: ../app/importers/obj.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/importers/obj.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/importers/obj.o -c /home/nicolasb/Desktop/EmbPT/app/importers/obj.cpp

app/CMakeFiles/embree.dir/importers/obj.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/importers/obj.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/importers/obj.cpp > CMakeFiles/embree.dir/importers/obj.i

app/CMakeFiles/embree.dir/importers/obj.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/importers/obj.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/importers/obj.cpp -o CMakeFiles/embree.dir/importers/obj.s

app/CMakeFiles/embree.dir/importers/obj.o.requires:
.PHONY : app/CMakeFiles/embree.dir/importers/obj.o.requires

app/CMakeFiles/embree.dir/importers/obj.o.provides: app/CMakeFiles/embree.dir/importers/obj.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/importers/obj.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/importers/obj.o.provides

app/CMakeFiles/embree.dir/importers/obj.o.provides.build: app/CMakeFiles/embree.dir/importers/obj.o
.PHONY : app/CMakeFiles/embree.dir/importers/obj.o.provides.build

app/CMakeFiles/embree.dir/importers/assimp_import.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/importers/assimp_import.o: ../app/importers/assimp_import.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/importers/assimp_import.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/importers/assimp_import.o -c /home/nicolasb/Desktop/EmbPT/app/importers/assimp_import.cpp

app/CMakeFiles/embree.dir/importers/assimp_import.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/importers/assimp_import.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/importers/assimp_import.cpp > CMakeFiles/embree.dir/importers/assimp_import.i

app/CMakeFiles/embree.dir/importers/assimp_import.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/importers/assimp_import.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/importers/assimp_import.cpp -o CMakeFiles/embree.dir/importers/assimp_import.s

app/CMakeFiles/embree.dir/importers/assimp_import.o.requires:
.PHONY : app/CMakeFiles/embree.dir/importers/assimp_import.o.requires

app/CMakeFiles/embree.dir/importers/assimp_import.o.provides: app/CMakeFiles/embree.dir/importers/assimp_import.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/importers/assimp_import.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/importers/assimp_import.o.provides

app/CMakeFiles/embree.dir/importers/assimp_import.o.provides.build: app/CMakeFiles/embree.dir/importers/assimp_import.o
.PHONY : app/CMakeFiles/embree.dir/importers/assimp_import.o.provides.build

app/CMakeFiles/embree.dir/importers/xml.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/importers/xml.o: ../app/importers/xml.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/importers/xml.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/importers/xml.o -c /home/nicolasb/Desktop/EmbPT/app/importers/xml.cpp

app/CMakeFiles/embree.dir/importers/xml.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/importers/xml.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/importers/xml.cpp > CMakeFiles/embree.dir/importers/xml.i

app/CMakeFiles/embree.dir/importers/xml.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/importers/xml.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/importers/xml.cpp -o CMakeFiles/embree.dir/importers/xml.s

app/CMakeFiles/embree.dir/importers/xml.o.requires:
.PHONY : app/CMakeFiles/embree.dir/importers/xml.o.requires

app/CMakeFiles/embree.dir/importers/xml.o.provides: app/CMakeFiles/embree.dir/importers/xml.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/importers/xml.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/importers/xml.o.provides

app/CMakeFiles/embree.dir/importers/xml.o.provides.build: app/CMakeFiles/embree.dir/importers/xml.o
.PHONY : app/CMakeFiles/embree.dir/importers/xml.o.provides.build

app/CMakeFiles/embree.dir/importers/xml_parser.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/importers/xml_parser.o: ../app/importers/xml_parser.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/importers/xml_parser.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/importers/xml_parser.o -c /home/nicolasb/Desktop/EmbPT/app/importers/xml_parser.cpp

app/CMakeFiles/embree.dir/importers/xml_parser.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/importers/xml_parser.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/importers/xml_parser.cpp > CMakeFiles/embree.dir/importers/xml_parser.i

app/CMakeFiles/embree.dir/importers/xml_parser.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/importers/xml_parser.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/importers/xml_parser.cpp -o CMakeFiles/embree.dir/importers/xml_parser.s

app/CMakeFiles/embree.dir/importers/xml_parser.o.requires:
.PHONY : app/CMakeFiles/embree.dir/importers/xml_parser.o.requires

app/CMakeFiles/embree.dir/importers/xml_parser.o.provides: app/CMakeFiles/embree.dir/importers/xml_parser.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/importers/xml_parser.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/importers/xml_parser.o.provides

app/CMakeFiles/embree.dir/importers/xml_parser.o.provides.build: app/CMakeFiles/embree.dir/importers/xml_parser.o
.PHONY : app/CMakeFiles/embree.dir/importers/xml_parser.o.provides.build

app/CMakeFiles/embree.dir/importers/radiance_import.o: app/CMakeFiles/embree.dir/flags.make
app/CMakeFiles/embree.dir/importers/radiance_import.o: ../app/importers/radiance_import.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nicolasb/Desktop/EmbPT/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object app/CMakeFiles/embree.dir/importers/radiance_import.o"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/embree.dir/importers/radiance_import.o -c /home/nicolasb/Desktop/EmbPT/app/importers/radiance_import.cpp

app/CMakeFiles/embree.dir/importers/radiance_import.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embree.dir/importers/radiance_import.i"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nicolasb/Desktop/EmbPT/app/importers/radiance_import.cpp > CMakeFiles/embree.dir/importers/radiance_import.i

app/CMakeFiles/embree.dir/importers/radiance_import.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embree.dir/importers/radiance_import.s"
	cd /home/nicolasb/Desktop/EmbPT/build/app && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nicolasb/Desktop/EmbPT/app/importers/radiance_import.cpp -o CMakeFiles/embree.dir/importers/radiance_import.s

app/CMakeFiles/embree.dir/importers/radiance_import.o.requires:
.PHONY : app/CMakeFiles/embree.dir/importers/radiance_import.o.requires

app/CMakeFiles/embree.dir/importers/radiance_import.o.provides: app/CMakeFiles/embree.dir/importers/radiance_import.o.requires
	$(MAKE) -f app/CMakeFiles/embree.dir/build.make app/CMakeFiles/embree.dir/importers/radiance_import.o.provides.build
.PHONY : app/CMakeFiles/embree.dir/importers/radiance_import.o.provides

app/CMakeFiles/embree.dir/importers/radiance_import.o.provides.build: app/CMakeFiles/embree.dir/importers/radiance_import.o
.PHONY : app/CMakeFiles/embree.dir/importers/radiance_import.o.provides.build

# Object files for target embree
embree_OBJECTS = \
"CMakeFiles/embree.dir/embree.o" \
"CMakeFiles/embree.dir/scene.o" \
"CMakeFiles/embree.dir/glutdisplay.o" \
"CMakeFiles/embree.dir/regression.o" \
"CMakeFiles/embree.dir/embreedevice.o" \
"CMakeFiles/embree.dir/lexers/stringstream.o" \
"CMakeFiles/embree.dir/lexers/tokenstream.o" \
"CMakeFiles/embree.dir/importers/obj.o" \
"CMakeFiles/embree.dir/importers/assimp_import.o" \
"CMakeFiles/embree.dir/importers/xml.o" \
"CMakeFiles/embree.dir/importers/xml_parser.o" \
"CMakeFiles/embree.dir/importers/radiance_import.o"

# External object files for target embree
embree_EXTERNAL_OBJECTS =

embree: app/CMakeFiles/embree.dir/embree.o
embree: app/CMakeFiles/embree.dir/scene.o
embree: app/CMakeFiles/embree.dir/glutdisplay.o
embree: app/CMakeFiles/embree.dir/regression.o
embree: app/CMakeFiles/embree.dir/embreedevice.o
embree: app/CMakeFiles/embree.dir/lexers/stringstream.o
embree: app/CMakeFiles/embree.dir/lexers/tokenstream.o
embree: app/CMakeFiles/embree.dir/importers/obj.o
embree: app/CMakeFiles/embree.dir/importers/assimp_import.o
embree: app/CMakeFiles/embree.dir/importers/xml.o
embree: app/CMakeFiles/embree.dir/importers/xml_parser.o
embree: app/CMakeFiles/embree.dir/importers/radiance_import.o
embree: libsys.a
embree: libimage.a
embree: librenderer.a
embree: /usr/lib/libGLU.so
embree: /usr/lib/libGL.so
embree: /usr/lib/libSM.so
embree: /usr/lib/libICE.so
embree: /usr/lib/libX11.so
embree: /usr/lib/libXext.so
embree: /usr/local/lib/libglut.so
embree: /usr/lib/libXmu.so
embree: /usr/lib/libXi.so
embree: libimage.a
embree: /usr/lib/libHalf.so
embree: /usr/lib/libIex.so
embree: /usr/lib/libImath.so
embree: /usr/lib/libIlmImf.so
embree: /usr/lib/libIlmThread.so
embree: /usr/local/lib/libMagick++.so
embree: /usr/local/lib/libMagickCore.so
embree: librtcore.a
embree: libsys.a
embree: app/CMakeFiles/embree.dir/build.make
embree: app/CMakeFiles/embree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../embree"
	cd /home/nicolasb/Desktop/EmbPT/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/embree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/embree.dir/build: embree
.PHONY : app/CMakeFiles/embree.dir/build

app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/embree.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/scene.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/glutdisplay.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/regression.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/embreedevice.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/lexers/stringstream.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/lexers/tokenstream.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/importers/obj.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/importers/assimp_import.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/importers/xml.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/importers/xml_parser.o.requires
app/CMakeFiles/embree.dir/requires: app/CMakeFiles/embree.dir/importers/radiance_import.o.requires
.PHONY : app/CMakeFiles/embree.dir/requires

app/CMakeFiles/embree.dir/clean:
	cd /home/nicolasb/Desktop/EmbPT/build/app && $(CMAKE_COMMAND) -P CMakeFiles/embree.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/embree.dir/clean

app/CMakeFiles/embree.dir/depend:
	cd /home/nicolasb/Desktop/EmbPT/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nicolasb/Desktop/EmbPT /home/nicolasb/Desktop/EmbPT/app /home/nicolasb/Desktop/EmbPT/build /home/nicolasb/Desktop/EmbPT/build/app /home/nicolasb/Desktop/EmbPT/build/app/CMakeFiles/embree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/embree.dir/depend
