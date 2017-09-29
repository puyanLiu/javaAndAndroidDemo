.class public interface abstract Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;
.super Ljava/lang/Object;
.source "MainProcGeneralListenService.java"


# static fields
.field public static final ACTIVED:B = 0x2t

.field public static final SHUTDOWND:B = 0x1t


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

.method public abstract notifyAmnetLifeChanged(B)V
.end method

.method public abstract notifyInitOk()V
.end method

.method public abstract panic(ILjava/lang/String;)V
.end method

.method public abstract report(Ljava/lang/String;D)V
.end method

.method public abstract restrict(ILjava/lang/String;)V
.end method

.method public abstract touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
