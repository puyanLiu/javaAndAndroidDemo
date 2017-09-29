.class public Lanetwork/channel/anet/ANetworkDelegate;
.super Lanetwork/channel/aidl/RemoteNetwork$Stub;
.source "ANetworkDelegate.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;-><init>()V

    .line 19
    const-string/jumbo v0, "ANet.ANetworkDelegate"

    iput-object v0, p0, Lanetwork/channel/anet/ANetworkDelegate;->a:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lanetwork/channel/http/NetworkSdkSetting;->a(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p1, v0}, Lanetwork/channel/anet/ANetworkDelegate;->a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v1

    .line 27
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-interface {v1, v2, v3}, Lanetwork/channel/aidl/ParcelableFuture;->a(J)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lanetwork/channel/entity/RequestConfig;

    sget-object v1, Lanetwork/channel/entity/RequestConfig;->c:Lorg/apache/http/ProtocolVersion;

    invoke-direct {v0, p1, v1}, Lanetwork/channel/entity/RequestConfig;-><init>(Lanetwork/channel/aidl/ParcelableRequest;Lorg/apache/http/ProtocolVersion;)V

    .line 36
    new-instance v1, Lanetwork/channel/anet/ATask;

    invoke-direct {v1, v0, p2}, Lanetwork/channel/anet/ATask;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 37
    invoke-virtual {v1}, Lanetwork/channel/anet/ATask;->a()Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableMsgListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p1}, Lanetwork/channel/persistent/RemoteMessageListenerCenter;->a(Lanetwork/channel/aidl/ParcelableMsgListener;)V

    .line 54
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableMsgListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p1, p2}, Lanetwork/channel/persistent/RemoteMessageListenerCenter;->a(Lanetwork/channel/aidl/ParcelableMsgListener;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final b(Lanetwork/channel/aidl/ParcelableRequest;)V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "ANet.ANetworkDelegate"

    const-string/jumbo v1, "[initPersistentRequest]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lanetwork/channel/entity/RequestConfig;

    sget-object v1, Lanetwork/channel/entity/RequestConfig;->c:Lorg/apache/http/ProtocolVersion;

    invoke-direct {v0, p1, v1}, Lanetwork/channel/entity/RequestConfig;-><init>(Lanetwork/channel/aidl/ParcelableRequest;Lorg/apache/http/ProtocolVersion;)V

    .line 44
    invoke-static {v0}, Lanetwork/channel/persistent/PersistentEngine;->a(Lanetwork/channel/entity/RequestConfig;)V

    .line 45
    return-void
.end method
