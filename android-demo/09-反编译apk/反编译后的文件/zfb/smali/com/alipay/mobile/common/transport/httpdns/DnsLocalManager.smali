.class public interface abstract Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
.super Ljava/lang/Object;
.source "DnsLocalManager.java"


# virtual methods
.method public abstract deleteIpByHost(Ljava/lang/String;)Z
.end method

.method public abstract deleteLocalIpsByHost(Ljava/lang/String;)Z
.end method

.method public abstract getAllIPFromFile()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastUpdateTime()J
.end method

.method public abstract putIPInfo2Cache(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.end method

.method public abstract queryLocalIPsByHost(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.end method

.method public abstract reloadDns()V
.end method

.method public abstract saveLastUpdateTime()V
.end method

.method public abstract storeIP2Local(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
.end method

.method public abstract storeIp2Local(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateIp2CacheAndFile(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation
.end method
