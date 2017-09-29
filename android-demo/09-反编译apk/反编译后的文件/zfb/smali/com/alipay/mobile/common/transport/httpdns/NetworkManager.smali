.class public Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_NetManager"

.field public static changeBegin:J = 0x0L

.field public static changeCount:I = 0x0

.field public static final changeInterval:J = 0x36ee80L

.field public static final maxTimesLimit:J = 0xaL


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;

.field lastConnected:Ljava/lang/Boolean;

.field netSubType:I

.field netType:I

.field neverReceive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeBegin:J

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    .line 48
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->neverReceive:Z

    .line 50
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netType:I

    .line 51
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netSubType:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;)I
    .locals 10

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 14
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string/jumbo v2, "HTTP_DNS_NetManager"

    const-string/jumbo v3, "\n ============================================================== "

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v2, "\u5f53\u524d\u65e0\u7f51\u7edc!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netType:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netSubType:I

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    if-nez v7, :cond_3

    :cond_1
    const-string/jumbo v7, "HTTP_DNS_NetManager"

    const-string/jumbo v8, " New contivity broadcast\uff01"

    invoke-static {v7, v8}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    iput v4, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netType:I

    iput v5, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netSubType:I

    const-string/jumbo v7, "HTTP_DNS_NetManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " type=["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "] subType=["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]  available=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] connected=["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] detailedState=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] extraInfo=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "HTTP_DNS_NetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " activeNetworkInfo hashcode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  activeNetworkInfo = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]\n\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->lastConnected:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v3, :cond_2

    iget v7, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netType:I

    if-ne v7, v4, :cond_2

    iget v7, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->netSubType:I

    if-ne v7, v5, :cond_2

    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v1, " Old contivity broadcast\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$Singleton;->instance:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v1, "httpdns manager close"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    .line 144
    :cond_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string/jumbo v1, "HTTP_DNS_NetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "httpdns exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkInformation()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 147
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 156
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 160
    :goto_0
    const-string/jumbo v2, "net=%d&info=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized setNetworkContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getFlag()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;-><init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
