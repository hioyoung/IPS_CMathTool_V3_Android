LOCAL_PATH := $(call my-dir)
PROJECT_ROOT_PATH := $(LOCAL_PATH)
PPS_SRC_PATH := ../../
include $(CLEAR_VARS)

LOCAL_MODULE    := CMathTool
LOCAL_LDLIBS    := -llog
				
LOCAL_SRC_FILES := CMathTool/CMathTool.c

LOCAL_C_INCLUDES := $(PROJECT_ROOT_PATH)/ \
                    $(PROJECT_ROOT_PATH)/CMathTool/
# 디버그 정보의 절대 경로를 지워 checkout 위치와 무관하게 같은 .so 가 나오게 한다 (재현 빌드)
# Android 배포본은 IPS_Engine_V3_Android 가 같은 플래그로 CMathTool.c 를 정적 링크한다. 플래그를 바꾸면 그쪽도 같이 바꾼다.
LOCAL_CFLAGS += -ffile-prefix-map=$(PROJECT_ROOT_PATH)=. -ffile-prefix-map=$(NDK_ROOT)=ndk -fdebug-compilation-dir=.

include $(BUILD_SHARED_LIBRARY)