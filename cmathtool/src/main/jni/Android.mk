LOCAL_PATH := $(call my-dir)
PROJECT_ROOT_PATH := $(LOCAL_PATH)
PPS_SRC_PATH := ../../
include $(CLEAR_VARS)

LOCAL_MODULE    := CMathTool
LOCAL_LDLIBS    := -llog
				
LOCAL_SRC_FILES := CMathTool/CMathTool.c

LOCAL_C_INCLUDES := $(PROJECT_ROOT_PATH)/ \
                    $(PROJECT_ROOT_PATH)/CMathTool/
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

include $(BUILD_SHARED_LIBRARY)