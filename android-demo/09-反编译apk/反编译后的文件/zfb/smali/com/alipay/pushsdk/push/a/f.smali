.class public final Lcom/alipay/pushsdk/push/a/f;
.super Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;
.source "AmnetEventListener.java"


# instance fields
.field private a:Lcom/alipay/pushsdk/push/b/a;

.field private b:Lcom/alipay/pushsdk/push/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/a/e;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/f;->b:Lcom/alipay/pushsdk/push/a/e;

    .line 213
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/b/a;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/f;->a:Lcom/alipay/pushsdk/push/b/a;

    .line 205
    return-void
.end method

.method public final change(I)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "amnet state change to:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/pushsdk/push/a/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 41
    sput p1, Lcom/alipay/pushsdk/push/a/h;->a:I

    .line 42
    const-string/jumbo v0, "connected"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public final collect(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
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
    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->d()V

    .line 55
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "appStatus"

    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AlipayVisibleHelper;->getStateVisibleAlipay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/pushsdk/push/a/a;->c:Lcom/alipay/pushsdk/push/m;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/h/c;->a(Lcom/alipay/pushsdk/push/m;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "add Old Push Params pushJson is null"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "push init sent this lis Hash:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 61
    :cond_1
    return-object p1

    .line 59
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oldPush params:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "testPushInit"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final listenSessionInvalid()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->d()V

    .line 95
    return-void
.end method

.method public final notifyInitOk()V
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "notifiyInitOk"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/f;->a:Lcom/alipay/pushsdk/push/b/a;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/f;->a:Lcom/alipay/pushsdk/push/b/a;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/f;->b:Lcom/alipay/pushsdk/push/a/e;

    invoke-interface {v0, v1}, Lcom/alipay/pushsdk/push/b/a;->a(Lcom/alipay/pushsdk/push/connection/i;)V

    .line 104
    :cond_0
    return-void
.end method

.method public final notifyReconnect()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/amnetproxy/AmnetLinkStrategy;->notifyUpdateAllDnsInfo()V

    .line 153
    invoke-static {}, Lcom/alipay/pushsdk/util/a;->a()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->reconnect()V

    .line 155
    return-void
.end method

.method public final notifyUpdateConfigInfo(Ljava/util/Map;)V
    .locals 3
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
    .line 159
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string/jumbo v0, "android_network_core"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final notifyUpdateDnsInfo(Ljava/util/List;)V
    .locals 13
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
    const/4 v3, 0x0

    .line 168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->updateIp2CacheAndFile(Ljava/util/Map;)V

    goto :goto_0

    .line 173
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;

    .line 175
    iget-object v8, v1, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;->dnsAddressInfoList:Ljava/util/List;

    .line 176
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    new-instance v9, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v9}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>()V

    .line 181
    invoke-virtual {v9, v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 182
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;

    iget-object v0, v0, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;->ip:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIp(Ljava/lang/String;)V

    .line 183
    iget v0, v1, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;->ttl:I

    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V

    .line 185
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move v2, v3

    .line 186
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    .line 192
    iput-object v10, v9, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 193
    iget-object v0, v1, Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;->domain:Ljava/lang/String;

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 187
    :cond_4
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;

    .line 188
    new-instance v11, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-direct {v11}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;-><init>()V

    aput-object v11, v10, v2

    .line 189
    aget-object v11, v10, v2

    iget-object v12, v0, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;->ip:Ljava/lang/String;

    iput-object v12, v11, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->ip:Ljava/lang/String;

    .line 190
    aget-object v11, v10, v2

    iget v0, v0, Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;->port:I

    iput v0, v11, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->port:I

    .line 186
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method public final panic(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "err:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " inf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/f;->a:Lcom/alipay/pushsdk/push/b/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/f;->a:Lcom/alipay/pushsdk/push/b/a;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/f;->b:Lcom/alipay/pushsdk/push/a/e;

    invoke-interface {v0, v1}, Lcom/alipay/pushsdk/push/b/a;->b(Lcom/alipay/pushsdk/push/connection/i;)V

    .line 115
    :cond_0
    return-void
.end method

.method public final report(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "report key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " val:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public final restrict(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restrict delay:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " inf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public final touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "touch ipLocal:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "touch portLocal:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "touch ipRemote:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "touch portRemote:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 147
    return-void
.end method
