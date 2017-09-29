.class public interface abstract Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;
.super Ljava/lang/Object;
.source "AmnetGeneralEventManager.java"


# virtual methods
.method public abstract addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
.end method

.method public abstract getLatestConnState()I
.end method

.method public abstract notifyCollectInitInfo(Ljava/util/Map;)V
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

.method public abstract notifyConnStateChange(I)V
.end method

.method public abstract notifyError(ILjava/lang/String;)V
.end method

.method public abstract notifyInitOk()V
.end method

.method public abstract notifyReconnect()V
.end method

.method public abstract notifyReport(Ljava/lang/String;D)V
.end method

.method public abstract notifyReportIpPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyRestrict(ILjava/lang/String;)V
.end method

.method public abstract notifySessionInvalid()V
.end method

.method public abstract notifyUpdateConfig(Ljava/util/Map;)V
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

.method public abstract removeGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
.end method
