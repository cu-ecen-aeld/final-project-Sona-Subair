##############################################################
#
# SERVER
#
##############################################################


SERVER_VERSION = '5134368238371359144fe7ca716214e265e9d9ee'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SERVER_SITE = git@github.com:cu-ecen-aeld/final-project-suryakanteti.git
SERVER_SITE_METHOD = git
SERVER_GIT_SUBMODULES = YES
SERVER_MODULE_SUBDIRS = server

define SERVER_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SERVER_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/server/server $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
