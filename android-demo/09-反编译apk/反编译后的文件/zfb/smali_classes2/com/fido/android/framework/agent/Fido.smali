.class public Lcom/fido/android/framework/agent/Fido;
.super Ljava/lang/Object;
.source "Fido.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mFido:Lcom/fido/android/framework/agent/Fido;

.field private static mResultTypeValues:[Lcom/fido/android/framework/agent/api/ResultType;


# instance fields
.field private cancelLock:Ljava/lang/Object;

.field private mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

.field private mFidoReconnectedHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private volatile processInProgress:Z

.field private volatile processIsCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/fido/android/framework/agent/api/ResultType;->values()[Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    sput-object v0, Lcom/fido/android/framework/agent/Fido;->mResultTypeValues:[Lcom/fido/android/framework/agent/api/ResultType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 43
    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processIsCanceled:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    .line 585
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;

    .line 587
    new-instance v0, Lcom/fido/android/framework/agent/Fido$1;

    invoke-direct {v0, p0}, Lcom/fido/android/framework/agent/Fido$1;-><init>(Lcom/fido/android/framework/agent/Fido;)V

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoReconnectedHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public static Instance()Lcom/fido/android/framework/agent/Fido;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/fido/android/framework/agent/Fido;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/Fido;-><init>()V

    sput-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    .line 53
    :cond_0
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fido/android/framework/agent/Fido;)Lcom/fido/android/framework/agent/Fido$Connection;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido;->fido()Lcom/fido/android/framework/agent/Fido$Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fido/android/framework/agent/Fido;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/fido/android/framework/agent/Fido;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    return-object v0
.end method

.method static synthetic access$300()[Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mResultTypeValues:[Lcom/fido/android/framework/agent/api/ResultType;

    return-object v0
.end method

.method private fido()Lcom/fido/android/framework/agent/Fido$Connection;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 606
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido$Connection;->access$100(Lcom/fido/android/framework/agent/Fido$Connection;)Lcom/fido/android/framework/service/IFidoService;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido$Connection;->access$100(Lcom/fido/android/framework/agent/Fido$Connection;)Lcom/fido/android/framework/service/IFidoService;

    move-result-object v0

    invoke-interface {v0}, Lcom/fido/android/framework/service/IFidoService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_2

    .line 608
    :cond_1
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-nez v0, :cond_4

    .line 613
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_0
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    sget-object v2, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fido/android/framework/agent/Fido;->mFidoReconnectedHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Lcom/fido/android/framework/agent/Fido;->init(Landroid/content/Context;Landroid/os/Handler;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    sget-object v2, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v0, v2}, Lcom/fido/android/framework/agent/api/ResultType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 616
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string/jumbo v2, "Fido not connected"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 618
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 623
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-nez v0, :cond_4

    .line 624
    new-instance v0, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string/jumbo v1, "Fido not connected"

    invoke-direct {v0, v1, v4}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v0

    .line 627
    :cond_4
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    return-object v0
.end method


# virtual methods
.method public NotifyResponse(Ljava/lang/String;Lcom/fido/android/framework/agent/ProcessCallbacks;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 512
    if-nez p1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 515
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 516
    new-instance v0, Lcom/fido/android/framework/agent/Fido$NotifyTask;

    invoke-direct {v0, p0, v5}, Lcom/fido/android/framework/agent/Fido$NotifyTask;-><init>(Lcom/fido/android/framework/agent/Fido;Lcom/fido/android/framework/agent/Fido$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/fido/android/framework/agent/Fido$NotifyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 521
    :cond_1
    new-instance v0, Lcom/fido/android/framework/agent/Fido$NotifyTask;

    invoke-direct {v0, p0, v5}, Lcom/fido/android/framework/agent/Fido$NotifyTask;-><init>(Lcom/fido/android/framework/agent/Fido;Lcom/fido/android/framework/agent/Fido$1;)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/fido/android/framework/agent/Fido$NotifyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public cancelProcess()V
    .locals 3

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    :try_start_1
    iget-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 484
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    if-eqz v0, :cond_0

    .line 486
    :try_start_2
    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 487
    new-instance v1, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-direct {v1}, Lcom/fido/android/framework/agent/api/AgentAPI;-><init>()V

    .line 488
    sget-object v2, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->Cancel:Lcom/fido/android/framework/agent/api/AgentAPI$OpType;

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fido/android/framework/agent/api/AgentAPI;->Op:Ljava/lang/String;

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido;->fido()Lcom/fido/android/framework/agent/Fido$Connection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/fido/android/framework/agent/Fido$Connection;->access$900(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;

    .line 503
    :goto_0
    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 502
    :catch_0
    move-exception v0

    goto :goto_0

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_2 .. :try_end_2} :catch_1

    .line 495
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processIsCanceled:Z

    .line 496
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_4 .. :try_end_4} :catch_1

    .line 503
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getMFACInfo()Lcom/fido/android/framework/agent/api/MfacOut;
    .locals 5

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 569
    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 570
    new-instance v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/api/AgentAPI;-><init>()V

    .line 571
    sget-object v3, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->MFAC:Lcom/fido/android/framework/agent/api/AgentAPI$OpType;

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Op:Ljava/lang/String;

    .line 572
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 573
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido;->fido()Lcom/fido/android/framework/agent/Fido$Connection;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/fido/android/framework/agent/Fido$Connection;->access$900(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    .line 576
    sget-object v4, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    if-ne v0, v4, :cond_0

    .line 577
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v3, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fido/android/framework/agent/api/AgentAPI;

    .line 578
    iget-object v3, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Out:Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_0

    .line 579
    iget-object v0, v0, Lcom/fido/android/framework/agent/api/AgentAPI;->Out:Lcom/google/gson/JsonObject;

    const-class v1, Lcom/fido/android/framework/agent/api/MfacOut;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fido/android/framework/agent/api/MfacOut;

    .line 582
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 326
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 327
    sput-object p1, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    .line 335
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-nez v0, :cond_3

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    const-class v1, Lcom/fido/android/framework/service/IFidoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/fido/android/framework/Version;->checkServiceVersion(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 342
    new-instance v0, Ljava/lang/EnumConstantNotPresentException;

    const-string/jumbo v1, "service version returned illegal state"

    invoke-direct {v0, v2, v1}, Ljava/lang/EnumConstantNotPresentException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    .line 331
    sput-object p1, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 339
    :pswitch_0
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    .line 361
    :goto_1
    return-object v0

    .line 340
    :pswitch_1
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NOT_COMPATIBLE:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    .line 346
    :pswitch_2
    :try_start_0
    new-instance v1, Lcom/fido/android/framework/agent/Fido$Connection;

    sget-object v2, Lcom/fido/android/framework/agent/Fido;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lcom/fido/android/framework/agent/Fido$Connection;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/fido/android/framework/agent/Fido$1;)V

    .line 347
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/fido/android/framework/agent/Fido$Connection;->access$600(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    .line 351
    :cond_2
    iput-object v1, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    .line 352
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_0
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    sget-object v0, Lcom/fido/android/framework/agent/Fido;->mFido:Lcom/fido/android/framework/agent/Fido;

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    .line 356
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    goto :goto_1

    .line 338
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public process(Lcom/fido/android/framework/agent/api/OstpIn;Ljava/lang/String;Ljava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 403
    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 404
    new-instance v2, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-direct {v2}, Lcom/fido/android/framework/agent/api/AgentAPI;-><init>()V

    .line 405
    sget-object v0, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->OSTP:Lcom/fido/android/framework/agent/api/AgentAPI$OpType;

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/api/AgentAPI$OpType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/fido/android/framework/agent/api/AgentAPI;->Op:Ljava/lang/String;

    .line 406
    iput-object p2, v2, Lcom/fido/android/framework/agent/api/AgentAPI;->Origin:Ljava/lang/String;

    .line 407
    new-instance v0, Lcom/fido/android/framework/agent/api/OstpIn;

    invoke-direct {v0}, Lcom/fido/android/framework/agent/api/OstpIn;-><init>()V

    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v3, p1, Lcom/fido/android/framework/agent/api/OstpIn;->request:Ljava/lang/String;

    iput-object v3, v0, Lcom/fido/android/framework/agent/api/OstpIn;->request:Ljava/lang/String;

    .line 410
    iget-boolean v3, p1, Lcom/fido/android/framework/agent/api/OstpIn;->checkPolicyOnly:Z

    iput-boolean v3, v0, Lcom/fido/android/framework/agent/api/OstpIn;->checkPolicyOnly:Z

    .line 411
    iget-object v3, p1, Lcom/fido/android/framework/agent/api/OstpIn;->requestParams:Ljava/lang/String;

    iput-object v3, v0, Lcom/fido/android/framework/agent/api/OstpIn;->requestParams:Ljava/lang/String;

    .line 412
    iget-boolean v3, p1, Lcom/fido/android/framework/agent/api/OstpIn;->deferredCommit:Z

    iput-boolean v3, v0, Lcom/fido/android/framework/agent/api/OstpIn;->deferredCommit:Z

    .line 414
    :cond_0
    iput-object p3, v2, Lcom/fido/android/framework/agent/api/AgentAPI;->ServerInfo:Ljava/lang/String;

    .line 415
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    iput-object v0, v2, Lcom/fido/android/framework/agent/api/AgentAPI;->In:Lcom/google/gson/JsonObject;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->CANCELED:Lcom/fido/android/framework/agent/api/ResultType;

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 424
    :try_start_1
    iget-boolean v3, p0, Lcom/fido/android/framework/agent/Fido;->processIsCanceled:Z

    if-eqz v3, :cond_1

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processIsCanceled:Z

    .line 426
    new-instance v0, Lcom/fido/android/framework/agent/Fido$Response;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/fido/android/framework/agent/Fido$Response;-><init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 437
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 439
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    :goto_0
    return-object v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 429
    :cond_1
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 430
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 431
    :try_start_4
    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido;->fido()Lcom/fido/android/framework/agent/Fido$Connection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fido/android/framework/agent/Fido$Connection;->access$900(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_4
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    .line 437
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 439
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 441
    new-instance v1, Lcom/fido/android/framework/agent/Fido$Response;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0, v4}, Lcom/fido/android/framework/agent/Fido$Response;-><init>(Lcom/fido/android/framework/agent/api/ResultType;Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    move-object v0, v1

    goto :goto_0

    .line 430
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 440
    :catch_0
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 437
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    const/4 v2, 0x0

    :try_start_8
    iput-boolean v2, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 439
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 434
    :catch_1
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 439
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public processJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-static {}, Lcom/fido/android/framework/types/JsonObjectAdapter;->GsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 450
    new-instance v3, Lcom/fido/android/framework/agent/api/AgentAPI;

    invoke-direct {v3}, Lcom/fido/android/framework/agent/api/AgentAPI;-><init>()V

    .line 452
    :try_start_0
    iget-object v4, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 453
    :try_start_1
    iget-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processIsCanceled:Z

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processIsCanceled:Z

    .line 455
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->CANCELED:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v0, v3, Lcom/fido/android/framework/agent/api/AgentAPI;->Result:Lcom/fido/android/framework/agent/api/ResultType;

    .line 456
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 468
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 470
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    :goto_0
    return-object v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 458
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 459
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 460
    :try_start_4
    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido;->fido()Lcom/fido/android/framework/agent/Fido$Connection;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/fido/android/framework/agent/Fido$Connection;->access$900(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_4
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 468
    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 470
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 472
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 459
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v4

    throw v0
    :try_end_6
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 462
    :catch_0
    move-exception v0

    :try_start_7
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v0, v3, Lcom/fido/android/framework/agent/api/AgentAPI;->Result:Lcom/fido/android/framework/agent/api/ResultType;

    .line 463
    const/4 v0, 0x1

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 468
    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 470
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    .line 465
    :catch_1
    move-exception v0

    :try_start_9
    sget-object v0, Lcom/fido/android/framework/agent/api/ResultType;->NOT_INSTALLED:Lcom/fido/android/framework/agent/api/ResultType;

    iput-object v0, v3, Lcom/fido/android/framework/agent/api/AgentAPI;->Result:Lcom/fido/android/framework/agent/api/ResultType;

    .line 466
    const/4 v0, 0x1

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 468
    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 470
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v2

    throw v0

    .line 471
    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido;->cancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    const/4 v2, 0x0

    :try_start_b
    iput-boolean v2, p0, Lcom/fido/android/framework/agent/Fido;->processInProgress:Z

    .line 470
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    invoke-static {v0}, Lcom/fido/android/framework/agent/Fido$Connection;->access$700(Lcom/fido/android/framework/agent/Fido$Connection;)V

    .line 371
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido;->mFidoConnection:Lcom/fido/android/framework/agent/Fido$Connection;

    .line 372
    return-void
.end method
