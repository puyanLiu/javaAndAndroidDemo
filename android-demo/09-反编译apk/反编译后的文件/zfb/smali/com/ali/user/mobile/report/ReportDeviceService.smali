.class public Lcom/ali/user/mobile/report/ReportDeviceService;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "ReportDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/ali/user/mobile/report/ReportDeviceService;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->b:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->b:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/rpc/RpcManager;->getRpcFactory2(Landroid/content/Context;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/IRpcFactory;

    move-result-object v0

    const-class v1, Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/rpc/IRpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;

    iput-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->mRpcInterface:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/report/ReportDeviceService;)V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportConfig;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportConfig;

    move-result-object v0

    const-string/jumbo v1, ".DeviceInfoCfg"

    const-string/jumbo v2, "unifylogin$"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/report/ReportConfig;->checkReportConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ReportDeviceService"

    const-string/jumbo v1, "disallow report alive"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;

    invoke-direct {v1}, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->apdid:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->asdk:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.board"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->board:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.brand"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->brand:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->device:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.display.id"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->displayid:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/impl/EnvInfoCollector;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->em:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getHeightPix()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getWidthPix()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->w:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->imei:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->imsi:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.version.incremental"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->incremental:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/NetWorkInfo;->getInstance()Lcom/ali/user/mobile/info/NetWorkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/NetWorkInfo;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->mac:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.manufacture"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->manufacture:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->model:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->name:Ljava/lang/String;

    const-string/jumbo v0, "ANDROID"

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->os:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->px:Ljava/lang/String;

    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->qemu:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.version.release"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->release:Ljava/lang/String;

    const-string/jumbo v0, "ro.secure"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->root:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.tags"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->tags:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->ua:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/SensorInfoCollector;->getInstance()Lcom/ali/user/mobile/info/SensorInfoCollector;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasGravitySensor()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "G1"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasGyroscopeSensor()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "T1"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasLightSensor()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "L1"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasLinearAccelerationSensor()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "A1"

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasMagneticFieldSensor()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "M1"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasProximitySensor()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "D1"

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasTemperatureSensor()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "W1"

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasPressureSensor()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "P1"

    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->sens:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->umid:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->utdid:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->appkey:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->appversion:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->sdkversion:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;

    invoke-interface {v0, v1}, Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;->reportDeviceInfo(Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;)Lcom/alipay/alideviceinfo/vo/DeviceInfoRes;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/report/ReportConfig;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportConfig;

    move-result-object v1

    const-string/jumbo v2, ".DeviceInfoCfg"

    const-string/jumbo v3, "unifylogin$"

    iget-object v0, v0, Lcom/alipay/alideviceinfo/vo/DeviceInfoRes;->clientReportConfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ali/user/mobile/report/ReportConfig;->setReportConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "G0"

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v0, "T0"

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v0, "L0"

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v0, "A0"

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v0, "M0"

    goto/16 :goto_6

    :cond_7
    const-string/jumbo v0, "D0"

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v0, "W0"

    goto/16 :goto_8

    :cond_9
    const-string/jumbo v0, "P0"

    goto/16 :goto_9
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportDeviceService;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/ali/user/mobile/report/ReportDeviceService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Lcom/ali/user/mobile/report/ReportDeviceService;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/ali/user/mobile/report/ReportDeviceService;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/report/ReportDeviceService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Lcom/ali/user/mobile/report/ReportDeviceService;

    .line 45
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Lcom/ali/user/mobile/report/ReportDeviceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public reportDeviceInfo()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/report/ReportDeviceService$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/report/ReportDeviceService$1;-><init>(Lcom/ali/user/mobile/report/ReportDeviceService;)V

    .line 57
    const-string/jumbo v2, "Aliuser.reportDeviceInfo"

    .line 52
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method
