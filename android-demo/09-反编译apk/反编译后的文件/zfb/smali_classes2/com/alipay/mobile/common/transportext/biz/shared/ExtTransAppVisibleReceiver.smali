.class public Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExtTransAppVisibleReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtTransAppVisibleReceiver"


# instance fields
.field private leaveTime:J

.field private resume:Z

.field private screenon:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->leaveTime:J

    .line 29
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->resume:Z

    .line 31
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->screenon:Z

    .line 35
    return-void
.end method

.method private adjustmentSpdyTimeout()V
    .locals 5

    .prologue
    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseSpdy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->isNetworkActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SPDY_TIME_TO_ASLEEP:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    .line 107
    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->leaveTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->leaveTime:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->setUseSpdyShortReadTimeout(Z)V

    .line 109
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    const-string/jumbo v1, "setUseSpdyShortReadTimeout"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iput-boolean v5, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->resume:Z

    .line 72
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->screenon:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->adjustmentSpdyTimeout()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string/jumbo v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->resume:Z

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->leaveTime:J

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iput-boolean v5, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->screenon:Z

    .line 81
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->resume:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->adjustmentSpdyTimeout()V

    goto :goto_0

    .line 85
    :cond_3
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->screenon:Z

    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->resume:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->leaveTime:J

    goto :goto_0
.end method

.method public regiester()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    const-string/jumbo v1, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string/jumbo v1, "ExtTransAppVisibleReceiver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
