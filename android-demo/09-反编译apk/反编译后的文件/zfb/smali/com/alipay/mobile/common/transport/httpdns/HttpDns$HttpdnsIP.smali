.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
.super Ljava/lang/Object;
.source "HttpDns.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field public ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    .line 918
    iput-wide p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    .line 919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    .line 920
    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIpEntries()[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    return-object v0
.end method

.method public getIps()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1006
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1007
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1008
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1014
    :goto_1
    return-object v0

    .line 1013
    :cond_1
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "getIps return null..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 990
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    return-wide v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 972
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    return-wide v0
.end method

.method public isTimeOut()Z
    .locals 4

    .prologue
    .line 942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 943
    const/4 v0, 0x1

    .line 945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeOut(J)Z
    .locals 4

    .prologue
    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 931
    const/4 v0, 0x1

    .line 933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    .line 964
    return-void
.end method

.method public setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 1023
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .prologue
    .line 999
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    .line 1000
    return-void
.end method

.method public setTtl(J)V
    .locals 0

    .prologue
    .line 981
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    .line 982
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HttpdnsIP{ip=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ipEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
