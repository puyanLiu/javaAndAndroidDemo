.class public Lanetwork/channel/ssl/SslCertcbImpl;
.super Ljava/lang/Object;
.source "SslCertcbImpl.java"

# interfaces
.implements Lorg/android/spdy/SslCertcb;


# instance fields
.field private a:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

.field private b:Lanetwork/channel/anet/ICertificationValidate;


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ssl/ParcelableSslCallback;Lanetwork/channel/anet/ICertificationValidate;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lanetwork/channel/ssl/SslCertcbImpl;->a:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    .line 41
    iput-object p2, p0, Lanetwork/channel/ssl/SslCertcbImpl;->b:Lanetwork/channel/anet/ICertificationValidate;

    .line 42
    return-void
.end method


# virtual methods
.method public getPerformance(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SslPermData;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public getPublicKey(Lorg/android/spdy/SpdySession;)Lorg/android/spdy/SslPublickey;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lanetwork/channel/ssl/SslCertcbImpl;->a:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    if-nez v1, :cond_0

    .line 70
    const-string/jumbo v1, "ANet.SslCertcbImpl"

    const-string/jumbo v2, "[The ISslCallback is null.]"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-object v0

    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/ssl/SslCertcbImpl;->a:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    invoke-interface {v1}, Lanetwork/channel/aidl/ssl/ParcelableSslCallback;->b()Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_1
    if-eqz v1, :cond_1

    .line 81
    new-instance v0, Lorg/android/spdy/SslPublickey;

    invoke-direct {v0}, Lorg/android/spdy/SslPublickey;-><init>()V

    .line 82
    iget-object v2, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->a:[B

    iput-object v2, v0, Lorg/android/spdy/SslPublickey;->module:[B

    .line 83
    iget-object v2, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->b:[B

    iput-object v2, v0, Lorg/android/spdy/SslPublickey;->exponent:[B

    .line 84
    iget v2, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->c:I

    iput v2, v0, Lorg/android/spdy/SslPublickey;->seqnum:I

    .line 85
    iget v1, v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;->d:I

    iput v1, v0, Lorg/android/spdy/SslPublickey;->error:I

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    const-string/jumbo v2, "ANet.SslCertcbImpl"

    const-string/jumbo v3, "[call remote interface ParcelableSslCallback.getPublicKey() error.]"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1

    .line 87
    :cond_1
    const-string/jumbo v1, "ANet.SslCertcbImpl"

    const-string/jumbo v2, "[The ParcelableSslPublickey is null.]"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putCertificate(Lorg/android/spdy/SpdySession;[BI)I
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lanetwork/channel/ssl/SslCertcbImpl;->a:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    if-nez v0, :cond_0

    .line 48
    const-string/jumbo v0, "ANet.SslCertcbImpl"

    const-string/jumbo v1, "[The ParcelableSslCallback is null.]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lanetwork/channel/ssl/constant/CheckCert;->NOT_USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/CheckCert;->intValue()I

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/ssl/SslCertcbImpl;->a:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    invoke-interface {v0, p2, p3}, Lanetwork/channel/aidl/ssl/ParcelableSslCallback;->a([BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "ANet.SslCertcbImpl"

    const-string/jumbo v2, "[call remote interface ParcelableSslCallback error.]"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    sget-object v0, Lanetwork/channel/ssl/constant/CheckCert;->NOT_USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/CheckCert;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SslCertcbImpl [sslCallback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lanetwork/channel/ssl/SslCertcbImpl;->a:Lanetwork/channel/aidl/ssl/ParcelableSslCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getPublicKey()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lanetwork/channel/ssl/SslCertcbImpl;->getPublicKey(Lorg/android/spdy/SpdySession;)Lorg/android/spdy/SslPublickey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getClass()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hashCode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
