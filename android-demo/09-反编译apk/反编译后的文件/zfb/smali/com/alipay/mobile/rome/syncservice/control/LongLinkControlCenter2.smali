.class public Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;
.super Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;
.source "LongLinkControlCenter2.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;


# instance fields
.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->b:Z

    .line 25
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->c:Z

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->d:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->d:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->d:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->d:Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public doLogin()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public doResume()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/ReflectNotifyMmtp;->onAppResume()V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public doUserLeaveHint()V
    .locals 0

    .prologue
    .line 84
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/ReflectNotifyMmtp;->onAppLeave()V

    .line 85
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finish isInited="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public handleOldSyncKey()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 99
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->c:Z

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper;->getCdid()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iput-boolean v7, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->c:Z

    .line 112
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->c()V

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceBasedBiz()Ljava/util/Set;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v2

    .line 118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    iput-boolean v7, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->c:Z

    .line 125
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->c()V

    goto :goto_0

    .line 118
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 120
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;JLjava/lang/String;)J

    goto :goto_1
.end method

.method public init()V
    .locals 3

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->b:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->b:Z

    .line 55
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->handleOldSyncKey()V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/rome/syncservice/b/c;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/rome/syncservice/b/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceManagerHelper2;->init(Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;)V

    goto :goto_0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p1, p2}, Lcom/alipay/mobile/rome/syncservice/control/ReflectNotifyMmtp;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->handleUserInfoEvent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
