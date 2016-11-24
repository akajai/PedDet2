LOCAL_PATH := $(call my-dir)

	include $(CLEAR_VARS)

	#opencv
	OPENCVROOT:= F:\Work-job\Upworks\PedestrianDetection\OpenCV-3.1.0-android-sdk\OpenCV-android-sdk
	OPENCV_CAMERA_MODULES:=on
	OPENCV_INSTALL_MODULES:=on
	OPENCV_LIB_TYPE:=SHARED
	include ${OPENCVROOT}/sdk/native/jni/OpenCV.mk

	LOCAL_SRC_FILES := com_example_dell_peddet_Opencv.cpp

	LOCAL_LDLIBS += -llog
	LOCAL_MODULE := MyLibs


	include $(BUILD_SHARED_LIBRARY)
