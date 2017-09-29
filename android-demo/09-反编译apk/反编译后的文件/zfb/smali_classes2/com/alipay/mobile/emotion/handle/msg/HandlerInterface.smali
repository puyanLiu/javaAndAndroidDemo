.class public interface abstract Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;
.super Ljava/lang/Object;
.source "HandlerInterface.java"


# virtual methods
.method public abstract getCategory()Ljava/lang/String;
.end method

.method public abstract onMessage(Ljava/util/Map;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method
