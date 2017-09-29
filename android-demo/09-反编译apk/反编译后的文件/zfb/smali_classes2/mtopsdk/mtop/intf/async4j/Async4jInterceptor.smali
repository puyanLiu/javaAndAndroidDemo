.class public Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;
.super Lmtopsdk/mtop/common/DefaultMtopCallback;
.source "Async4jInterceptor.java"


# static fields
.field public static final ASYNC4J_HEADER_KEY:Ljava/lang/String; = "m-async"

.field public static final ASYNC4J_REQUEST_MTOP:Ljava/lang/String; = "11"

.field public static final ASYNC4J_REQUEST_POLL:Ljava/lang/String; = "12"

.field public static final ASYNC4J_REQUEST_TRADE:Ljava/lang/String; = "10"

.field public static final ASYNC4J_RESPONSE_POLL:I = 0x16

.field public static final ASYNC4J_RESPONSE_PUSH:I = 0x15

.field public static final ASYNC4J_RESPONSE_SUCCESS:I = 0x14

.field private static final DEFAULT_TIME_INTERVAL:I = 0x7d0

.field private static final MAX_POLL_COUNT:I = 0x5


# instance fields
.field private callback:Lmtopsdk/mtop/common/DefaultMtopCallback;

.field private cancel:Z

.field private count:I

.field private finished:Z

.field private handler:Landroid/os/Handler;

.field private originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

.field private runnable:Ljava/lang/Runnable;

.field private taskId:Ljava/lang/String;

.field private ttid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    .line 40
    iput-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->cancel:Z

    .line 42
    iput-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->finished:Z

    .line 52
    iput v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->handler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor$1;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor$1;-><init>(Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;)V

    iput-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->startPolling()V

    return-void
.end method

.method private callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->finished:Z

    .line 175
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callback:Lmtopsdk/mtop/common/DefaultMtopCallback;

    invoke-virtual {v0, p1, p2}, Lmtopsdk/mtop/common/DefaultMtopCallback;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method private onFailure(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method private onSuccess(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    .line 80
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    const-string/jumbo v3, "m-async"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 90
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 104
    :pswitch_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 92
    :pswitch_1
    iget v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    .line 93
    invoke-direct {p0, v2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->scheduleNextPolling(Lmtopsdk/mtop/domain/MtopResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->setResponseAsync4jInternalError(Lmtopsdk/mtop/common/MtopFinishEvent;)V

    .line 95
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->setResponseAsync4jInternalError(Lmtopsdk/mtop/common/MtopFinishEvent;)V

    .line 112
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 100
    :pswitch_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callbackOnFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scheduleNextPolling(Lmtopsdk/mtop/domain/MtopResponse;)Z
    .locals 5

    .prologue
    .line 121
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "rtId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->taskId:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "tryTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 125
    const-string/jumbo v1, "tkStartTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 127
    if-lez v2, :cond_1

    .line 128
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 130
    :goto_1
    iget v3, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    if-gt v3, v2, :cond_0

    iget-object v2, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->taskId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_2
    return v0

    .line 127
    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    .line 128
    :cond_2
    const-wide/16 v0, 0x7d0

    goto :goto_1

    .line 134
    :cond_3
    iget-object v2, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private setResponseAsync4jInternalError(Lmtopsdk/mtop/common/MtopFinishEvent;)V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 163
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v1}, Lmtopsdk/mtop/domain/MtopResponse;-><init>()V

    .line 165
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "ANDROID_SYS_ASYNC4J_INTERNAL_ERROR"

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "\u4ea4\u6613\u5f02\u6b65\u5316\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v1}, Lmtopsdk/mtop/common/MtopFinishEvent;->setMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 171
    return-void
.end method

.method private startPolling()V
    .locals 5

    .prologue
    .line 140
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 141
    iget-object v1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 144
    iget-object v1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedSession()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 146
    const-string/jumbo v1, "{\"rtId\":\"%s\",\"count\":\"%s\"}"

    .line 147
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->taskId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "m-async"

    .line 151
    const-string/jumbo v2, "12"

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/4 v1, 0x0

    invoke-static {v1}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->ttid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v3}, Lmtopsdk/mtop/intf/MtopBuilder;->headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 157
    invoke-virtual {v0, p0}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 158
    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    .line 159
    return-void
.end method


# virtual methods
.method public cancelPolling()V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->finished:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->cancel:Z

    .line 181
    iget-object v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->cancel:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->onSuccess(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->onFailure(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCallback(Lmtopsdk/mtop/common/DefaultMtopCallback;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->callback:Lmtopsdk/mtop/common/DefaultMtopCallback;

    .line 195
    return-void
.end method

.method public setOriginalRequest(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->originalRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 187
    return-void
.end method

.method public setTtid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lmtopsdk/mtop/intf/async4j/Async4jInterceptor;->ttid:Ljava/lang/String;

    .line 191
    return-void
.end method
