QCOM_MEDIA_ROOT := $(call my-dir)

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
ifneq ($(BOARD_USES_AUDIO_LEGACY),true)
	include $(QCOM_MEDIA_ROOT)/audio/Android.mk
endif
ifeq ($(BOARD_USES_QCOM_LIBS),true)
	include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk
	include $(QCOM_MEDIA_ROOT)/mm-video/Android.mk
endif
endif
