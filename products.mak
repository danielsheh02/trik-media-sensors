#
#  Copyright (c) 2012-2018 Texas Instruments Incorporated - http://www.ti.com
#  All rights reserved.
#
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions
#  are met:
#
#  *  Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#
#  *  Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in the
#     documentation and/or other materials provided with the distribution.
#
#  *  Neither the name of Texas Instruments Incorporated nor the names of
#     its contributors may be used to endorse or promote products derived
#     from this software without specific prior written permission.
#
#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
#  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
#  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
#  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
#  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
#  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

ifndef TI_DEPOT
$(warning TI_DEPOT is not set)
$(warning You can download TI processor SDK for RTOS OMAPL138 from "https://www.ti.com/tool/PROCESSOR-SDK-OMAPL138" (recommended version 06.03.00.106, authorization required))
endif

ifndef TI_C6000
$(warning TI_C6000 is not set)
$(warning You can download TI C6000 compiler from "https://www.ti.com/tool/C6000-CGT" (authorization required))
endif

ifndef KERNEL_INSTALL
$(warning Kernel install dir is not set)
$(warning Specify a path to the trik's kernel artifacts (try the path "build/tmp-glibc/work-shared/trikboard/kernel-build-artifacts" in setup-scripts))
endif

ifndef TI_DEPOT
$(error not all required env variables are set)
endif

ifndef TI_C6000
$(error not all required env variables are set)
endif

ifndef KERNEL_INSTALL
$(error not all required env variables are set)
endif

ifndef TRIK_SDK
$(error not all required env variables are set)
endif


# Path to TI SDK depot
DEPOT = $(TI_DEPOT)
# Path to TI C6000 compiler
ti.targets.elf.C674 = $(TI_C6000)
# Board kernel installation directory
KERNEL_INSTALL_DIR = $(KERNEL_INSTALL)

TRIK_SDK_DIR = $(TRIK_SDK)

PLATFORM = OMAPL138

TOOLCHAIN_LONGNAME     = arm-oe-linux-gnueabi
TOOLCHAIN_INSTALL_DIR  = $(TRIK_SDK_DIR)/sysroots/x86_64-oesdk-linux/usr
TOOLCHAIN_PREFIX       = $(TOOLCHAIN_INSTALL_DIR)/bin/$(TOOLCHAIN_LONGNAME)/$(TOOLCHAIN_LONGNAME)-

AF_RPMSG = 
DRM_PREFIX =
CMEM_INSTALL_DIR =

QNX_INSTALL_DIR =
QNX_CFLAGS =

XDC_INSTALL_DIR = $(DEPOT)/xdctools_3_55_02_22_core
BIOS_INSTALL_DIR = $(DEPOT)/bios_6_76_03_01
PDK_INSTALL_DIR = $(DEPOT)/pdk_omapl138_1_0_11
IPC_INSTALL_DIR = $(DEPOT)/ipc_3_50_04_08
VLIB_INSTALL_DIR = $(DEPOT)/vlib_c674x_3_3_2_0

BIOS_SMPENABLED = 1