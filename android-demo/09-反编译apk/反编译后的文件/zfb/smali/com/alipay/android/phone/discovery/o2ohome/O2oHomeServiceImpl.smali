.class public Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;
.super Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;
.source "O2oHomeServiceImpl.java"


# static fields
.field private static final RT_FIRST_TIME_DELAYED:Ljava/lang/String; = "NEARBY_FIRST_DELAYED_TIME"

.field private static final RT_INTERVAL_KEY:Ljava/lang/String; = "NEARBY_SCAN_INTERVAL"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

.field private final locationListener:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;

.field private logSource:Ljava/lang/String;

.field private mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

.field private mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

.field private mFirstFinish:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsBeaconErrorReturn:Z

.field private mIsBeaconRpcErrReturn:Z

.field private mIsDelayed:Z

.field private mIsLbsErrorReturn:Z

.field private mIsLbsRpcErrReturn:Z

.field private mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

.field private mLastUpdateTime:J

.field private final mainRequestReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeService"

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;-><init>()V

    .line 58
    const-string/jumbo v0, "walletNear"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->logSource:Ljava/lang/String;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    .line 64
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsErrorReturn:Z

    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsRpcErrReturn:Z

    .line 65
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconErrorReturn:Z

    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconRpcErrReturn:Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mHandler:Landroid/os/Handler;

    .line 69
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mFirstFinish:Z

    .line 70
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsDelayed:Z

    .line 77
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mainRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->locationListener:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;

    .line 298
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsDelayed:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->executeRpc(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    return-void
.end method

.method static synthetic access$11(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconErrorReturn:Z

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    return-object v0
.end method

.method static synthetic access$13(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconErrorReturn:Z

    return v0
.end method

.method static synthetic access$14(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->update(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mFirstFinish:Z

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->beginScan()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsDelayed:Z

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mFirstFinish:Z

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)J
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getFirstTimeDelayedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsErrorReturn:Z

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    return-void
.end method

.method private beginScan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    .line 111
    iput-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconErrorReturn:Z

    iput-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsErrorReturn:Z

    .line 112
    iput-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconRpcErrReturn:Z

    iput-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsRpcErrReturn:Z

    .line 113
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->needUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->startLocation()V

    .line 115
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->startBeaconScan()V

    goto :goto_0
.end method

.method private executeRpc(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method private getCacheTime(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "O2oHomeService"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    const-string/jumbo v1, "Config@O2oHome_NEARBY_SCAN_INTERVAL"

    const-string/jumbo v2, "30"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1e

    .line 252
    :goto_0
    return-wide v0

    .line 237
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 240
    :cond_2
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 251
    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 252
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFirstTimeDelayedTime()J
    .locals 7

    .prologue
    const-wide/16 v1, 0x7d0

    .line 206
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 207
    :try_start_0
    const-string/jumbo v3, "NEARBY_FIRST_DELAYED_TIME"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "first time get from service: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    :goto_0
    return-wide v1

    .line 212
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 213
    const-wide/16 v5, 0x0

    cmp-long v0, v5, v3

    if-ltz v0, :cond_1

    move-wide v0, v1

    .line 221
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "first time delayed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, v0

    .line 222
    goto :goto_0

    .line 216
    :cond_1
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v3

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_1
.end method

.method private needUpdate()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 161
    :try_start_0
    const-string/jumbo v1, "NEARBY_SCAN_INTERVAL"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v4, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "interval(s): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getCacheTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "with cache interval(s): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    cmp-long v4, v8, v0

    if-ltz v4, :cond_2

    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "send update with null data close near server"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->switchListenStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v2

    .line 195
    :goto_0
    return v0

    .line 178
    :catch_0
    move-exception v0

    const-wide/16 v0, 0x1e

    .line 181
    :cond_2
    iget-wide v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    cmp-long v4, v8, v4

    if-nez v4, :cond_3

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    move v0, v3

    .line 183
    goto :goto_0

    .line 186
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 188
    iget-wide v6, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    sub-long/2addr v4, v6

    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "systemIntervalTime(ms): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    .line 192
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update last time(ms): "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 193
    goto :goto_0

    :cond_4
    move v0, v2

    .line 195
    goto :goto_0
.end method

.method private declared-synchronized sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 3

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconErrorReturn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsErrorReturn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 433
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send update with null data section 1\uff1a all Error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 437
    :cond_2
    if-eqz p1, :cond_0

    .line 441
    :try_start_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsErrorReturn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send update with null data section 2: lbs locate error, beacon rpc error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    goto :goto_0

    .line 448
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconErrorReturn:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v0, :cond_4

    .line 449
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send update with null data section 3: beacon scan error, lbs rpc error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    goto :goto_0

    .line 455
    :cond_4
    iget-object v0, p1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->latitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsRpcErrReturn:Z

    .line 461
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLbsRpcErrReturn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconRpcErrReturn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v0, :cond_0

    .line 463
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send update with null data section 4: beacon rpc error, lbs rpc error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    goto/16 :goto_0

    .line 458
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconRpcErrReturn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private startBeaconScan()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;-><init>(Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->switchListenStatus(I)V

    .line 357
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    .line 372
    const-wide/16 v2, 0x1388

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    return-void
.end method

.method private startLocation()V
    .locals 6

    .prologue
    .line 283
    invoke-static {}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getInstance()Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    move-result-object v0

    const/16 v1, 0x3c

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->logSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getLastLocation(ILjava/lang/String;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4f7f\u7528\u4e0a\u6b21\u5b9a\u4f4d:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;

    invoke-direct {v1}, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;-><init>()V

    .line 287
    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->latitude:Ljava/lang/String;

    .line 288
    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->longitude:Ljava/lang/String;

    .line 289
    invoke-direct {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->executeRpc(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getInstance()Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->locationListener:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->logSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->startLocationTask(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized update(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V
    .locals 5

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v0, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->weight:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->weight:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 481
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "don\'t need update because of weight is little! old weight : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v3, v3, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->weight:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new weight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->weight:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 485
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    .line 486
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "data is update need notify! "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;-><init>()V

    .line 488
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->redirectUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    .line 489
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->logoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    .line 490
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->logoName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v1, :cond_0

    .line 492
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send update start! ObjectId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->ruleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_url_:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;->onCreate(Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    const-string/jumbo v1, "com.alipay.mobile.RETURN_TO_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mainRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 128
    return-void
.end method

.method public refreshRedPointData()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public setO2ORemoteHandler(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    .line 133
    return-void
.end method

.method public startShare(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 141
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 145
    return-void
.end method
