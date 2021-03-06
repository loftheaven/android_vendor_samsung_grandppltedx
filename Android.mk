LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),grandppltedx)

# libaudiopolicy 
include $(CLEAR_VARS)
LOCAL_MODULE := libaudiopolicymanager
LOCAL_MODULE_OWNER := MediaTek
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES_32 := proprietary/lib/libaudiopolicymanager.so
include $(BUILD_PREBUILT)

# dpframework
include $(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_MODULE_OWNER := MediaTek
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES_32 := proprietary/lib/libdpframework.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libril
LOCAL_MODULE_OWNER := Samsung
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES_32 := proprietary/lib/libril.so
include $(BUILD_PREBUILT)

endif
