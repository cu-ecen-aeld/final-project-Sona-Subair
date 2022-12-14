#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

EXTERNAL_REL_BUILDROOT=../base_external
git submodule init
git submodule sync
git submodule update

set -e 
cd `dirname $0`

if [ ! -e buildroot/.config ]
then
	echo -e "\n MISSING BUILDROOT CONFIGURATION FILE \n"

	if [ -e ${AESD_MODIFIED_DEFCONFIG} ]
	then
		echo "USING ${AESD_MODIFIED_DEFCONFIG}"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT}
	else
		echo "Run ./save_config.sh to save this as the default configuration in ${AESD_MODIFIED_DEFCONFIG}"
		echo "Then add packages as needed to complete the installation, re-running ./save_config.sh as needed"
		echo "If this is your first time building for a harware platform you might want to consider using your"
		echo "qemu defconfig at ${QEMU_MODIFIED_DEFCONFIG} as a reference"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_DEFAULT_DEFCONFIG}
	fi
else
	echo "\n USING EXISTING BUILDROOT CONFIG \n"
	echo -e "\n TO FORCE UPDATE, DELETE .config OR MAKE CHANGES USING make menuconfig AND BUILD AGAIN\n"
	make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT}
	cp buildroot/output/images/sdcard.img ./sdcard.img
fi
