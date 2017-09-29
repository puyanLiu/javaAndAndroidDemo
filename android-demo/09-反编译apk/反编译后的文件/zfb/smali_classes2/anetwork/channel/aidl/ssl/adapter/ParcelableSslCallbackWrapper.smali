.class public Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;
.super Lanetwork/channel/aidl/ssl/ParcelableSslCallback$Stub;
.source "ParcelableSslCallbackWrapper.java"


# instance fields
.field private a:Lanetwork/channel/ssl/ISslCallback;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Lanetwork/channel/ssl/ISslCallback;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lanetwork/channel/aidl/ssl/ParcelableSslCallback$Stub;-><init>()V

    .line 17
    sget-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_NOT_ENCRYPT:Lanetwork/channel/ssl/constant/SslMode;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/SslMode;->intValue()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->b:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->c:Z

    .line 22
    iput-object p1, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->a:Lanetwork/channel/ssl/ISslCallback;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->c:Z

    if-eqz v0, :cond_0

    .line 33
    iget v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->b:I

    .line 41
    :goto_0
    return v0

    .line 34
    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->a:Lanetwork/channel/ssl/ISslCallback;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->a:Lanetwork/channel/ssl/ISslCallback;

    invoke-interface {v0}, Lanetwork/channel/ssl/ISslCallback;->a()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->b:I

    .line 41
    :goto_1
    iget v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->b:I

    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo v0, "ANet.ParcelableSslCallbackWrapper"

    const-string/jumbo v1, "[The ISslCallback is null.]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_NOT_ENCRYPT:Lanetwork/channel/ssl/constant/SslMode;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/SslMode;->intValue()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->b:I

    goto :goto_1
.end method

.method public final a([BI)I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->a:Lanetwork/channel/ssl/ISslCallback;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->a:Lanetwork/channel/ssl/ISslCallback;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/ssl/ISslCallback;->a([BI)I

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 58
    :cond_0
    const-string/jumbo v0, "ANet.ParcelableSslCallbackWrapper"

    const-string/jumbo v1, "[The ISslCallback is null.]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lanetwork/channel/ssl/constant/CheckCert;->NOT_USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/CheckCert;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 46
    iput p1, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->b:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->c:Z

    .line 48
    return-void
.end method

.method public final b()Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->a:Lanetwork/channel/ssl/ISslCallback;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lanetwork/channel/aidl/ssl/adapter/ParcelableSslCallbackWrapper;->a:Lanetwork/channel/ssl/ISslCallback;

    invoke-interface {v0}, Lanetwork/channel/ssl/ISslCallback;->b()Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-string/jumbo v0, "ANet.ParcelableSslCallbackWrapper"

    const-string/jumbo v1, "[The ISslCallback is null.]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method
