.class public Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;
.super Ljava/lang/Object;
.source "H5BridgeContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# static fields
.field private static synthetic d:[I


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Bridge;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 28
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->c:Ljava/lang/String;

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->b:Ljava/lang/String;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 37
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "-1"

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    const-string/jumbo v1, "H5BridgeContextImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "client id not specified "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->b:Ljava/lang/String;

    const-string/jumbo v3, "native_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    const-string/jumbo v1, "H5BridgeContextImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ignore native fired event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v2

    .line 49
    const-string/jumbo v3, "callback"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 50
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v2, :cond_3

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :cond_3
    const-string/jumbo v1, "H5BridgeContextImpl"

    const-string/jumbo v2, "[FATAL ERROR] in sendBack() bridge is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->values()[Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result v0

    return v0
.end method

.method public sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a(Lcom/alibaba/fastjson/JSONObject;Z)Z

    move-result v0

    return v0
.end method

.method public sendBridgeResultWithCallbackKept(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->sendBridgeResultWithCallbackKept(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z
    .locals 5

    .prologue
    .line 94
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 95
    :goto_0
    const-string/jumbo v1, "H5BridgeContextImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendError "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [action] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 97
    const-string/jumbo v3, "message"

    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "none error!"

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v1, "error"

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    if-ne p2, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 102
    const-string/jumbo v3, "funcName"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_JSAPI_RESULT_ERROR:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 107
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :pswitch_0
    const-string/jumbo v1, "not implemented!"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "invalid parameter!"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "unknown error!"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v1, "forbidden!"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;->a:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "H5BridgeContextImpl"

    const-string/jumbo v1, "[FATAL ERROR] in sendToWeb() bridge is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
