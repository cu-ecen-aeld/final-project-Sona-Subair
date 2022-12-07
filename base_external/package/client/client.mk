##############################################################
#
# CLIENT CODE
#
##############################################################

CLIENT_VERSION = '65ca7488f872b30e60cdf6b7d446a68cbb8968fc'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CLIENT_SITE = git@github.com:cu-ecen-aeld/final-project-suryakanteti.git
CLIENT_SITE_METHOD = git
CLIENT_GIT_SUBMODULES = YES
CLIENT_MODULE_SUBDIRS = client

define CLIENT_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define CLIENT_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/client/client $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
