.class public interface abstract Lcom/alipay/mobile/common/transport/httpdns/DnsService;
.super Ljava/lang/Object;
.source "DnsService.java"


# virtual methods
.method public abstract getIpInfoByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.end method

.method public abstract getIpInfosByHost(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.end method

.method public abstract refreshAll()V
.end method

.method public abstract refreshIPListOnly()V
.end method

.method public abstract setErrorByHost(Ljava/lang/String;)V
.end method
