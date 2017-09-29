.class public Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
.super Ljava/lang/Object;
.source "H5EventDispatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5EventDispatcher"

.field private static synthetic a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected static a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    if-nez p0, :cond_0

    .line 103
    const-string/jumbo v0, "H5EventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invalid params, event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 107
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    .line 109
    new-instance p1, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v0, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5BridgeContextImpl;-><init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    const-string/jumbo v0, "H5EventDispatcher"

    const-string/jumbo v2, "invalid action name"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz p1, :cond_2

    .line 116
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    :cond_2
    move v0, v1

    .line 118
    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 123
    :goto_1
    if-nez v0, :cond_5

    .line 128
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    const-string/jumbo v0, "H5EventDispatcher"

    const-string/jumbo v2, "no event target!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_4

    .line 131
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    :cond_4
    move v0, v1

    .line 133
    goto :goto_0

    .line 124
    :cond_5
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    goto :goto_1

    .line 136
    :cond_6
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 137
    const-string/jumbo v0, "H5EventDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "routing event "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 141
    add-int/lit8 v0, v6, -0x1

    move v3, v0

    :goto_2
    if-gez v3, :cond_9

    move v3, v1

    .line 152
    :goto_3
    if-lt v3, v6, :cond_c

    .line 164
    const-string/jumbo v0, "H5EventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] handled by nobody"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_8

    .line 166
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    :cond_8
    move v0, v1

    .line 168
    goto/16 :goto_0

    .line 142
    :cond_9
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 144
    const-string/jumbo v0, "H5EventDispatcher"

    const-string/jumbo v2, "event been canceled on intercept!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_a
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/h5container/api/H5Plugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 148
    goto/16 :goto_0

    .line 141
    :cond_b
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 153
    :cond_c
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 154
    const-string/jumbo v0, "H5EventDispatcher"

    const-string/jumbo v2, "event been canceled on handle!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 155
    goto/16 :goto_0

    .line 158
    :cond_d
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 159
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/h5container/api/H5Plugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    .line 160
    goto/16 :goto_0

    .line 152
    :cond_e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->values()[Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->IO:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->SYNC:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->UI:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_1

    const-string/jumbo v1, "H5EventDispatcher"

    const-string/jumbo v2, "invalid event body!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    if-nez p3, :cond_4

    .line 73
    :cond_0
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 93
    :goto_1
    return-object v0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    const-string/jumbo v1, "H5EventDispatcher"

    const-string/jumbo v2, "invalid event target!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/h5container/api/H5Event;->setTarget(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->a()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_3
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    goto :goto_1

    .line 80
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_2

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendEvent(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 2

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 60
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 57
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 58
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    goto :goto_0
.end method
