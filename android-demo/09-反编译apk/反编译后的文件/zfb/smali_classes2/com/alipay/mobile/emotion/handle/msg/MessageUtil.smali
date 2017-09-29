.class public Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;
.super Ljava/lang/Object;
.source "MessageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->sendLocalBrodcast(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 16
    return-void
.end method

.method public static sendMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 10
    return-void
.end method

.method public static sendMessageDelay(Landroid/os/Handler;Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;J)V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 33
    invoke-static {p1}, Lcom/alipay/mobile/emotion/handle/msg/LocalBroadcastFactory;->sendLocalBrodcast(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil$1;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil$1;-><init>(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
