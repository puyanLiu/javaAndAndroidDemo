.class public Lanetwork/channel/ssl/SslCallbackImpl;
.super Ljava/lang/Object;
.source "SslCallbackImpl.java"

# interfaces
.implements Lanetwork/channel/ssl/ISslCallback;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_0_RTT:Lanetwork/channel/ssl/constant/SslMode;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/SslMode;->intValue()I

    move-result v0

    iput v0, p0, Lanetwork/channel/ssl/SslCallbackImpl;->a:I

    .line 33
    invoke-static {p1}, Lanetwork/channel/http/NetworkSdkSetting;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Ljava/security/cert/X509Certificate;)Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, -0x1

    const/4 v3, 0x1

    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz p1, :cond_5

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 89
    :try_start_1
    const-string/jumbo v1, "{"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 90
    const-string/jumbo v1, "}"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 91
    if-ne v1, v9, :cond_0

    .line 92
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 94
    :cond_0
    if-eq v5, v9, :cond_4

    .line 95
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 98
    if-eqz v1, :cond_2

    .line 99
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 100
    aget-object v5, v1, v0

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 101
    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 102
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const-string/jumbo v6, "ANet.SslCallbackImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "kv:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :goto_3
    return-object v2

    .line 108
    :cond_2
    :try_start_3
    const-string/jumbo v0, "modulus"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "publicExponent"

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :try_start_4
    const-string/jumbo v4, "seqnum"

    invoke-static {v4}, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v4

    long-to-int v4, v4

    .line 116
    :goto_4
    if-ne v4, v9, :cond_3

    move v4, v3

    .line 119
    :cond_3
    :try_start_5
    const-string/jumbo v5, "ANet.SslCallbackImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "modulus:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " publicExponet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " seqnum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ltz v5, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_6

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 125
    :goto_5
    new-instance v1, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    invoke-static {v0}, Lanetwork/channel/util/HexUtil;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v3}, Lanetwork/channel/util/HexUtil;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v0, v3, v4}, Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;-><init>([B[BI)V

    move-object v0, v1

    :goto_6
    move-object v2, v0

    .line 127
    goto/16 :goto_2

    .line 114
    :catch_1
    move-exception v4

    const-string/jumbo v4, "ANet.SslCallbackImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "seqnum:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "seqnum"

    invoke-static {v6}, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto/16 :goto_4

    .line 128
    :cond_4
    const-string/jumbo v0, "ANet.SslCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pk content error:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_5
    const-string/jumbo v0, "ANet.SslCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "certificate="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    move-object v3, v1

    goto :goto_5

    :cond_7
    move-object v0, v2

    goto :goto_6
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lanetwork/channel/ssl/SslCallbackImpl;->a:I

    return v0
.end method

.method public final a([BI)I
    .locals 3

    .prologue
    .line 49
    const-string/jumbo v1, "ANet.SslCallbackImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[putCertificate]\u8bc1\u4e66\u4e0b\u53d1 seqnum:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " cert:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 51
    :cond_0
    sget-object v0, Lanetwork/channel/ssl/constant/CheckCert;->NOT_USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/CheckCert;->intValue()I

    move-result v0

    .line 63
    :goto_1
    return v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p1}, Lanetwork/channel/ssl/CertificationValiditor;->a([B)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    const-string/jumbo v0, "ANet.SslCallbackImpl"

    const-string/jumbo v1, "\u8bc1\u4e66\u94fe\u68c0\u9a8c\u6210\u529f\uff0c\u5199\u5165seqnum,cert"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lanetwork/channel/ssl/CertificationValiditor;->b([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    const-string/jumbo v0, "seqnum"

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lanetwork/channel/util/NetworkSharePerferenceMgr;->a(Ljava/lang/String;J)Z

    .line 63
    :cond_3
    sget-object v0, Lanetwork/channel/ssl/constant/CheckCert;->USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/CheckCert;->intValue()I

    move-result v0

    goto :goto_1

    .line 60
    :cond_4
    const-string/jumbo v0, "ANet.SslCallbackImpl"

    const-string/jumbo v1, "\u8bc1\u4e66\u94fe\u68c0\u9a8c\u5931\u8d25"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lanetwork/channel/ssl/constant/CheckCert;->NOT_USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    invoke-virtual {v0}, Lanetwork/channel/ssl/constant/CheckCert;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public final b()Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lanetwork/channel/ssl/CertificationValiditor;->a()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lanetwork/channel/ssl/SslCallbackImpl;->a(Ljava/security/cert/X509Certificate;)Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v1, "ANet.SslCallbackImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "certToPublicKey pubkey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " try to getDefault pubKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lanetwork/channel/ssl/DefaultPublicKey;->a()Lanetwork/channel/ssl/DefaultPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/ssl/DefaultPublicKey;->b()Lanetwork/channel/aidl/ssl/ParcelableSslPublickey;

    move-result-object v0

    .line 80
    :cond_0
    const-string/jumbo v1, "ANet.SslCallbackImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getPublicKey]\u8bc1\u4e66\u63d0\u53d6 pubkey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object v0
.end method
