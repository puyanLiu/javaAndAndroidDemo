.class public interface abstract Lcom/alipay/mobile/common/transportext/amnet/Linkage;
.super Ljava/lang/Object;
.source "Linkage.java"


# virtual methods
.method public abstract change(I)V
.end method

.method public abstract collect(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract command(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract establish()V
.end method

.method public abstract panic(ILjava/lang/String;)V
.end method

.method public abstract reactivate()V
.end method

.method public abstract report(Ljava/lang/String;D)V
.end method

.method public abstract restrict(ILjava/lang/String;)V
.end method

.method public abstract separate(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;)V
.end method

.method public abstract touch(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;)V
.end method
