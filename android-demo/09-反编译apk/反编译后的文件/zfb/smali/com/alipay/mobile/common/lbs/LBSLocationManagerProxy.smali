.class public Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:J

.field private static d:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field private static e:Z

.field private static f:Z

.field private static g:Landroid/content/Context;


# instance fields
.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/common/lbs/LBSLocationListener;",
            "Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/common/lbs/LBSLocationListener;",
            "Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/alipay/mobile/common/lbs/LBSLocation;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    const-class v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:J

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:J

    .line 36
    sput-boolean v3, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Z

    .line 37
    sput-boolean v3, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Ljava/util/Map;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->k:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method private static a(Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 206
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/lbs/LBSLocation;-><init>(Landroid/location/Location;)V

    .line 207
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCountry(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setAccuracy(F)V

    .line 209
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setProvince(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCity(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setDistrict(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCityCode(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setAdCode(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setAddress(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setStreet(Ljava/lang/String;)V

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setIsGetAMapAPP(Z)V

    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 4

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "once listener count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;J)V
    .locals 8

    .prologue
    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".doRequestLocationUpdates( gpsEnable=false)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Landroid/content/Context;

    .line 118
    if-nez p2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string/jumbo v0, "requestLocationUpdates once stacktrace"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Ljava/lang/String;)V

    .line 123
    iget-object v7, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->k:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;-><init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/alipay/mobile/common/lbs/LBSLocationListener;Landroid/content/Context;JZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->j:Lcom/alipay/mobile/common/lbs/LBSLocation;

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->j:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setLocalTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/common/lbs/LBSLocationListener;",
            "+",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 289
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "listener:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 291
    :cond_0
    monitor-exit p0

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V
    .locals 8

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    const-string/jumbo v4, "checkLocationTimeOut"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    iget-object v4, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->getLocationRequestTimestamp()J

    move-result-wide v4

    sub-long v4, v1, v4

    sget-wide v6, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    const-string/jumbo v6, "TimeOut"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a()V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 1

    .prologue
    .line 27
    invoke-static {p1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Z

    return p0
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "continuous listener count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-direct {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 55
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 4

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    const-string/jumbo v2, "getLastKnownLocation"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->j:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->j:Lcom/alipay/mobile/common/lbs/LBSLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    monitor-exit p0

    return-object v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 188
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v1

    const-string/jumbo v2, "lbs"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/LocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    .line 189
    invoke-static {v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 572
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 574
    if-nez v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 577
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    move v0, v1

    .line 579
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 580
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 581
    const/4 v1, 0x1

    goto :goto_0

    .line 579
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    const-string/jumbo v2, "removeUpdates"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public removeUpdatesContinuous(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 4

    .prologue
    .line 253
    if-nez p2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".removeUpdatesContinuous( listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v0, "removeUpdatesContinuous stacktrace"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;

    .line 263
    invoke-static {p1}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    const-string/jumbo v2, "LocationManagerProxy.destroy continuous"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {p1}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/LocationManagerProxy;->destroy()V

    goto :goto_0
.end method

.method public requestLocationUpdates(Landroid/content/Context;JLcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;J)V

    .line 78
    return-void
.end method

.method public requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 2

    .prologue
    .line 65
    sget-wide v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;J)V

    .line 66
    return-void
.end method

.method public requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;Z)V
    .locals 2

    .prologue
    .line 90
    sput-boolean p3, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Z

    .line 91
    sget-wide v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;J)V

    .line 92
    return-void
.end method

.method public requestLocationUpdates(Landroid/content/Context;ZLcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 2

    .prologue
    .line 101
    sget-wide v0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:J

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;J)V

    .line 102
    return-void
.end method

.method public requestLocationUpdatesContinuous(Landroid/content/Context;ZJFLcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 6

    .prologue
    .line 232
    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".requestLocationUpdatesContinuous (listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")( gpsEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v0, "requestLocationUpdatesContinuous stacktrace"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Ljava/lang/String;)V

    .line 240
    :try_start_0
    new-instance v5, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;

    invoke-direct {v5, p0, p6}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$AMapLocationListenerWrapper;-><init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Ljava/util/Map;

    invoke-interface {v0, p6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {p1}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/location/LocationManagerProxy;->setGpsEnable(Z)V

    .line 244
    invoke-static {p1}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    move-wide v2, p3

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b()V

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
