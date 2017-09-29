.class public interface abstract Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;
.super Ljava/lang/Object;
.source "AmnetGeneralListener.java"


# virtual methods
.method public abstract change(I)V
.end method

.method public abstract collect(Ljava/util/Map;)Ljava/util/Map;
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
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract listenSessionInvalid()V
.end method

.method public abstract notifyInitOk()V
.end method

.method public abstract notifyReconnect()V
.end method

.method public abstract notifyUpdateConfigInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyUpdateDnsInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract panic(ILjava/lang/String;)V
.end method

.method public abstract report(Ljava/lang/String;D)V
.end method

.method public abstract restrict(ILjava/lang/String;)V
.end method

.method public abstract touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
