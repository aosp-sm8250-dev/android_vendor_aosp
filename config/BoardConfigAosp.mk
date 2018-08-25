include vendor/aosp/config/BoardConfigKernel.mk
include vendor/aosp/config/BoardConfigSoong.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/aosp/config/BoardConfigQcom.mk
endif
