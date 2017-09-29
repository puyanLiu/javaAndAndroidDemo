.class public Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;
.super Ljava/lang/Object;
.source "BindEventListenerManger.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/push/BindEventListener;


# static fields
.field private static bindEventListenerManger:Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;


# instance fields
.field private bindLock:Ljava/lang/Object;

.field private binded:Z

.field private unbindLonk:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->binded:Z

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->unbindLonk:Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->getInstance()Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;->isBindedService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->binded:Z

    .line 37
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindEventListenerManger:Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindEventListenerManger:Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindEventListenerManger:Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindEventListenerManger:Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public binded()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->binded:Z

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->onSyncConnState()V

    .line 52
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_2
    const-string/jumbo v2, "BindEventListenerManger"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isBinded()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->binded:Z

    return v0
.end method

.method public unBinde()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->binded:Z

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->unbindLonk:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->unbindLonk:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string/jumbo v2, "BindEventListenerManger"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitToBinded()V
    .locals 4

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->binded:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->bindLock:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 76
    :cond_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string/jumbo v2, "BindEventListenerManger"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitToUnBinded()V
    .locals 4

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->binded:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->unbindLonk:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->unbindLonk:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 88
    :cond_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string/jumbo v2, "BindEventListenerManger"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
