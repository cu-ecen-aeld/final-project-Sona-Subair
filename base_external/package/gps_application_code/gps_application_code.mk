                                                                                         
##############################################################
#
# GPS APPLICATION CODE
#
##############################################################


GPS_APPLICATION_CODE_VERSION = 5134368238371359144fe7ca716214e265e9d9ee
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
GPS_APPLICATION_CODE_SITE = git@github.com:cu-ecen-aeld/final-project-suryakanteti.git
GPS_APPLICATION_CODE_SITE_METHOD = git
GPS_APPLICATION_CODE_GIT_SUBMODULES = YES
GPS_APPLICATION_CODE_MODULE_SUBDIRS = gps_application_code

define GPS_APPLICATION_CODE_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/gps_application_code all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define GPS_APPLICATION_CODE_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/gps_application_code/gps $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
