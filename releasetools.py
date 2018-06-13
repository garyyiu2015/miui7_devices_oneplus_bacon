import common
import edify_generator

def AddDeviceGetprop(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(" ||", ' || getprop("ro.build.product") == "One" || getprop("ro.product.device") == "One" || getprop("ro.build.product") == "ONE" || getprop("ro.product.device") == "ONE" || getprop("ro.build.product") == "ONE A0001" || getprop("ro.product.device") == "ONE A0001" || getprop("ro.build.product") == "A0001" || getprop("ro.product.device") == "A0001" || getprop("ro.build.product") == "bacon" || getprop("ro.product.device") == "bacon" ||')
            return

def MountSystem(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "unmount(" in edify.script[i] and "/system" in edify.script[i]:
            edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "/system");'
            return

def DeleteSystem(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
            edify.script[i] = 'delete_recursive("/system");'
            return

def WritePolicyConfig(info):
    try:
        file_contexts = info.input_zip.read("META/file_contexts")
        common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
    except KeyError:
        print "warning: file_context missing from target;"
    
def FullOTA_InstallEnd(info):
    AddDeviceGetprop(info)
    MountSystem(info)
    DeleteSystem(info)
    WritePolicyConfig(info)
