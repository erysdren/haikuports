# Find include files
find_path(
	FREEIMAGE_INCLUDE_DIR
	NAMES FreeImage.h
	PATH_SUFFIXES FreeImage.h
	PATHS
		/usr/include
		/usr/local/include
		/sw/include
		/opt/local/include
	DOC "The directory where FreeImage.h resides")

# Find library files
find_library(
	FREEIMAGE_LIBRARY
	NAMES freeimage
	PATH_SUFFIXES lib
	PATHS
		/usr/lib64
		/usr/lib
		/usr/local/lib64
		/usr/local/lib
		/sw/lib
		/opt/local/lib
		${FREEIMAGE_ROOT_DIR}/lib
	DOC "The FreeImage library")

# Handle REQUIRD argument, define *_FOUND variable
find_package_handle_standard_args(FreeImage DEFAULT_MSG FREEIMAGE_INCLUDE_DIR FREEIMAGE_LIBRARY)

# Define GLFW_LIBRARIES and GLFW_INCLUDE_DIRS
if (FREEIMAGE_FOUND)
	set(FREEIMAGE_LIBRARIES ${FREEIMAGE_LIBRARY})
	set(FREEIMAGE_INCLUDE_DIRS ${FREEIMAGE_INCLUDE_DIR})
endif()

# Hide some variables
mark_as_advanced(FREEIMAGE_INCLUDE_DIR FREEIMAGE_LIBRARY)
