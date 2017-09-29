.class public Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;
.super Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;
.source "LongLinkControlCenter.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;


# instance fields
.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->c:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->c:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->c:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->c:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public doLogin()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setConnActionActive()V

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->doStartLink()V

    .line 110
    return-void
.end method

.method public doResume()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public doStartLink()V
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->startLink()V

    .line 163
    return-void
.end method

.method public doStartLinkOnResume()V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->startLinkOnResume()V

    .line 159
    return-void
.end method

.method public doStopLink()V
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->stopLink()V

    .line 167
    return-void
.end method

.method public doUplinkData(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 170
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    const-string/jumbo v1, "doUplinkData: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "channel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "push"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doUplinkData: channel invalid [ channel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "payload"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "doUplinkData: [ appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ appData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 184
    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-nez v1, :cond_1

    .line 187
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    const-string/jumbo v1, "doUplinkData: [ appData=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1000

    if-ge v2, v3, :cond_2

    .line 193
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "doUplinkData: uplink data exceeded [ dataLen="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doUserLeaveHint()V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setConnActionActive()V

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->doStopLink()V

    .line 120
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finish  [ isInited="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    .line 89
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->finish()V

    .line 90
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-boolean v4, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    .line 52
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    const-string/jumbo v2, "onCreate: [ DebugMode=true ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setDebugMode(Z)V

    .line 62
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/c;->a()Lcom/alipay/mobile/rome/syncservice/a/c;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/a/c;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/a/c;->c(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setHostAddr(Ljava/lang/String;IZ)V

    sget-object v4, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setLinkHostAddr [ debug mode ][ serverHost="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " ][ serverPort="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ useSsl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setAppName(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setProductVersion(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setProductId(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setDeviceId(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/rome/syncservice/b/a;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/rome/syncservice/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->init(Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;)V

    goto/16 :goto_0

    .line 62
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/EnvConfigHelper;->isSandbox()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "mobilepmgw.alipay.com"

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v2

    const/16 v3, 0x1bb

    invoke-virtual {v2, v1, v3, v4}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setHostAddr(Ljava/lang/String;IZ)V

    sget-object v2, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setLinkHostAddr [ sandbox mode ] [ host="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ][ port=443 ][ useSsl=true ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
