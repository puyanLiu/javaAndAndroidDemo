.class public Lcom/alipay/mobile/nebulacore/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static a:Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

.field private static synthetic f:[I


# instance fields
.field private b:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/util/NetworkUtil$NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$1;-><init>(Lcom/alipay/mobile/nebulacore/util/NetworkUtil;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->e:Landroid/content/BroadcastReceiver;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->b:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->c:Ljava/util/List;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/util/NetworkUtil;)V
    .locals 6

    .prologue
    .line 142
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->d:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->b:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    :goto_1
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->b:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->b:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->c:Ljava/util/List;

    if-nez v0, :cond_5

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NetworkUtil"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const-string/jumbo v3, "NetworkTyp Verify"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$NetworkListener;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->b:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$NetworkListener;->onNetworkChanged(Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->values()[Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static final getInstance()Lcom/alipay/mobile/nebulacore/util/NetworkUtil;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->a:Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->a:Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->a:Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final addListener(Lcom/alipay/mobile/nebulacore/util/NetworkUtil$NetworkListener;)V
    .locals 1

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final declared-synchronized getNetworkString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->b:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 124
    const-string/jumbo v0, "none"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 116
    :pswitch_0
    :try_start_1
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

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized getNetworkType()Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->b:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;
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
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->d:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->registerReceiver()V

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method public final removeListener(Lcom/alipay/mobile/nebulacore/util/NetworkUtil$NetworkListener;)V
    .locals 1

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string/jumbo v1, "NetworkUtil"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
