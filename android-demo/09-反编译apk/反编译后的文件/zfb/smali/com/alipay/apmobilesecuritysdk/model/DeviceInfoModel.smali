.class public Lcom/alipay/apmobilesecuritysdk/model/DeviceInfoModel;
.super Ljava/lang/Object;


# static fields
.field public static final AD10_GSID:Ljava/lang/String; = "AD10"

.field public static final AD11_CPUID:Ljava/lang/String; = "AD11"

.field public static final AD12_CPUCOUNT:Ljava/lang/String; = "AD12"

.field public static final AD13_CPUFREQUENT:Ljava/lang/String; = "AD13"

.field public static final AD14_RAMSIZE:Ljava/lang/String; = "AD14"

.field public static final AD15_ROMSIZE:Ljava/lang/String; = "AD15"

.field public static final AD16_SDCARDSIEZE:Ljava/lang/String; = "AD16"

.field public static final AD17_VKEY:Ljava/lang/String; = "AD17"

.field public static final AD18_BLUEMAC:Ljava/lang/String; = "AD18"

.field public static final AD19_NETWORKTYPE:Ljava/lang/String; = "AD19"

.field public static final AD1_IMEI:Ljava/lang/String; = "AD1"

.field public static final AD20_BASEBANDCODE:Ljava/lang/String; = "AD20"

.field public static final AD21_PHONENUMBER:Ljava/lang/String; = "AD21"

.field public static final AD22_CAMERALEVEL:Ljava/lang/String; = "AD22"

.field public static final AD23_WIFIBSSID:Ljava/lang/String; = "AL3"

.field public static final AD2_IMSI:Ljava/lang/String; = "AD2"

.field public static final AD3_SENSORLIST:Ljava/lang/String; = "AD3"

.field public static final AD4_SENSORDATA:Ljava/lang/String; = "AD4"

.field public static final AD5_RESOLATION:Ljava/lang/String; = "AD5"

.field public static final AD6_WIDTH:Ljava/lang/String; = "AD6"

.field public static final AD7_HEIGHT:Ljava/lang/String; = "AD7"

.field public static final AD8_MAC_ADDRESS:Ljava/lang/String; = "AD8"

.field public static final AD9_ICCID:Ljava/lang/String; = "AD9"

.field public static final FIELD:Ljava/lang/String; = "AD"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStaticDeviceInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorage;->getDeviceStorageModel(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;

    move-result-object v5

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBluMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_5

    const-string/jumbo v8, "Read deviceInfoStorageModel From local data:"

    invoke-static {v8}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getImei()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getImsi()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getMac()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getBluetoothMac()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;->getGsi()Ljava/lang/String;

    move-result-object v4

    :cond_4
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorage;->saveDeviceStorageModel(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/apdid/DeviceInfoStorageModel;)V

    const-string/jumbo v0, "AD1"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD2"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD3"

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSensorDigest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD5"

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD6"

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD7"

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD8"

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD9"

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSIMSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD10"

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD11"

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCPUSerial()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD12"

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuCount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD13"

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuFrequent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD14"

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMemorySize()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD15"

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getTotalInternalMemorySize()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD16"

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSDCardSize()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD17"

    const-string/jumbo v1, ""

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD18"

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD19"

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD20"

    invoke-virtual {v6}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBandVer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD21"

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AD22"

    const-string/jumbo v1, ""

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AL3"

    invoke-virtual {v6, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getWifiBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7

    :cond_5
    const-string/jumbo v5, "Local deviceInfoStorageModel is null"

    invoke-static {v5}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0
.end method
