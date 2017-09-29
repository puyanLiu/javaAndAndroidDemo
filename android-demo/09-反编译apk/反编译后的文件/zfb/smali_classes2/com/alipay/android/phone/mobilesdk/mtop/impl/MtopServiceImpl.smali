.class public Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;
.super Lcom/alipay/android/phone/mobilesdk/mtop/MtopService;
.source "MtopServiceImpl.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "2013081300000797"


# instance fields
.field private hasSession:Z

.field private havanaId:Ljava/lang/String;

.field private final isAppKeySet:Z

.field private useAlipaySession:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopService;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->isAppKeySet:Z

    .line 43
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->hasSession:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->useAlipaySession:Z

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->havanaId:Ljava/lang/String;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->useAlipaySession:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->havanaId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->hasSession:Z

    return p1
.end method

.method private static buildResponseWrapper(Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;Ljava/lang/Object;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OutputDO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;",
            "TOutputDO;)",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper",
            "<TOutputDO;>;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;-><init>()V

    .line 157
    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;->setResponseStatus(Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;)V

    .line 158
    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;->setOutputDO(Ljava/lang/Object;)V

    .line 159
    return-object v0
.end method

.method static handleMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<TOutputDO;>;)",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper",
            "<TOutputDO;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p0, :cond_0

    .line 272
    :goto_0
    return-object v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    invoke-static {v0, p1}, Lmtopsdk/mtop/util/MtopConvert;->jsonToOutputDO([BLjava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SUCCESS:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->buildResponseWrapper(Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;Ljava/lang/Object;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SESSIONINVALID:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->buildResponseWrapper(Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;Ljava/lang/Object;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 267
    :cond_3
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SYSTEMERROR:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->buildResponseWrapper(Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;Ljava/lang/Object;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_4
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->BUSSINESSERROR:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->buildResponseWrapper(Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;Ljava/lang/Object;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public MtopInit(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 56
    invoke-static {p2, p3}, Lmtopsdk/mtop/intf/Mtop;->setAppKeyIndex(II)V

    .line 57
    invoke-static {p1}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->logSwitch(Z)Lmtopsdk/mtop/intf/Mtop;

    .line 58
    return-void
.end method

.method public declared-synchronized asyncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputDO::",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(TInputDO;",
            "Ljava/lang/Class",
            "<TOutputDO;>;",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback",
            "<TOutputDO;>;)Z"
        }
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v9}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->asyncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;Ljava/lang/String;Lmtopsdk/mtop/domain/ProtocolEnum;ZLmtopsdk/mtop/domain/MethodEnum;ILjava/util/Map;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized asyncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;Ljava/lang/String;Lmtopsdk/mtop/domain/ProtocolEnum;ZLmtopsdk/mtop/domain/MethodEnum;ILjava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputDO::",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(TInputDO;",
            "Ljava/lang/Class",
            "<TOutputDO;>;",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback",
            "<TOutputDO;>;",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/domain/ProtocolEnum;",
            "Z",
            "Lmtopsdk/mtop/domain/MethodEnum;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 174
    monitor-enter p0

    if-nez p1, :cond_0

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 177
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    .line 179
    if-eqz p5, :cond_1

    .line 180
    invoke-virtual {v1, p5}, Lmtopsdk/mtop/intf/MtopBuilder;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 182
    :cond_1
    if-ne p6, v0, :cond_2

    .line 183
    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->useCache()Lmtopsdk/mtop/intf/MtopBuilder;

    .line 185
    :cond_2
    if-eqz p7, :cond_3

    .line 186
    invoke-virtual {v1, p7}, Lmtopsdk/mtop/intf/MtopBuilder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 188
    :cond_3
    if-lez p8, :cond_4

    .line 189
    invoke-virtual {v1, p8}, Lmtopsdk/mtop/intf/MtopBuilder;->retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 191
    :cond_4
    if-eqz p9, :cond_5

    .line 192
    invoke-virtual {v1, p9}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 195
    :cond_5
    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->hasSession:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->useAlipaySession:Z

    if-eqz v2, :cond_6

    .line 196
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;

    invoke-direct {v3, p0, v1, p3, p2}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;-><init>(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Lmtopsdk/mtop/intf/MtopBuilder;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;Ljava/lang/Class;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_6
    :try_start_2
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;

    invoke-direct {v2, p0, p3, p2, v1}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;-><init>(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;Ljava/lang/Class;Lmtopsdk/mtop/intf/MtopBuilder;)V

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isHasSession()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->hasSession:Z

    return v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->logout()Lmtopsdk/mtop/intf/Mtop;

    .line 354
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->MtopInit(Landroid/content/Context;II)V

    .line 52
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/Mtop;->unInit()Lmtopsdk/mtop/intf/Mtop;

    .line 63
    return-void
.end method

.method public registerSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmtopsdk/mtop/intf/Mtop;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    .line 331
    return-void
.end method

.method public registerSessionInfo()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->registerSessionInfo(Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;)V

    .line 278
    return-void
.end method

.method public registerSessionInfo(Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;-><init>(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Lcom/alipay/android/phone/mobilesdk/mtop/RegisterSessionListener;)V

    .line 283
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 284
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setHasSession(Z)V
    .locals 0

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->hasSession:Z

    .line 336
    return-void
.end method

.method public setHavanaId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->havanaId:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setUseAlipaySession(Z)V
    .locals 0

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->useAlipaySession:Z

    .line 349
    return-void
.end method

.method public switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    .line 68
    return-void
.end method

.method public declared-synchronized syncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputDO::",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(TInputDO;",
            "Ljava/lang/Class",
            "<TOutputDO;>;)",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper",
            "<TOutputDO;>;"
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->syncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Ljava/lang/String;Lmtopsdk/mtop/domain/ProtocolEnum;ZLmtopsdk/mtop/domain/MethodEnum;ILjava/util/Map;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized syncRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Ljava/lang/String;Lmtopsdk/mtop/domain/ProtocolEnum;ZLmtopsdk/mtop/domain/MethodEnum;ILjava/util/Map;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputDO::",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "OutputDO:",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            ">(TInputDO;",
            "Ljava/lang/Class",
            "<TOutputDO;>;",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/domain/ProtocolEnum;",
            "Z",
            "Lmtopsdk/mtop/domain/MethodEnum;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper",
            "<TOutputDO;>;"
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    if-nez p1, :cond_0

    .line 125
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDo can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    .line 128
    if-eqz p4, :cond_1

    .line 129
    invoke-virtual {v1, p4}, Lmtopsdk/mtop/intf/MtopBuilder;->protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 131
    :cond_1
    const/4 v0, 0x1

    if-ne p5, v0, :cond_2

    .line 132
    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->useCache()Lmtopsdk/mtop/intf/MtopBuilder;

    .line 134
    :cond_2
    if-eqz p6, :cond_3

    .line 135
    invoke-virtual {v1, p6}, Lmtopsdk/mtop/intf/MtopBuilder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 137
    :cond_3
    if-lez p7, :cond_4

    .line 138
    invoke-virtual {v1, p7}, Lmtopsdk/mtop/intf/MtopBuilder;->retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 140
    :cond_4
    if-eqz p8, :cond_5

    .line 141
    invoke-virtual {v1, p8}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 143
    :cond_5
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->hasSession:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->useAlipaySession:Z

    if-eqz v0, :cond_6

    .line 144
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->registerSessionInfo()V

    .line 146
    :cond_6
    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->useAlipaySession:Z

    if-eqz v2, :cond_7

    .line 148
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->registerSessionInfo()V

    .line 149
    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 152
    :cond_7
    invoke-static {v0, p2}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->handleMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized syncRequest(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    .line 73
    new-instance v1, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v1}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 74
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 75
    invoke-virtual {v1, p3}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 76
    invoke-virtual {v1, p2}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 79
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {v1, p5}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->hasSession:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->useAlipaySession:Z

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->registerSessionInfo()V

    .line 87
    :cond_1
    invoke-virtual {v0, v1, p6}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    .line 88
    if-eqz p4, :cond_2

    .line 89
    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->useWua()Lmtopsdk/mtop/intf/MtopBuilder;

    .line 92
    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, p7}, Lmtopsdk/mtop/intf/MtopBuilder;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 96
    :cond_3
    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->useAlipaySession:Z

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->registerSessionInfo()V

    .line 99
    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 101
    :cond_4
    const/4 v1, 0x0

    .line 102
    if-eqz v0, :cond_5

    .line 104
    :try_start_1
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    .line 105
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :cond_5
    move-object v0, v1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
