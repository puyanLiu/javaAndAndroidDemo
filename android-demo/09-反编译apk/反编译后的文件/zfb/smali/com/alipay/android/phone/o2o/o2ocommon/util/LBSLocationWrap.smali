.class public Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;
.super Ljava/lang/Object;
.source "LBSLocationWrap.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;


# instance fields
.field private final EXPIRE_TIME_TWO_MINUTES_MILLIS:J

.field private final LOCATION_TIMEOUT_MILLIS:J

.field private handler:Landroid/os/Handler;

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lbsListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;",
            ">;"
        }
    .end annotation
.end field

.field private final locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

.field private final proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field private timeOutCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "LBSLocationWrap"

    sput-object v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    .line 33
    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    .line 37
    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->LOCATION_TIMEOUT_MILLIS:J

    .line 39
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->EXPIRE_TIME_TWO_MINUTES_MILLIS:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->lbsListenerList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$1;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;)V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 161
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 162
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;)Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;ZLcom/alipay/mobile/common/lbs/LBSLocation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->onLocationCallback(ZLcom/alipay/mobile/common/lbs/LBSLocation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->checkLocationTimeOut()V

    return-void
.end method

.method private checkLocationTimeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "location timeout"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 216
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 217
    const-string/jumbo v1, "timeout"

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->onLocationCallback(ZLcom/alipay/mobile/common/lbs/LBSLocation;Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method

.method private getCacheByExpires(JLjava/lang/String;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 165
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 168
    cmp-long v3, v1, p1

    if-gtz v3, :cond_0

    .line 169
    const-string/jumbo v3, "cache"

    invoke-direct {p0, v3, p3, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->monitorLog(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "timespan ok: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v1, v7

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " expires seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v5, p1, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-object v0

    .line 173
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "timespan failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v1, v7

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " expires seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v4, p1, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "proxy.getLastKnownLocation is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getConfigTimeMills(Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 243
    .line 244
    invoke-static {p1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/ConfigServiceUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 252
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 257
    :cond_0
    :goto_1
    return-wide p2

    .line 248
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-wide v0, p2

    goto :goto_0

    :cond_1
    move-wide p2, v0

    goto :goto_1
.end method

.method private getExpireTimeMills()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x2710

    .line 233
    const-string/jumbo v2, "O2OHOME_LBS_CACHE_EXPIRE_SECONDS"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getConfigTimeMills(Ljava/lang/String;J)J

    move-result-wide v2

    .line 234
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 238
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;
    .locals 2

    .prologue
    .line 79
    const-class v1, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->instance:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    invoke-direct {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->instance:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    .line 83
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->instance:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTimeoutMillis()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x1388

    .line 223
    const-string/jumbo v2, "O2OHOME_LBS_TIMEOUT_SECONDS"

    const-wide/16 v3, 0x1f40

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getConfigTimeMills(Ljava/lang/String;J)J

    move-result-wide v2

    .line 224
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 228
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private monitorLog(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 269
    const-string/jumbo v1, "O2O_LBS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v1, "O2O"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getTimeoutMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 273
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    if-eqz p3, :cond_1

    .line 277
    const-string/jumbo v1, "longitude"

    invoke-virtual {p3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v1, "latitude"

    invoke-virtual {p3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 282
    return-void
.end method

.method private declared-synchronized onLocationCallback(ZLcom/alipay/mobile/common/lbs/LBSLocation;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->lbsListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->lbsListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 183
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;

    .line 184
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;->callback:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;->callback:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;

    invoke-interface {v2, p1, p2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;->onLocationResult(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 186
    iget-object v0, v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;->logSource:Ljava/lang/String;

    invoke-direct {p0, p3, v0, p2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->monitorLog(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTimeOutCallback()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$2;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;)V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getTimeoutMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    return-void
.end method


# virtual methods
.method public getExpiresTwoMinutes()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getExpireTimeMills()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getCacheByExpires(JLjava/lang/String;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresTwoMinutes(Ljava/lang/String;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getExpireTimeMills()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getCacheByExpires(JLjava/lang/String;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "get last location"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation(ILjava/lang/String;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    .prologue
    .line 147
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, p2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getCacheByExpires(JLjava/lang/String;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startLocationTask(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 94
    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;)V

    .line 95
    iput-object p1, v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;->callback:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;

    .line 96
    iput-object p2, v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap$LocationTask;->logSource:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->lbsListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start location task"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->setTimeOutCallback()V

    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 103
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopLocationTask(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    return-void
.end method
