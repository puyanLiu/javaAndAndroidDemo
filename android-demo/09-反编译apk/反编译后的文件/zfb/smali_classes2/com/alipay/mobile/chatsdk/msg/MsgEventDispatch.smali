.class public Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;
.super Ljava/lang/Object;
.source "MsgEventDispatch.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile executorService:Ljava/util/concurrent/ExecutorService;

.field private static volatile instance:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;


# instance fields
.field private followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    const-class v1, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$ChatDispatchThreadFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$ChatDispatchThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    .line 48
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->instance:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private submit(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 213
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "submit:[ msg dispatch task ][ task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "submit:[ newSingleThreadExecutor restart]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$ChatDispatchThreadFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$ChatDispatchThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 224
    :cond_1
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 225
    return-void
.end method


# virtual methods
.method public dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchAddOrUpdate:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-nez p2, :cond_0

    .line 103
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchAddOrUpdate error : [ followAccountInfo is null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$3;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 112
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->submit(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public dispatchClearMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchClearMsg:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-nez p2, :cond_0

    .line 123
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchClearMsg error : [ followObjectId is null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$4;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->submit(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public dispatchDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchDelete:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$5;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->submit(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public dispatchDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchDeleteShowItem:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$6;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->submit(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public dispatchFeedsReaded(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchFeedsReaded:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$8;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$8;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->submit(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public dispatchOnReload(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "dispatchDelete:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$7;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;Ljava/util/List;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->submit(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public dispathMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispathMsg:[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$1;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->submit(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public dispathMsgStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispathMsgStatus:[ appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ localMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->submit(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public stopDispatch()V
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "stopDispatch:[ executorService shutdown ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 236
    return-void
.end method
