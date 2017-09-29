.class public Lanetwork/channel/degrade/util/DegradeHelper;
.super Ljava/lang/Object;
.source "DegradeHelper.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lanetwork/channel/degrade/util/b;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lanetwork/channel/degrade/util/b;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->a:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->b:Ljava/util/HashMap;

    .line 42
    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sput-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->c:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-void
.end method

.method static synthetic a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
    .locals 0

    .prologue
    .line 13
    sput-object p0, Lanetwork/channel/degrade/util/DegradeHelper;->c:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lanetwork/channel/degrade/util/a;

    invoke-direct {v0}, Lanetwork/channel/degrade/util/a;-><init>()V

    invoke-static {v0}, Lanetwork/channel/monitor/Monitor;->a(Lanetwork/channel/monitor/INetworkStatusListener;)V

    .line 61
    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    const-class v1, Lanetwork/channel/degrade/util/DegradeHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit v1

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 155
    const-class v1, Lanetwork/channel/degrade/util/DegradeHelper;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ANet.DegradableNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[saveSpdyDegradeCache] key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " allowRecover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->a:Ljava/util/HashMap;

    new-instance v2, Lanetwork/channel/degrade/util/b;

    invoke-direct {v2, p1}, Lanetwork/channel/degrade/util/b;-><init>(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit v1

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/net/URL;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_0

    move v0, v1

    .line 116
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-static {p0, p1}, Lanetwork/channel/degrade/util/DegradeHelper;->c(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v3

    .line 100
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/degrade/util/b;

    invoke-virtual {v0}, Lanetwork/channel/degrade/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string/jumbo v0, "ANet.DegradableNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Spdy \u964d\u7ea7\u6062\u590d key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {v3}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/lang/String;)V

    .line 110
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/dns/DnsMgr;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 111
    goto :goto_0

    :cond_2
    move v0, v2

    .line 105
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    move v0, v2

    .line 116
    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 177
    const-class v1, Lanetwork/channel/degrade/util/DegradeHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 178
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v1

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    const-class v1, Lanetwork/channel/degrade/util/DegradeHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit v1

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 162
    const-class v1, Lanetwork/channel/degrade/util/DegradeHelper;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ANet.DegradableNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[saveSpdySslDegradeCache] key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " allowRecover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->b:Ljava/util/HashMap;

    new-instance v2, Lanetwork/channel/degrade/util/b;

    invoke-direct {v2, p1}, Lanetwork/channel/degrade/util/b;-><init>(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit v1

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/net/URL;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    if-nez p1, :cond_0

    move v0, v1

    .line 146
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-static {p0, p1}, Lanetwork/channel/degrade/util/DegradeHelper;->c(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v3

    .line 131
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/degrade/util/b;

    invoke-virtual {v0}, Lanetwork/channel/degrade/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const-string/jumbo v0, "ANet.DegradableNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SpdySsl \u964d\u7ea7\u6062\u590d key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v3}, Lanetwork/channel/degrade/util/DegradeHelper;->b(Ljava/lang/String;)V

    .line 141
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/dns/DnsMgr;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 142
    goto :goto_0

    :cond_2
    move v0, v2

    .line 136
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    move v0, v2

    .line 146
    goto :goto_0
.end method

.method static synthetic c()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lanetwork/channel/degrade/util/DegradeHelper;->c:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method private static c(Ljava/net/URL;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    const-string/jumbo v0, ""

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanetwork/channel/dns/DnsMgr;->c(Ljava/lang/String;)Lanetwork/channel/dns/DnsMgr$DnsInfo;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->f:Z

    if-eqz v2, :cond_0

    .line 71
    if-eqz p1, :cond_1

    .line 72
    iget-object v0, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->b:Ljava/lang/String;

    iget v1, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->e:I

    invoke-static {v0, v1}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iget-object v0, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->b:Ljava/lang/String;

    iget v1, v1, Lanetwork/channel/dns/DnsMgr$DnsInfo;->d:I

    invoke-static {v0, v1}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
