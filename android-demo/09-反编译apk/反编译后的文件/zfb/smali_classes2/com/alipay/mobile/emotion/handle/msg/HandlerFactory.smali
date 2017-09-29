.class public Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;
.super Ljava/lang/Object;
.source "HandlerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory$InstanceHolder;->access$0()Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->getInstance()Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;

    move-result-object v0

    invoke-interface {p2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->regist(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;

    .line 22
    return-object p0
.end method

.method public unregistAll()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->getInstance()Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->unregistAll()V

    .line 37
    return-void
.end method

.method public unregistByCategory(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->getInstance()Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->unregistByCategory(Ljava/lang/String;)V

    .line 29
    return-void
.end method
