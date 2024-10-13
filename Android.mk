# TODO:  Find a better way to separate build configs for ADP vs non-ADP devices
ifneq ($(BOARD_IS_AUTOMOTIVE),true)
  ifneq ($(BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE),)
    LOCAL_PATH := $(call my-dir)
    include $(call all-named-subdir-makefiles,sdm845)
  endif #BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE
endif
