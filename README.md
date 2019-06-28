# android_vendor_samsung_grandppltedx
Samsung G532 Vendor for LineageOS 14.1

CURRENT BUG: TEE

> system/bin/taadaemon requires a symbol OPENSSL_add_all_algorithms_noconf


STUFFIES

> J7 Max has the same TEE implementation as this phone (Blowfish TEE, tzdaemon & taadaemon)

> there are alternative libs in system/lib (libsecopenssl_engine.so ; libopensslsmime.so ; libcrypto-rename.so ; libcurl2.so)
that are related to openSSL / needed by the 2 binaries

> OPENSSL is deprecated as of Android 6 so good luck man..

-- (13 June +7)

> (Even more stuffies) so i decided to do a quick search about openssl and that symbol altogether. The symbol is defined when OPENSSL_add_all_algorithms is loaded (this symbol is present on 2/4 libs above) with OPENSSL_LOAD_CONF undefined

> link: (at libcrypto init) https://wiki.openssl.org/index.php/Library_Initialization

> so im looking for a way to un-define openssl_load_conf somehow that doesnt break everything~

-- (28 Jun +7)

> So I decided that it is too hard (/impossible?) to implement tzdaemon | Samsung TEE

> My workaround would be to either delete (gatekeeper|keystore).mt6737t.so or replace with ones from porridge (Wileyfox Spark/+) as its proven working by Melek
