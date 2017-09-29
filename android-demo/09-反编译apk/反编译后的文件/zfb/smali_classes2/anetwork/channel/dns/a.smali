.class final Lanetwork/channel/dns/a;
.super Ljava/lang/Object;
.source "DNSOptimize.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lanetwork/channel/dns/a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 27
    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_1

    .line 47
    :cond_0
    return-void

    .line 31
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lanetwork/channel/dns/a;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 32
    iget-object v0, p0, Lanetwork/channel/dns/a;->a:[Ljava/lang/String;

    aget-object v4, v0, v6

    .line 33
    const/4 v7, 0x0

    .line 35
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_1
    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 31
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v5

    .line 37
    const-string/jumbo v8, "domain dns parse failed."

    .line 38
    const-string/jumbo v0, "ANet.DNSOptimize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0xc9

    const-string/jumbo v3, ""

    invoke-static {v8, v5}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v7

    goto :goto_1
.end method
