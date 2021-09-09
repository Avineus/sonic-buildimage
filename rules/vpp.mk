# VPP packages

VPP_VERSION = 21.10

export VPP_VERSION

VPP = vpp_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
$(VPP)_SRC_PATH = $(SRC_PATH)/vpp
SONIC_MAKE_DEBS += $(VPP)

VPP_DBG = vpp-dbg_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(VPP),$(VPP_DBG)))

VPP_DEV = vpp-dev_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(VPP),$(VPP_DEV)))

LIBVPPINFRA = libvppinfra_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(VPP),$(LIBVPPINFRA)))

LIBVPPINFRA_DEV = libvppinfra-dev_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(VPP),$(LIBVPPINFRA_DEV)))

VPP_PLUGIN_CORE = vpp-plugin-core_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(VPP),$(VPP_PLUGIN_CORE)))

VPP_PLUGIN_DPDK = vpp-plugin-dpdk_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(VPP),$(VPP_PLUGIN_DPDK)))

VPP_PYTHON_API = python3-vpp-api_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(VPP),$(VPP_PYTHON_API)))


DBG_SRC_ARCHIVE += vpp
