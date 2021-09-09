.ONESHELL:
SHELL = /bin/bash
.SHELLFLAGS += -e

MAIN_TARGET = vpp_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb
DERIVED_TARGETS = \
		vpp-dbg_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb \
		vpp-dev_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb \
 		libvppinfra_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb \
		libvppinfra-dev_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb \
 		vpp-plugin-core_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb \
 		vpp-plugin-dpdk_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb \
		python3-vpp-api_$(VPP_VERSION)_$(CONFIGURED_ARCH).deb

$(addprefix $(DEST)/, $(MAIN_TARGET)): $(DEST)/% :
	rm -rf ./vpp
	git clone https://gerrit.fd.io/r/vpp
	pushd ./vpp
	git checkout -b 2106 stable/2106

	make install-dep
	make install-ext-dep
	make build-release

	pushd ./build
	mv $(DERIVED_TARGETS) $* $(DEST)/
	popd

$(addprefix $(DEST)/, $(DERIVED_TARGETS)): $(DEST)/% : $(DEST)/$(MAIN_TARGET)
