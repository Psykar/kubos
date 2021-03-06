# Copyright (C) 2016 Kubos Corporation
if (TARGET_KUBOS_MSP430_GCC_TOOLCHAIN_INCLUDED)
    return()
endif()
set(TARGET_KUBOS_MSP430_GCC_TOOLCHAIN_INCLUDED 1)

set(CMAKE_SYSTEM_PROCESSOR "msp430")
add_definitions("-DTOOLCHAIN_GCC_MSP430")

macro(gcc_not_found)
    if(CMAKE_HOST_SYSTEM_NAME STREQUAL "Linux")
        message(" you can install the MSP430 GCC compiler tools from:")
        message(" https://launchpad.net/ubuntu/+source/gcc-msp430 ")
    elseif(CMAKE_HOST_SYSTEM_NAME STREQUAL "Windows")
        message(" you can install the MSP430 GCC compiler tools from:")
        message(" https://sourceforge.net/projects/mspgcc/ ")
    elseif(CMAKE_HOST_SYSTEM_NAME STREQUAL "Darwin")
        message(" it is included in the arm-none-eabi-gcc package that you can install")
        message(" with homebrew:\n")
        message("   brew tap ARMmbed/homebrew-formulae")
        message("   brew install arm-none-eabi-gcc")
    endif()
endmacro()

gcc_load_toolchain("msp430-")
