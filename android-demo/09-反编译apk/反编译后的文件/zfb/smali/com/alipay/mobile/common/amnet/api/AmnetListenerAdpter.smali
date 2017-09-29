.class public Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;
.super Ljava/lang/Object;
.source "AmnetListenerAdpter.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;
.implements Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public change(I)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public collect(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
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

    .prologue
    .line 43
    return-object p1
.end method

.method public listenSessionInvalid()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public notifyInitOk()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public notifyReconnect()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public notifyUpdateConfigInfo(Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 79
    return-void
.end method

.method public notifyUpdateDnsInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public panic(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public recycle(BLjava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public report(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public restrict(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public tell(BJII)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
