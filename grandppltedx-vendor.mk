$(call inherit-product, vendor/samsung/grandppltedx/grandppltedx-vendor-blobs.mk)


# force use Samsung Nougat libcrypto.so and libssl.so
#-for taadaemon
SAMSUNG_FORCE_OPENSSL := false

ifeq ($(SAMSUNG_FORCE_OPENSSL),true)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/samsung/grandppltedx/proprietary/prebuilts/lib,system/lib)

endif
