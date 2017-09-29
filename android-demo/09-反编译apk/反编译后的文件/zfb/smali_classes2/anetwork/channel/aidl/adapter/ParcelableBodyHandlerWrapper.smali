.class public Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;
.super Lanetwork/channel/aidl/ParcelableBodyHandler$Stub;
.source "ParcelableBodyHandlerWrapper.java"


# instance fields
.field private a:Lanetwork/channel/IBodyHandler;


# direct methods
.method public constructor <init>(Lanetwork/channel/IBodyHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableBodyHandler$Stub;-><init>()V

    .line 13
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->a:Lanetwork/channel/IBodyHandler;

    .line 14
    return-void
.end method


# virtual methods
.method public final a([B)I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->a:Lanetwork/channel/IBodyHandler;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->a:Lanetwork/channel/IBodyHandler;

    invoke-interface {v0, p1}, Lanetwork/channel/IBodyHandler;->read([B)I

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->a:Lanetwork/channel/IBodyHandler;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->a:Lanetwork/channel/IBodyHandler;

    invoke-interface {v0}, Lanetwork/channel/IBodyHandler;->isCompleted()Z

    move-result v0

    .line 28
    const-string/jumbo v1, "ANet.ParcelableBodyHandlerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isCompleted:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->a:Lanetwork/channel/IBodyHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
