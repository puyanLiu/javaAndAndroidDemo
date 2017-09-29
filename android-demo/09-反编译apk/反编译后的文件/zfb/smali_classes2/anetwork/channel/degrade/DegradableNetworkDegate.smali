.class public Lanetwork/channel/degrade/DegradableNetworkDegate;
.super Lanetwork/channel/aidl/RemoteNetwork$Stub;
.source "DegradableNetworkDegate.java"


# instance fields
.field a:I

.field b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;-><init>()V

    .line 24
    iput v2, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->a:I

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lanetwork/channel/aidl/RemoteNetwork$Stub;

    iput-object v0, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    .line 28
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    new-instance v1, Lanetwork/channel/http/HttpNetworkDelegate;

    invoke-direct {v1, p1}, Lanetwork/channel/http/HttpNetworkDelegate;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    .line 29
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    const/4 v1, 0x1

    new-instance v2, Lanetwork/channel/anet/ANetworkDelegate;

    invoke-direct {v2, p1}, Lanetwork/channel/anet/ANetworkDelegate;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 30
    return-void
.end method

.method private a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;Z)Lanetwork/channel/degrade/d;
    .locals 5

    .prologue
    .line 119
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "ANet.DegradableNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NetworkType=SPDY; isSsl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    new-instance v2, Lanetwork/channel/degrade/d;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lanetwork/channel/degrade/d;-><init>(B)V

    .line 123
    new-instance v1, Lanetwork/channel/degrade/a;

    invoke-direct {v1, p0, p2, p1, v2}, Lanetwork/channel/degrade/a;-><init>(Lanetwork/channel/degrade/DegradableNetworkDegate;Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/degrade/d;)V

    .line 131
    const/4 v0, 0x0

    .line 133
    :try_start_0
    iget-object v3, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p1, v1}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    iput-object v0, v2, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    .line 138
    return-object v2

    .line 134
    :catch_0
    move-exception v1

    .line 135
    const-string/jumbo v3, "ANet.DegradableNetwork"

    const-string/jumbo v4, "spdy asyncSend failed:"

    invoke-static {v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;ILanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/degrade/d;)Z
    .locals 8

    .prologue
    const/16 v7, -0x7ee

    const/16 v6, -0x7ef

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lmtopsdk/common/util/TBSdkLog;

    const-string/jumbo v3, "ANet.DegradableNetwork"

    invoke-direct {v0, v3}, Lmtopsdk/common/util/TBSdkLog;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u6267\u884c\u964d\u7ea7\u903b\u8f91\uff0cerrorCode="

    invoke-virtual {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v0

    const-string/jumbo v3, ", ip="

    invoke-virtual {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v0

    const-string/jumbo v3, ", port="

    invoke-virtual {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v0

    const-string/jumbo v3, ", url="

    invoke-virtual {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v0

    invoke-virtual {p4}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/common/util/TBSdkLog;->i()V

    .line 156
    invoke-virtual {p4}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v3

    .line 165
    invoke-virtual {p4}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 167
    :try_start_0
    sget-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_0_RTT:Lanetwork/channel/ssl/constant/SslMode;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/SslMode;->intValue()I

    move-result v0

    invoke-virtual {p4}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v4

    invoke-interface {v4}, Lanetwork/channel/aidl/ssl/ParcelableSslCallback;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v0, v4, :cond_5

    move v0, v1

    .line 173
    :goto_0
    if-eqz v0, :cond_9

    if-nez v3, :cond_9

    .line 175
    invoke-static {p2, p3}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lanetwork/channel/aidl/ParcelableRequest;->l()V

    :cond_0
    if-eq p1, v7, :cond_1

    if-ne p1, v6, :cond_7

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v5, "SPDY-SSL\u76f4\u63a5\u964d\u7ea7\uff0c\u4e0d\u5141\u8bb8\u6062\u590d"

    invoke-static {v0, v5}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lanetwork/channel/degrade/util/DegradeHelper;->b(Ljava/lang/String;Z)V

    :cond_2
    if-nez v3, :cond_3

    :try_start_1
    new-instance v0, Lanetwork/channel/degrade/b;

    invoke-direct {v0, p0, p5, v4}, Lanetwork/channel/degrade/b;-><init>(Lanetwork/channel/degrade/DegradableNetworkDegate;Lanetwork/channel/aidl/ParcelableNetworkListener;Ljava/lang/String;)V

    move-object p5, v0

    :cond_3
    invoke-virtual {p4}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/net/URL;Z)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v3, :cond_8

    :cond_4
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v2, "SPDY-SSL\u964d\u7ea7\u5230HTT\u8bf7\u6c42"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4, p5}, Lanetwork/channel/degrade/DegradableNetworkDegate;->b(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    :goto_2
    invoke-virtual {p6, v0}, Lanetwork/channel/degrade/d;->a(Lanetwork/channel/aidl/ParcelableFuture;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_3
    return v1

    :cond_5
    move v0, v2

    .line 167
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string/jumbo v4, "ANet.DegradableNetwork"

    const-string/jumbo v5, "getParcelableSslCallback failed:"

    invoke-static {v4, v5, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v3, v2

    .line 175
    goto :goto_1

    :cond_8
    :try_start_2
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v2, "SPDY-SSL\u964d\u7ea7\u5230SPDY\u8bf7\u6c42"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p4, p5, v0}, Lanetwork/channel/degrade/DegradableNetworkDegate;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;Z)Lanetwork/channel/degrade/d;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "ANet.DegradableNetwork"

    const-string/jumbo v3, "spdy asyncSend failed:"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 177
    :cond_9
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v4, "SPDY\u964d\u7ea7\u5230HTTP\u8bf7\u6c42"

    invoke-static {v0, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eq p1, v7, :cond_a

    if-ne p1, v6, :cond_c

    :cond_a
    move v0, v1

    :goto_4
    if-eqz v0, :cond_b

    const-string/jumbo v5, "ANet.DegradableNetwork"

    const-string/jumbo v6, "SPDY\u76f4\u63a5\u964d\u7ea7\uff0c\u4e0d\u5141\u8bb8\u6062\u590d"

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/lang/String;Z)V

    :cond_b
    if-eqz v0, :cond_d

    :goto_5
    invoke-direct {p0, p4, p5}, Lanetwork/channel/degrade/DegradableNetworkDegate;->b(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    invoke-virtual {p6, v0}, Lanetwork/channel/degrade/d;->a(Lanetwork/channel/aidl/ParcelableFuture;)V

    goto :goto_3

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    new-instance v0, Lanetwork/channel/degrade/c;

    invoke-direct {v0, p0, p5, v3, v4}, Lanetwork/channel/degrade/c;-><init>(Lanetwork/channel/degrade/DegradableNetworkDegate;Lanetwork/channel/aidl/ParcelableNetworkListener;ZLjava/lang/String;)V

    move-object p5, v0

    goto :goto_5
.end method

.method static synthetic a(Lanetwork/channel/degrade/DegradableNetworkDegate;ILjava/lang/String;ILanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/degrade/d;)Z
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p6}, Lanetwork/channel/degrade/DegradableNetworkDegate;->a(ILjava/lang/String;ILanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/degrade/d;)Z

    move-result v0

    return v0
.end method

.method private b(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 4

    .prologue
    .line 104
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v1, "NetworkType=HTTP"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    const-string/jumbo v2, "ANet.DegradableNetwork"

    const-string/jumbo v3, "http asyncSend failed:"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lanetwork/channel/degrade/DegradableNetworkDegate;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v1

    .line 37
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-interface {v1, v2, v3}, Lanetwork/channel/aidl/ParcelableFuture;->a(J)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v2, "[asyncSend]1.4.5"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    :try_start_0
    sget-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_0_RTT:Lanetwork/channel/ssl/constant/SslMode;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/SslMode;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v2

    invoke-interface {v2}, Lanetwork/channel/aidl/ssl/ParcelableSslCallback;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 57
    :goto_0
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2, v0}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/net/URL;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v1, "SPDY to HTTP"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1, p2}, Lanetwork/channel/degrade/DegradableNetworkDegate;->b(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    .line 87
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string/jumbo v2, "ANet.DegradableNetwork"

    const-string/jumbo v3, "getParcelableSslCallback failed:"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2, v0}, Lanetwork/channel/degrade/util/DegradeHelper;->b(Ljava/net/URL;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    .line 66
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->i()Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 68
    :try_start_1
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->l()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, v1}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/net/URL;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 76
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v2, "SPDY-SSL to SPDY"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1, p2, v1}, Lanetwork/channel/degrade/DegradableNetworkDegate;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;Z)Lanetwork/channel/degrade/d;

    move-result-object v0

    goto :goto_1

    .line 69
    :catch_1
    move-exception v2

    .line 70
    const-string/jumbo v3, "ANet.DegradableNetwork"

    const-string/jumbo v4, "getParcelableSslCallback failed:"

    invoke-static {v3, v4, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 80
    :cond_4
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v1, "SPDY-SSL to HTTP"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lanetwork/channel/degrade/DegradableNetworkDegate;->b(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Lanetwork/channel/degrade/DegradableNetworkDegate;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;Z)Lanetwork/channel/degrade/d;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableMsgListener;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableMsgListener;)V

    .line 328
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableMsgListener;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->a(Lanetwork/channel/aidl/ParcelableMsgListener;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public final b(Lanetwork/channel/aidl/ParcelableRequest;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableNetworkDegate;->b:[Lanetwork/channel/aidl/RemoteNetwork$Stub;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->b(Lanetwork/channel/aidl/ParcelableRequest;)V

    .line 317
    return-void
.end method
