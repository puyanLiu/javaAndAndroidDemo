.class public Lanetwork/channel/http/HttpNetworkDelegate;
.super Lanetwork/channel/aidl/RemoteNetwork$Stub;
.source "HttpNetworkDelegate.java"


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;-><init>()V

    .line 28
    invoke-static {p1}, Lanetwork/channel/http/NetworkSdkSetting;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private static b(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/http/HttpTask;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lanetwork/channel/entity/RequestConfig;

    sget-object v1, Lanetwork/channel/entity/RequestConfig;->b:Lorg/apache/http/ProtocolVersion;

    invoke-direct {v0, p0, v1}, Lanetwork/channel/entity/RequestConfig;-><init>(Lanetwork/channel/aidl/ParcelableRequest;Lorg/apache/http/ProtocolVersion;)V

    .line 43
    new-instance v1, Lanetwork/channel/http/HttpTask;

    invoke-direct {v1, v0, p1}, Lanetwork/channel/http/HttpTask;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 44
    return-object v1
.end method


# virtual methods
.method public final a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lanetwork/channel/http/HttpNetworkDelegate;->b(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/http/HttpTask;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lanetwork/channel/http/HttpTask;->a()Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lanetwork/channel/http/HttpNetworkDelegate;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lanetwork/channel/http/ThreadPoolExecutorFactory;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/http/HttpNetworkDelegate;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    :cond_0
    invoke-static {p1, p2}, Lanetwork/channel/http/HttpNetworkDelegate;->b(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/http/HttpTask;

    move-result-object v1

    .line 56
    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v2, p0, Lanetwork/channel/http/HttpNetworkDelegate;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    new-instance v1, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;

    invoke-direct {v1, v0}, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;-><init>(Ljava/util/concurrent/Future;)V

    .line 64
    return-object v1

    .line 59
    :catch_0
    move-exception v1

    .line 60
    const-string/jumbo v2, "ANet.HttpNetworkDelegate"

    const-string/jumbo v3, "submit task error:"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableMsgListener;)V
    .locals 0

    .prologue
    .line 84
    invoke-static {p1}, Lanetwork/channel/persistent/RemoteMessageListenerCenter;->a(Lanetwork/channel/aidl/ParcelableMsgListener;)V

    .line 85
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableMsgListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-static {p1, p2}, Lanetwork/channel/persistent/RemoteMessageListenerCenter;->a(Lanetwork/channel/aidl/ParcelableMsgListener;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public final b(Lanetwork/channel/aidl/ParcelableRequest;)V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "ANet.HttpNetworkDelegate"

    const-string/jumbo v1, "[http\u534f\u8bae\u6682\u65f6\u4e0d\u8d70\u957f\u94fe\uff0c\u53ea\u6709SPDY\u534f\u8bae\u624d\u4f1a\u89e6\u53d1\u957f\u94fe]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lanetwork/channel/entity/RequestConfig;

    sget-object v1, Lanetwork/channel/entity/RequestConfig;->b:Lorg/apache/http/ProtocolVersion;

    invoke-direct {v0, p1, v1}, Lanetwork/channel/entity/RequestConfig;-><init>(Lanetwork/channel/aidl/ParcelableRequest;Lorg/apache/http/ProtocolVersion;)V

    .line 71
    invoke-static {v0}, Lanetwork/channel/persistent/PersistentEngine;->a(Lanetwork/channel/entity/RequestConfig;)V

    .line 72
    return-void
.end method
