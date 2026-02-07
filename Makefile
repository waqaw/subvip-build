ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = subvip
subvip_FILES = Tweak.xm
subvip_CFLAGS = -fobjc-arc
subvip_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/tweak.mk
