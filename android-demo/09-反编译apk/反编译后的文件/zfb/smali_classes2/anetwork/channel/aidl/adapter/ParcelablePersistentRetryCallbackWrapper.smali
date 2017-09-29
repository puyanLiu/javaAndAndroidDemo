.class public Lanetwork/channel/aidl/adapter/ParcelablePersistentRetryCallbackWrapper;
.super Lanetwork/channel/aidl/ParcelablePersistentRetryHandler$Stub;
.source "ParcelablePersistentRetryCallbackWrapper.java"


# instance fields
.field private a:Lanetwork/channel/persistent/IRetryCallback;


# direct methods
.method public constructor <init>(Lanetwork/channel/persistent/IRetryCallback;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelablePersistentRetryHandler$Stub;-><init>()V

    .line 15
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelablePersistentRetryCallbackWrapper;->a:Lanetwork/channel/persistent/IRetryCallback;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelablePersistentRetryCallbackWrapper;->a:Lanetwork/channel/persistent/IRetryCallback;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelablePersistentRetryCallbackWrapper;->a:Lanetwork/channel/persistent/IRetryCallback;

    invoke-interface {v0}, Lanetwork/channel/persistent/IRetryCallback;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string/jumbo v0, "ParcelablePersistentRetryCallbackWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "retrycallback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelablePersistentRetryCallbackWrapper;->a:Lanetwork/channel/persistent/IRetryCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method
