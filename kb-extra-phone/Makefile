# Copyright (C) 2024 James Knippes <james-knippes@mailbox.org>

include $(TOPDIR)/rules.mk

# Name, version and release number
# The name and version of your package are used to define the variable to point to the build directory of your package: $(PKG_BUILD_DIR)
PKG_NAME:=kb-extra-phone
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

# Package definition; instructs on how and where our package will appear in the overall configuration menu ('make menuconfig')
define Package/kb-extra-phone
  SECTION:=kiezbox
  CATEGORY:=Kiezbox
  TITLE:=KiezBox extra packages for telephony
  DEPENDS:=+asterisk +@ASTERISK_LIBXSLT_SUPPORT +asterisk-app-agent-pool +asterisk-app-alarmreceiver +asterisk-app-attended-transfer +asterisk-app-audiosocket +asterisk-app-authenticate +asterisk-app-blind-transfer +asterisk-app-bridgeaddchan +asterisk-app-bridgewait +asterisk-app-broadcast +asterisk-app-chanisavail +asterisk-app-channelredirect +asterisk-app-chanspy +asterisk-app-confbridge +asterisk-app-controlplayback +asterisk-app-directory +asterisk-app-dumpchan +asterisk-app-exec +asterisk-app-if +asterisk-app-mixmonitor +asterisk-app-originate +asterisk-app-page +asterisk-app-playtones +asterisk-app-privacy +asterisk-app-queue +asterisk-app-read +asterisk-app-readexten +asterisk-app-record +asterisk-app-reload +asterisk-app-saycounted +asterisk-app-sayunixtime +asterisk-app-senddtmf +asterisk-app-sendtext +asterisk-app-signal +asterisk-app-stack +asterisk-app-stasis +asterisk-app-system +asterisk-app-transfer +asterisk-app-verbose +asterisk-app-waitforcond +asterisk-app-waitforring +asterisk-app-waitforsilence +asterisk-app-waituntil +asterisk-app-while +asterisk-bridge-builtin-features +asterisk-bridge-builtin-interval-features +asterisk-bridge-holding +asterisk-bridge-native-rtp +asterisk-bridge-simple +asterisk-bridge-softmix +asterisk-chan-alsa +asterisk-chan-audiosocket +asterisk-chan-bridge-media +asterisk-chan-console +asterisk-chan-iax2 +asterisk-chan-rtp +asterisk-codec-a-mu +asterisk-codec-alaw +asterisk-codec-g722 +asterisk-codec-g726 +asterisk-codec-g729 +asterisk-codec-gsm +asterisk-codec-ilbc +asterisk-codec-lpc10 +asterisk-codec-opus +asterisk-codec-resample +asterisk-codec-speex +asterisk-codec-ulaw +asterisk-curl +asterisk-format-g719 +asterisk-format-g723 +asterisk-format-g726 +asterisk-format-g729 +asterisk-format-gsm +asterisk-format-h263 +asterisk-format-h264 +asterisk-format-ilbc +asterisk-format-ogg-opus +asterisk-format-ogg-speex +asterisk-format-ogg-vorbis +asterisk-format-pcm +asterisk-format-siren14 +asterisk-format-siren7 +asterisk-format-sln +asterisk-format-vox +asterisk-format-wav +asterisk-format-wav-gsm +asterisk-func-aes +asterisk-func-base64 +asterisk-func-blacklist +asterisk-func-callcompletion +asterisk-func-channel +asterisk-func-config +asterisk-func-cut +asterisk-func-db +asterisk-func-devstate +asterisk-func-dialgroup +asterisk-func-dialplan +asterisk-func-enum +asterisk-func-env +asterisk-func-evalexten +asterisk-func-export +asterisk-func-extstate +asterisk-func-frame-drop +asterisk-func-frame-trace +asterisk-func-global +asterisk-func-groupcount +asterisk-func-hangupcause +asterisk-func-holdintercept +asterisk-func-iconv +asterisk-func-jitterbuffer +asterisk-func-json +asterisk-func-lock +asterisk-func-math +asterisk-func-md5 +asterisk-func-module +asterisk-func-periodic-hook +asterisk-func-pitchshift +asterisk-func-presencestate +asterisk-func-rand +asterisk-func-realtime +asterisk-func-sayfiles +asterisk-func-scramble +asterisk-func-sha1 +asterisk-func-shell +asterisk-func-sorcery +asterisk-func-speex +asterisk-func-sprintf +asterisk-func-srv +asterisk-func-sysinfo +asterisk-func-talkdetect +asterisk-func-uri +asterisk-func-version +asterisk-func-vmcount +asterisk-func-volume +asterisk-odbc +asterisk-pbx-loopback +asterisk-pbx-realtime +asterisk-pbx-spool +asterisk-pjsip +asterisk-res-aeap +asterisk-res-agi +asterisk-res-ari +asterisk-res-ari-applications +asterisk-res-ari-asterisk +asterisk-res-ari-bridges +asterisk-res-ari-channels +asterisk-res-ari-device-states +asterisk-res-ari-endpoints +asterisk-res-ari-events +asterisk-res-ari-mailboxes +asterisk-res-ari-model +asterisk-res-ari-playbacks +asterisk-res-ari-recordings +asterisk-res-ari-sounds +asterisk-res-audiosocket +asterisk-res-chan-stats +asterisk-res-clialiases +asterisk-res-cliexec +asterisk-res-clioriginate +asterisk-res-config-sqlite3 +asterisk-res-convert +asterisk-res-endpoint-stats +asterisk-res-format-attr-celt +asterisk-res-format-attr-g729 +asterisk-res-format-attr-h263 +asterisk-res-format-attr-h264 +asterisk-res-format-attr-ilbc +asterisk-res-format-attr-opus +asterisk-res-format-attr-silk +asterisk-res-format-attr-siren14 +asterisk-res-format-attr-siren7 +asterisk-res-format-attr-vp8 +asterisk-res-geolocation +asterisk-res-hep +asterisk-res-hep-pjsip +asterisk-res-hep-rtcp +asterisk-res-http-media-cache +asterisk-res-http-websocket +asterisk-res-limit +asterisk-res-manager-devicestate +asterisk-res-manager-presencestate +asterisk-res-monitor +asterisk-res-musiconhold +asterisk-res-mutestream +asterisk-res-mwi-devstate +asterisk-res-mwi-external +asterisk-res-mwi-external-ami +asterisk-res-parking +asterisk-res-phoneprov +asterisk-res-pjproject +asterisk-res-pjsip-aoc +asterisk-res-pjsip-geolocation +asterisk-res-pjsip-phoneprov +asterisk-res-pjsip-rfc3329 +asterisk-res-prometheus +asterisk-res-realtime +asterisk-res-rtp-asterisk +asterisk-res-rtp-multicast +asterisk-res-security-log +asterisk-res-smdi +asterisk-res-snmp +asterisk-res-sorcery +asterisk-res-sorcery-memory-cache +asterisk-res-speech +asterisk-res-speech-aeap +asterisk-res-srtp +asterisk-res-stasis +asterisk-res-stasis-answer +asterisk-res-stasis-device-state +asterisk-res-stasis-mailbox +asterisk-res-stasis-playback +asterisk-res-stasis-recording +asterisk-res-stasis-snoop +asterisk-res-statsd +asterisk-res-stun-monitor +asterisk-res-timing-pthread +asterisk-res-tonedetect +asterisk-sounds +kmod-nf-nathelper-extra
  PKGARCH:=all
endef

# Package description; a more verbose description on what our package does
define Package/kb-extra-phone/description
	Adds dependencies for deploying the telephony server
endef

# define some sections, needed to create an entry in the package database
define Build/Configure
endef

define Build/Compile
endef

define Package/kb-extra-phone/install
	$(INSTALL_DIR) $(1)/etc/asterisk
	$(INSTALL_BIN) ./files/http.conf $(1)/etc/asterisk/http.conf
	$(INSTALL_BIN) ./files/extensions.conf $(1)/etc/asterisk/extensions.conf
	$(INSTALL_BIN) ./files/pjsip.conf $(1)/etc/asterisk/pjsip.conf
endef

# This command is always the last, it uses the definitions and variables we give above in order to get the job done
$(eval $(call BuildPackage,kb-extra-phone))
