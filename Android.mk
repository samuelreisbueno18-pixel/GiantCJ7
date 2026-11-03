LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CPP_EXTENSION := .cpp .cc
LOCAL_MODULE    := GiantCJ
LOCAL_SRC_FILES := main.cpp mod/logger.cpp mod/config.cpp
LOCAL_CFLAGS    += -O2 -mfloat-abi=softfp -DNDEBUG -std=c++17 -mthumb
LOCAL_C_INCLUDES += $(LOCAL_PATH) $(LOCAL_PATH)/include
LOCAL_LDLIBS    += -llog
include $(BUILD_SHARED_LIBRARY)
