
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
BEAGLEBONEBLACK_I2C_DRIVER_VERSION = '5bfdbd009229e55fd205074340f4f4480d4d3b92'
BEAGLEBONEBLACK_I2C_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/final-project-PeterBraganza.git'
BEAGLEBONEBLACK_I2C_DRIVER_SITE_METHOD = git

BEAGLEBONEBLACK_I2C_DRIVER_GIT_SUBMODULES = YES
BEAGLEBONEBLACK_I2C_DRIVER_MODULE_SUBDIRS = beagleboneblack_i2c_driver


$(eval $(kernel-module))

#TODO: Add required executables or scripts below
define BEAGLEBONEBLACK_I2C_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/beagleboneblack_i2c_driver/i2c_load.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/beagleboneblack_i2c_driver/i2c_unload.sh $(TARGET_DIR)/usr/bin
endef


$(eval $(kernel-module))
$(eval $(generic-package))
