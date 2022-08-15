DEPENDS_remove = " gcc-arm-none-eabi-native "
DEPENDS += "virtual/arm-none-eabi-gcc"

EXTRA_OEMAKE += "CROSS_COMPILE=arm-none-eabi-"

