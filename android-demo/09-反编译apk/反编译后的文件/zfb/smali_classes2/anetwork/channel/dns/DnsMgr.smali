.class public Lanetwork/channel/dns/DnsMgr;
.super Ljava/lang/Object;
.source "DnsMgr.java"


# static fields
.field private static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lanetwork/channel/dns/DnsMgr$DnsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lanetwork/channel/dns/DnsMgr;->a:Ljava/util/Hashtable;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lanetwork/channel/dns/DnsMgr;->b:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lanetwork/channel/dns/DnsMgr;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Ljava/net/URL;Lanetwork/channel/entity/ConnTypeEnum;Z)Ljava/net/URL;
    .locals 6

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 285
    :goto_0
    return-object p0

    .line 232
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Lanetwork/channel/dns/DnsMgr;->c(Ljava/lang/String;)Lanetwork/channel/dns/DnsMgr$DnsInfo;

    move-result-object v0

    .line 235
    if-nez v0, :cond_1

    .line 237
    invoke-static {p0, v2}, Lanetwork/channel/dns/DnsMgr;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    goto :goto_0

    .line 239
    :cond_1
    iget-object v3, v0, Lanetwork/channel/dns/DnsMgr$DnsInfo;->b:Ljava/lang/String;

    .line 240
    sget-object v1, Lanetwork/channel/entity/ConnTypeEnum;->SPDY:Lanetwork/channel/entity/ConnTypeEnum;

    invoke-virtual {v1, p1}, Lanetwork/channel/entity/ConnTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lanetwork/channel/dns/DnsMgr$DnsInfo;->f:Z

    if-eqz v1, :cond_3

    .line 243
    if-eqz p2, :cond_2

    .line 244
    iget v0, v0, Lanetwork/channel/dns/DnsMgr$DnsInfo;->e:I

    .line 258
    :goto_1
    new-instance v1, Lmtopsdk/common/util/TBSdkLog;

    const-string/jumbo v4, "ANet.DnsMgr"

    invoke-direct {v1, v4}, Lmtopsdk/common/util/TBSdkLog;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "replace dns URL: host="

    invoke-virtual {v1, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v1

    const-string/jumbo v4, ", ip="

    invoke-virtual {v1, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v1

    const-string/jumbo v4, ", port="

    invoke-virtual {v1, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v1

    const-string/jumbo v4, ", connType="

    invoke-virtual {v1, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/common/util/TBSdkLog;->d()V

    .line 267
    if-lez v0, :cond_5

    .line 274
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :goto_2
    move-object p0, v0

    .line 279
    goto :goto_0

    .line 246
    :cond_2
    iget v0, v0, Lanetwork/channel/dns/DnsMgr$DnsInfo;->d:I

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/common/util/StringUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    const/16 v0, 0x1bb

    goto :goto_1

    .line 255
    :cond_4
    iget v0, v0, Lanetwork/channel/dns/DnsMgr$DnsInfo;->c:I

    goto :goto_1

    .line 277
    :cond_5
    :try_start_1
    invoke-static {p0, v2}, Lanetwork/channel/dns/DnsMgr;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string/jumbo v1, "ANet.DnsMgr"

    const-string/jumbo v3, "gen newUrl error."

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :goto_3
    invoke-static {p0, v2}, Lanetwork/channel/dns/DnsMgr;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    goto/16 :goto_0

    .line 282
    :catch_1
    move-exception v0

    .line 283
    const-string/jumbo v1, "ANet.DnsMgr"

    const-string/jumbo v3, "gen newUrl error."

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 298
    sget-object v0, Lanetwork/channel/dns/DnsMgr;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 299
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 301
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int v1, v2, v1

    .line 302
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    const-string/jumbo v1, "ANet.DnsMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mtop hackIp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 305
    :cond_0
    if-eqz v1, :cond_1

    .line 309
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 317
    :cond_1
    :goto_0
    return-object p0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string/jumbo v1, "ANet.DnsMgr"

    const-string/jumbo v2, "gen retUrl error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 80
    const-class v1, Lanetwork/channel/dns/DnsMgr;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lanetwork/channel/dns/DnsMgr;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    monitor-exit v1

    return-void

    .line 83
    :cond_0
    if-nez p0, :cond_1

    .line 84
    :try_start_1
    const-string/jumbo v0, "ANet.DnsMgr"

    const-string/jumbo v2, "DnsMgr init failed. Context is null."

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 87
    :cond_1
    :try_start_2
    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "gw.alicdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "gw1.alicdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "gw2.alicdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "gw3.alicdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "gw4.alicdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "img.taobaocdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "img01.taobaocdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "img02.taobaocdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "img03.taobaocdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "img04.taobaocdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "q.i01.wimg.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "q.i02.wimg.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "q.i03.wimg.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "q.i04.wimg.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "i.mmcdn.cn"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "gtms01.alicdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "wwc.taobaocdn.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "a.tbcdn.cn"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "hws.wapa.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "hws.m.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "api.m.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "api.wapa.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "api.waptest.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "unit.api.m.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "unit.api.wapa.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "unit.api.waptest.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "mclient.alipay.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "mcgw.alipay.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "h5.m.taobao.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    const-string/jumbo v2, "g.tbcdn.cn"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :try_start_3
    invoke-static {}, Lcom/spdu/httpdns/HttpDns;->a()Lcom/spdu/httpdns/HttpDns;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lcom/spdu/httpdns/HttpDns;->a(Landroid/content/Context;)V

    .line 91
    sget-object v2, Lanetwork/channel/dns/DnsMgr;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/spdu/httpdns/HttpDns;->a(Ljava/util/ArrayList;)V

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lanetwork/channel/dns/DnsMgr;->b:Z

    .line 93
    const-string/jumbo v0, "ANet.DnsMgr"

    const-string/jumbo v2, "HttpDns.getInstance().setHosts(hostList)"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lanetwork/channel/dns/DnsMgr;->b:Z

    .line 96
    const-string/jumbo v2, "ANet.DnsMgr"

    const-string/jumbo v3, "init HttpDns failed."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/spdu/httpdns/HttpDns;->a()Lcom/spdu/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/spdu/httpdns/HttpDns;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    sget-object v0, Lanetwork/channel/dns/DnsMgr;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {p0}, Lanetwork/channel/dns/DnsMgr;->c(Ljava/lang/String;)Lanetwork/channel/dns/DnsMgr$DnsInfo;

    move-result-object v1

    .line 129
    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->f:Z

    if-eqz v2, :cond_0

    iget v1, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->d:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-static {p0}, Lanetwork/channel/dns/DnsMgr;->c(Ljava/lang/String;)Lanetwork/channel/dns/DnsMgr$DnsInfo;

    move-result-object v1

    .line 137
    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->f:Z

    if-eqz v2, :cond_0

    iget v1, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->e:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lanetwork/channel/dns/DnsMgr$DnsInfo;
    .locals 1

    .prologue
    .line 149
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lanetwork/channel/dns/DnsMgr;->e(Ljava/lang/String;)Lanetwork/channel/dns/DnsMgr$DnsInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lanetwork/channel/dns/DnsMgr;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 327
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Lanetwork/channel/dns/DnsMgr$DnsInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-static {}, Lcom/spdu/httpdns/HttpDns;->a()Lcom/spdu/httpdns/HttpDns;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/spdu/httpdns/HttpDns;->b(Ljava/lang/String;)Lcom/spdu/httpdns/HttpDnsOrigin;

    move-result-object v2

    .line 169
    if-nez v2, :cond_0

    .line 170
    const-string/jumbo v1, "ANet.DnsMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpDns return HttpDnsOrigin=null for host:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-object v0

    .line 173
    :cond_0
    invoke-virtual {v2}, Lcom/spdu/httpdns/HttpDnsOrigin;->a()Ljava/lang/String;

    move-result-object v3

    .line 174
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 175
    :cond_1
    const-string/jumbo v1, "ANet.DnsMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpDns return ip=null for host:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    const-string/jumbo v2, "ANet.DnsMgr"

    const-string/jumbo v3, "[getHttpDnsInfo] error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    :cond_2
    :try_start_1
    new-instance v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;

    invoke-direct {v1}, Lanetwork/channel/dns/DnsMgr$DnsInfo;-><init>()V

    .line 179
    iput-object v3, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->b:Ljava/lang/String;

    .line 180
    iput-object p0, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->a:Ljava/lang/String;

    .line 182
    invoke-virtual {v2}, Lcom/spdu/httpdns/HttpDnsOrigin;->d()I

    move-result v4

    if-lez v4, :cond_3

    .line 183
    invoke-virtual {v2}, Lcom/spdu/httpdns/HttpDnsOrigin;->d()I

    move-result v4

    iput v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->e:I

    .line 188
    :goto_1
    invoke-virtual {v2}, Lcom/spdu/httpdns/HttpDnsOrigin;->b()I

    move-result v4

    if-lez v4, :cond_4

    .line 189
    invoke-virtual {v2}, Lcom/spdu/httpdns/HttpDnsOrigin;->b()I

    move-result v4

    iput v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->d:I

    .line 194
    :goto_2
    invoke-static {}, Lcom/spdu/httpdns/HttpDns;->a()Lcom/spdu/httpdns/HttpDns;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/spdu/httpdns/HttpDns;->a(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->f:Z

    .line 195
    new-instance v4, Lmtopsdk/common/util/TBSdkLog;

    const-string/jumbo v5, "ANet.DnsMgr"

    invoke-direct {v4, v5}, Lmtopsdk/common/util/TBSdkLog;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "host="

    invoke-virtual {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v4

    const-string/jumbo v5, ", ip="

    invoke-virtual {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    const-string/jumbo v4, ", supportSpdy="

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    iget-boolean v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    const-string/jumbo v4, ", spdyPort="

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    iget v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    const-string/jumbo v4, ", spdySslPort="

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    iget v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    const-string/jumbo v4, ", httpPort="

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    iget v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    const-string/jumbo v4, ", originPort="

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    invoke-virtual {v2}, Lcom/spdu/httpdns/HttpDnsOrigin;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    const-string/jumbo v4, ", securityPort="

    invoke-virtual {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v3

    invoke-virtual {v2}, Lcom/spdu/httpdns/HttpDnsOrigin;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/common/util/TBSdkLog;->d()V

    move-object v0, v1

    .line 212
    goto/16 :goto_0

    .line 185
    :cond_3
    const/4 v4, -0x1

    iput v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->e:I

    goto/16 :goto_1

    .line 191
    :cond_4
    const/4 v4, -0x1

    iput v4, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->d:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
