.class public Lcom/alipay/mobile/rome/syncservice/d/a;
.super Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;
.source "SyncUplinkHandler.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/rome/syncservice/d/a;


# instance fields
.field private c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/d/c;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->e:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->f:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    const/16 v0, 0x7530

    iput v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->h:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->i:Z

    .line 90
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->d:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/d/a;->useCustomHandler()V

    .line 96
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/d/b;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/rome/syncservice/d/b;-><init>(Lcom/alipay/mobile/rome/syncservice/d/a;B)V

    .line 97
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->getInstance()Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/SyncSDKLifecycle;->registerNetInfoListener(Lcom/alipay/mobile/rome/syncsdk/service/INetworkInfoNotifier;)V

    .line 98
    return-void
.end method

.method public static a()Lcom/alipay/mobile/rome/syncservice/d/a;
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->b:Lcom/alipay/mobile/rome/syncservice/d/a;

    if-nez v0, :cond_1

    .line 209
    const-class v1, Lcom/alipay/mobile/rome/syncservice/d/a;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->b:Lcom/alipay/mobile/rome/syncservice/d/a;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/d/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/d/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->b:Lcom/alipay/mobile/rome/syncservice/d/a;

    .line 209
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->b:Lcom/alipay/mobile/rome/syncservice/d/a;

    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(JJI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    invoke-static {p2, p3}, Lcom/alipay/mobile/rome/syncservice/e/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 816
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/d/a;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "recvSyncUplinkAck uplinkMsgItemList is null or size 0"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :goto_0
    return-void

    .line 799
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 800
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 801
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/d/a;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->h:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/d/a;ILjava/util/List;)V
    .locals 6

    .prologue
    .line 511
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "onSyncUplinkAckReceived: recvList is null or 0"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/rome/syncservice/d/c;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/rome/syncservice/d/c;-><init>(I)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onSyncUplinkAckReceived: recv size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sequence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->b(Lcom/alipay/mobile/rome/syncservice/d/c;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSyncUplinkAckReceived exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/d/a;Lcom/alipay/mobile/rome/syncservice/d/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/c;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/d/a;Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncservice/d/a;->b(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/d/a;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/rome/syncservice/d/a;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->i:Z

    return-void
.end method

.method private a(Lcom/alipay/mobile/rome/syncservice/d/c;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/rome/syncservice/d/c;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "batchSendSyncUplinkMsg: uplinkMsgItemList is null or empty!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    if-eqz p1, :cond_1

    .line 355
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->i:Z

    if-nez v0, :cond_3

    .line 356
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "batchSendSyncUplinkMsg: network is not available!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "send: uplinkMsgItemList is null or empty!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_1

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "send: seqKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    iget v1, p1, Lcom/alipay/mobile/rome/syncservice/d/c;->a:I

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSync5001Msg(ILjava/util/List;)V

    :goto_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->h:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->d:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a()Lcom/alipay/mobile/rome/syncservice/sync/b;

    iget v0, p1, Lcom/alipay/mobile/rome/syncservice/d/c;->a:I

    invoke-static {v0, p2}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(ILjava/util/List;)V

    goto :goto_1
.end method

.method private a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 275
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "uplinkMsg uplinkMsgItem is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "uplinkMsg userId is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-wide v0, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    iget-wide v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->expireTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "uplinkMsg msg is expired!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;Z)V

    goto :goto_0

    .line 293
    :cond_3
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uplinkMsg: sendImmediate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->g:Z

    if-eqz v0, :cond_6

    .line 296
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->i:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncUnplinkImmediate: network is not available!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_4
    :goto_1
    iget-wide v0, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->expireTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 305
    invoke-static {p1, v4}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;Z)V

    goto :goto_0

    .line 296
    :cond_5
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 299
    :cond_6
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->i:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncUnplinkDelayed: network is not available!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    iget-wide v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->sendTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;Z)V
    .locals 4

    .prologue
    .line 659
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 660
    if-eqz p1, :cond_0

    .line 661
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->expireTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 769
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeSyncUplinkMsg msgId is null, biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :goto_0
    return-void

    .line 774
    :cond_0
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;-><init>()V

    .line 776
    :try_start_0
    const-string/jumbo v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 777
    iput-object p0, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    .line 778
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncservice/e/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    .line 779
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->d:I

    .line 780
    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    .line 781
    iput-object p1, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    .line 783
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 784
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeSyncUplinkMsg Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/d/c;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;-><init>(I)V

    .line 375
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/d/c;Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 572
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "entireAckRecevied: recv size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 591
    return-void

    .line 574
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    .line 575
    if-eqz v0, :cond_2

    .line 576
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 580
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 589
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 573
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 581
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    .line 583
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 584
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncservice/d/a;->c(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    goto :goto_1
.end method

.method private static a(JJ)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 458
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 461
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 463
    add-long v3, p0, p2

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/rome/syncservice/d/a;)Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    return-object v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 760
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 761
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/rome/syncservice/d/a;Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V
    .locals 4

    .prologue
    .line 629
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)J

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "onSyncUplinkCancelled find and will remove it"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/rome/syncservice/d/a;Ljava/util/List;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 384
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "analysizeSyncUplinkList enter totalSize="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Ljava/util/List;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    if-eqz v0, :cond_0

    iget v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->f:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    iget-boolean v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->h:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->d(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "analysizeSyncUplinkList: [Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->d(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    goto :goto_0

    :cond_4
    iget-wide v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    iget-wide v7, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->expireTime:J

    invoke-static {v5, v6, v7, v8}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->b(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    goto :goto_0

    :cond_5
    iget-boolean v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->g:Z

    if-nez v5, :cond_6

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->e:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->expireTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;Z)V

    :cond_7
    rem-int/lit8 v0, v1, 0x5

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto/16 :goto_0
.end method

.method private b(Lcom/alipay/mobile/rome/syncservice/d/c;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/rome/syncservice/d/c;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "entireAckRecevied: sk="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 546
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 563
    return-void

    .line 547
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/d/c;

    .line 550
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "entireAckRecevied: removeMessage sequenceKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 554
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 561
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncservice/d/a;->c(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    .line 560
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V
    .locals 4

    .prologue
    .line 471
    if-nez p1, :cond_1

    .line 472
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "onSyncUplinkExpired: uplinkMsgItem is null "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSyncUplinkExpired: msgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-wide v0, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    iget-wide v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->expireTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)J

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 485
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 487
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 488
    if-eqz v1, :cond_2

    .line 489
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "onSyncUplinkExpired: uplinkMsgItem will be removed"

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 497
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->f:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V
    .locals 8

    .prologue
    .line 598
    if-nez p1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 602
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ackReceivedOf: msgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 605
    iget-object v0, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    .line 606
    iget-wide v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    .line 607
    iget-wide v4, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    .line 608
    iget v6, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->d:I

    .line 611
    iget-boolean v7, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->h:Z

    if-eqz v7, :cond_1

    .line 613
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a(Ljava/lang/String;JJI)J

    goto :goto_0

    .line 621
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncservice/d/a;->d(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    goto :goto_0
.end method

.method private d(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V
    .locals 7

    .prologue
    .line 739
    if-nez p1, :cond_0

    .line 740
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "onSyncUplinkFinished: uplinkMsgItem is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :goto_0
    return-void

    .line 744
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSyncUplinkFinished: msgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback$SyncUpState;->SUCCEED:Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback$SyncUpState;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->biz:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->f(Ljava/lang/String;)Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback$SyncUpState;->SUCCEED:Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback$SyncUpState;

    invoke-interface {v2, v0, v1, v3}, Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback;->onSyncUpResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncUpCallback$SyncUpState;)V

    .line 748
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    iget-object v1, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->c:Ljava/lang/String;

    .line 749
    iget-wide v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    .line 750
    iget-wide v4, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    .line 751
    iget v6, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->d:I

    .line 748
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b(Ljava/lang/String;JJI)J

    .line 753
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 746
    :cond_2
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onSyncUplinkCallback, callback is null[biz:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "][msgId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;Z)Ljava/lang/String;
    .locals 10

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncUplinkMsg syncUpMessage is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v0, "-1"

    .line 266
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncUplinkMsg userId is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "-2"

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 242
    const/16 v0, 0x3e8

    if-lt v2, v0, :cond_1

    const/16 v0, 0x270f

    if-gt v2, v0, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/d/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a(Ljava/lang/String;IJLcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;Z)J

    move-result-wide v6

    .line 249
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    .line 250
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendSyncUplinkMsg: insert to database error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v0, "-3"

    goto :goto_0

    .line 254
    :cond_2
    invoke-static {v6, v7, v3, v4, v2}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(JJI)Ljava/lang/String;

    move-result-object v5

    .line 255
    new-instance v8, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;

    invoke-direct {v8, p1}, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;-><init>(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;)V

    .line 256
    iput-object v5, v8, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->b:Ljava/lang/String;

    .line 257
    iput-wide v6, v8, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->a:J

    .line 258
    iput-object v1, v8, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->c:Ljava/lang/String;

    .line 259
    iput v2, v8, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->d:I

    .line 260
    iput-wide v3, v8, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->e:J

    .line 261
    iget-wide v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;->sendTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v8, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->g:Z

    .line 262
    iput-boolean p2, v8, Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;->h:Z

    .line 263
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendSyncUplinkMsg msgId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, v8}, Lcom/alipay/mobile/rome/syncservice/d/a;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)V

    move-object v0, v5

    .line 266
    goto/16 :goto_0

    .line 261
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected useCustomHandler()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->useCustomHandler()V

    .line 107
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->startThread()V

    .line 110
    :cond_0
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/d/d;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/rome/syncservice/d/d;-><init>(Lcom/alipay/mobile/rome/syncservice/d/a;Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method
