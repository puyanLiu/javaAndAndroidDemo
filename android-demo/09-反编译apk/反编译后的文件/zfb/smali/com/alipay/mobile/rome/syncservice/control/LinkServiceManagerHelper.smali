.class public Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;
.super Ljava/lang/Object;
.source "LinkServiceManagerHelper.java"


# static fields
.field private static volatile b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;


# instance fields
.field private volatile a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getCdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;)V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->init(Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->isConnected()Z

    move-result v0

    return v0
.end method

.method public sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public sendPacketUplinkSync(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->sendPacketUplinkSync(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setAppName(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setConnActionActive()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setConnActionActive()V

    .line 101
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setDebugMode(Z)V

    .line 108
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setDeviceId(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setHostAddr(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setHostAddr(Ljava/lang/String;IZ)V

    .line 66
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setProductId(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setProductVersion(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public startLink()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->startLink()V

    .line 131
    return-void
.end method

.method public startLinkOnResume()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->startLinkOnResume()V

    .line 137
    return-void
.end method

.method public stopLink()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->stopLink()V

    .line 144
    return-void
.end method
