#
# Makefile for Oneplus One
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_A0001.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-modified-apps := MiuiHome miuisystem SecurityCenter ThemeManager TeleService DeskClock DownloadProvider MiuiSuperMarket \
		MiuiSystemUI Settings Mms

# All vendor apks needed
local-phone-apps := BasicDreams Bluetooth CellBroadcastReceiver CertInstaller Galaxy4 HoloSpiralWallpaper HTMLViewer \
		KeyChain LiveWallpapers MagicSmokeWallpapers NfcNci NoiseField PacProcessor PhaseBeam PicoTts PrintSpooler Stk \
		UserDictionaryProvider VisualizationWallpapers WAPPushManager Find7Parts

local-phone-priv-apps := BackupRestoreConfirmation DefaultContainerService FusedLocation \
		ExternalStorageProvider InputDevices OneTimeInitializer ProxyHandler SharedStorageBackup \
		Shell Tag VpnDialogs 

local-density := XXHDPI

# The certificate for release version
local-certificate-dir := security

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := adjust_apps_location
local-after-zip:= 

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

adjust_apps_location:
	# copy files
	cp miui/boot.img $(ZIP_DIR)/boot.img
	cp -a -rf miui/system/* $(ZIP_DIR)/system/
	cp -a -rf miui/data/* $(ZIP_DIR)/data/
	# edit applist
	cat applist >> $(ZIP_DIR)/data/miui/cust/cn/customized_applist
	cat applist >> $(ZIP_DIR)/data/miui/cust/cn/ota_customized_applist
	# use the Chinese language
	sed -i 's#ro.product.locale.language=en#ro.product.locale.language=zh#g' $(ZIP_DIR)/system/build.prop
	sed -i 's#ro.product.locale.region=US#ro.product.locale.region=CN#g' $(ZIP_DIR)/system/build.prop
	# fix xposed install
	rm -rf $(ZIP_DIR)/system/bin/app_process_vendor
	cp -rf stockrom/system/bin/app_process $(ZIP_DIR)/system/bin/app_process
	rm -rf $(ZIP_DIR)/system/bin/debuggerd_vendor
	cp -rf stockrom/system/bin/debuggerd $(ZIP_DIR)/system/bin/debuggerd
	rm -rf $(ZIP_DIR)/system/bin/dexopt_vendor
	cp -rf stockrom/system/bin/dexopt $(ZIP_DIR)/system/bin/dexopt
