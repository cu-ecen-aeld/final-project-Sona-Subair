
##############################################################
#
# BEAGLEBONEBLACK_UART_DRIVER
#
##############################################################


BEAGLEBONEBLACK_UART_DRIVER_VERSION = 5728f33f49181e8749607c71ddc422a4db924589
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BEAGLEBONEBLACK_UART_DRIVER_SITE = git@github.com:cu-ecen-aeld/final-project-PeterBraganza.git
BEAGLEBONEBLACK_UART_DRIVER_SITE_METHOD = git
BEAGLEBONEBLACK_UART_DRIVER_GIT_SUBMODULES = YES
BEAGLEBONEBLACK_UART_DRIVER_MODULE_SUBDIRS = beagleboneblack_uart_driver

$(eval $(kernel-module))

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define BEAGLEBONEBLACK_UART_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/beagleboneblack_uart_driver/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/beagleboneblack_uart_driver/module_unload $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
