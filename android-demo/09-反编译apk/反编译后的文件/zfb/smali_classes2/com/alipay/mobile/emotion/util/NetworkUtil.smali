.class public Lcom/alipay/mobile/emotion/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I = null

.field public static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static instance:Lcom/alipay/mobile/emotion/util/NetworkUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private final listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private network:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$emotion$util$NetworkUtil$Network()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->values()[Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_NONE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$NetworkUtil$Network:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/util/NetworkUtil$1;-><init>(Lcom/alipay/mobile/emotion/util/NetworkUtil;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->listenerList:Ljava/util/List;

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/util/NetworkUtil;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->updateNetwork()V

    return-void
.end method

.method private final detectNetwork(Landroid/net/NetworkInfo;)Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;
    .locals 3

    .prologue
    .line 166
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_NONE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    .line 202
    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 171
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 172
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 173
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 174
    :cond_2
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    goto :goto_0

    .line 177
    :cond_3
    if-nez v0, :cond_4

    .line 178
    packed-switch v1, :pswitch_data_0

    .line 202
    :cond_4
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_NONE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    goto :goto_0

    .line 184
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    goto :goto_0

    .line 195
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    goto :goto_0

    .line 198
    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static final getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/alipay/mobile/emotion/util/NetworkUtil;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->instance:Lcom/alipay/mobile/emotion/util/NetworkUtil;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/mobile/emotion/util/NetworkUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/util/NetworkUtil;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->instance:Lcom/alipay/mobile/emotion/util/NetworkUtil;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->instance:Lcom/alipay/mobile/emotion/util/NetworkUtil;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final updateNetwork()V
    .locals 4

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->context:Landroid/content/Context;

    .line 147
    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 148
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->network:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    .line 155
    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->detectNetwork(Landroid/net/NetworkInfo;)Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->network:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    .line 156
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->network:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->listenerList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 163
    :cond_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/emotion/util/NetworkUtil;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;

    .line 161
    iget-object v3, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->network:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;->onNetworkChanged(Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;)V

    goto :goto_1
.end method


# virtual methods
.method public final addListener(Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;)V
    .locals 1

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final declared-synchronized getNetworkString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->network:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    if-nez v0, :cond_0

    .line 112
    const-string/jumbo v0, "none"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-object v0

    .line 114
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$NetworkUtil$Network()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->network:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 124
    const-string/jumbo v0, "none"

    goto :goto_0

    .line 116
    :pswitch_0
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 118
    :pswitch_1
    const-string/jumbo v0, "4g"

    goto :goto_0

    .line 120
    :pswitch_2
    const-string/jumbo v0, "3g"

    goto :goto_0

    .line 122
    :pswitch_3
    const-string/jumbo v0, "2g"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized getNetworkType()Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->network:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->context:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->registerReceiver()V

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public final removeListener(Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;)V
    .locals 1

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/emotion/util/NetworkUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
