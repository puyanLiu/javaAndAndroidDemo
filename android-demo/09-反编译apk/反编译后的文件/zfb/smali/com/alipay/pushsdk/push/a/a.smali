.class public Lcom/alipay/pushsdk/push/a/a;
.super Ljava/lang/Object;
.source "AmnetAdapter.java"


# static fields
.field public static a:Lcom/alipay/pushsdk/push/a/a;

.field public static b:J

.field private static f:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

.field private static i:I


# instance fields
.field public c:Lcom/alipay/pushsdk/push/m;

.field private d:Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;

.field private e:Lcom/alipay/pushsdk/push/a/f;

.field private g:Lcom/alipay/pushsdk/push/b/a;

.field private h:Lcom/alipay/pushsdk/push/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/alipay/pushsdk/push/a/a;->i:I

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "initAdapter called "

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/pushsdk/push/a/a;->e()Lcom/alipay/pushsdk/push/a/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->removeGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/pushsdk/push/a/a;->e()Lcom/alipay/pushsdk/push/a/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->removeGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->removePushAcceptDataListener()V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->removeRpcAcceptDataListener()V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->removeSyncAcceptDataListener()V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->removeSyncDirectAcceptDataListener()V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addRpcAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addSyncAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addSyncDirectAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/a;->d:Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/pushsdk/push/a/d;

    invoke-direct {v1}, Lcom/alipay/pushsdk/push/a/d;-><init>()V

    iput-object v1, p0, Lcom/alipay/pushsdk/push/a/a;->d:Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;

    :cond_0
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/a;->d:Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addPushAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 52
    return-void
.end method

.method public static a()Lcom/alipay/pushsdk/push/a/a;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/alipay/pushsdk/push/a/a;->a:Lcom/alipay/pushsdk/push/a/a;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/alipay/pushsdk/push/a/a;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/push/a/a;->a:Lcom/alipay/pushsdk/push/a/a;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/alipay/pushsdk/push/a/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/a/a;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/push/a/a;->a:Lcom/alipay/pushsdk/push/a/a;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/push/a/a;->a:Lcom/alipay/pushsdk/push/a/a;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/alipay/pushsdk/push/b/a;Lcom/alipay/pushsdk/push/a/e;)V
    .locals 3

    .prologue
    .line 93
    const-class v1, Lcom/alipay/pushsdk/push/a/a;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "startAmnetConnect called "

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    new-instance v2, Lcom/alipay/pushsdk/push/a/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/pushsdk/push/a/b;-><init>(Lcom/alipay/pushsdk/push/b/a;Lcom/alipay/pushsdk/push/a/e;)V

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->askConnState(Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/pushsdk/push/a/a;->a(Lcom/alipay/pushsdk/push/e/a;Z)V

    .line 171
    return-void
.end method

.method public static a(Lcom/alipay/pushsdk/push/e/a;Z)V
    .locals 3

    .prologue
    .line 175
    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "packet is null"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 176
    :goto_0
    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V

    .line 180
    :goto_1
    return-void

    .line 175
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;

    invoke-direct {v0}, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;-><init>()V

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->channel:B

    iput-boolean p1, v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->toBizSys:Z

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utf8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->body:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(I)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    const/4 v0, -0x1

    if-eq v0, p0, :cond_1

    if-eqz p0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/alipay/pushsdk/push/a/a;->b:J

    sub-long v4, v3, v5

    const-wide/16 v6, 0x1388

    cmp-long v3, v6, v4

    if-gez v3, :cond_2

    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->isCanLog()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startAmnetConnect state callback :"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " stateCodeToHumanString:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/pushsdk/push/a/g;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " interval:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " maxInterval:5000 isAmnetNotConnect:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isConnectWaitTimeOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isShouldStartAmnet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 158
    const-string/jumbo v0, "stop amnet"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/pushsdk/push/a/i;

    invoke-direct {v1}, Lcom/alipay/pushsdk/push/a/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->shutdownAmnet(Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V

    .line 161
    const/4 v0, 0x1

    sput v0, Lcom/alipay/pushsdk/push/a/a;->i:I

    .line 163
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    .line 162
    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    .line 164
    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->resetEventStates()V

    .line 166
    const-string/jumbo v0, "stop amnet end"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method static synthetic b(Lcom/alipay/pushsdk/push/b/a;Lcom/alipay/pushsdk/push/a/e;)V
    .locals 2

    .prologue
    .line 133
    const-string/jumbo v0, "startAmnetConnect dostartAmnet Called"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v0

    iput-object p1, v0, Lcom/alipay/pushsdk/push/a/a;->h:Lcom/alipay/pushsdk/push/a/e;

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v0

    iput-object p0, v0, Lcom/alipay/pushsdk/push/a/a;->g:Lcom/alipay/pushsdk/push/b/a;

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/a/a;->e()Lcom/alipay/pushsdk/push/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/pushsdk/push/a/f;->a(Lcom/alipay/pushsdk/push/b/a;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/a/a;->e()Lcom/alipay/pushsdk/push/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/a/f;->a(Lcom/alipay/pushsdk/push/a/e;)V

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/a/e;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->setAppContext(Landroid/content/Context;)V

    const-string/jumbo v0, "beforce activateAmnet"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/pushsdk/push/a/c;

    invoke-direct {v1}, Lcom/alipay/pushsdk/push/a/c;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->activateAmnet(Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V

    const-string/jumbo v0, "start amnet end"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()V
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AlipayVisibleHelper;->isVisibleAlipay()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyFirstEvent2Amnet visibleAlipay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->isBindedMainProc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->notifyMainProcExistStateChanged(I)V

    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;->notifySeceenOnEvent()V

    :cond_1
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/foreign/OutEventNotifyServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;->notifyAppResumeEvent()V

    :cond_2
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->notifySwitchSmartHeartBeat()V

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->notifySwitchOrtt()V

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->notifySwitchDelayHandshake()V

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyGeneralListener;->notifyAmnetLifeChange(B)V

    const-string/jumbo v0, "HttpWorker"

    const-string/jumbo v1, "==========notifyFirstEvent2Amnet ,Amnet is actived============"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d()Lcom/alipay/mobile/common/amnet/api/AmnetManager;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/alipay/pushsdk/push/a/a;->f:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/alipay/pushsdk/push/a/a;->f:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    .line 87
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/util/a;->a()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    .line 87
    sput-object v0, Lcom/alipay/pushsdk/push/a/a;->f:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    goto :goto_0
.end method

.method private e()Lcom/alipay/pushsdk/push/a/f;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/a;->e:Lcom/alipay/pushsdk/push/a/f;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/alipay/pushsdk/push/a/f;

    invoke-direct {v0}, Lcom/alipay/pushsdk/push/a/f;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/a;->e:Lcom/alipay/pushsdk/push/a/f;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/a;->e:Lcom/alipay/pushsdk/push/a/f;

    return-object v0
.end method
