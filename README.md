# android_vendor_samsung_grandppltedx
Samsung G532 Vendor for LineageOS 14.1

CURRENT BUG: TEE

> system/bin/taadaemon requires a symbol OPENSSL_add_all_algorithms_noconf


STUFFIES

> J7 Max has the same TEE implementation as this phone (Blowfish TEE, tzdaemon & taadaemon)
> there are alternative libs in system/lib (libsecopenssl_engine.so ; libopensslsmime.so ; libcrypto-rename.so ; libcurl2.so)
that are related to openSSL / needed by the 2 binaries
> OPENSSL is deprecated as of Android 6 so good luck man..
