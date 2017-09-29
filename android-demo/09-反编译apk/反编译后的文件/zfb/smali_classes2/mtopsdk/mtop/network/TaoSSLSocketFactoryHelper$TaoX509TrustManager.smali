.class Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;
.super Ljava/lang/Object;
.source "TaoSSLSocketFactoryHelper.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static m_defaultMgr:Ljavax/net/ssl/X509TrustManager;

.field private static m_verisignCert:Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_verisignCert:Ljava/security/cert/Certificate;

    .line 37
    sput-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_defaultMgr:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_verisignCert:Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 59
    :cond_2
    :goto_1
    :try_start_1
    sget-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_defaultMgr:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 62
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 63
    const/4 v0, 0x0

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 64
    aget-object v2, v1, v0

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_4

    .line 65
    aget-object v0, v1, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    sput-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_defaultMgr:Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    sput-object v3, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_defaultMgr:Ljavax/net/ssl/X509TrustManager;

    .line 75
    const-string/jumbo v0, "usertrack_data"

    const-string/jumbo v1, "6,got default trust fail"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_verisignCert:Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0

    .line 63
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "https"

    const-string/jumbo v1, "checkClientTrusted"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 90
    const-string/jumbo v0, "https"

    const-string/jumbo v1, "https verify begin"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_verisignCert:Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    array-length v0, p1

    if-lez v0, :cond_6

    .line 100
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string/jumbo v0, "https"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, ".taobao.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 104
    if-nez v0, :cond_2

    .line 106
    :try_start_1
    const-string/jumbo v3, ".alipay.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    move-result v0

    .line 114
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, ""

    move v1, v2

    .line 117
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 121
    aget-object v5, p1, v1

    .line 125
    :try_start_2
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_2
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 152
    :goto_3
    :try_start_3
    sget-object v3, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_verisignCert:Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move v3, v2

    .line 175
    :goto_4
    if-nez v3, :cond_3

    .line 178
    const-string/jumbo v0, "https"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--- verify success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    move v1, v2

    .line 111
    :goto_5
    const-string/jumbo v3, "mtopsdk.TaoSSLSocketFactoryHelper"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    .line 127
    :catch_1
    move-exception v0

    .line 131
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 133
    throw v0

    .line 135
    :catch_2
    move-exception v0

    .line 138
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string/jumbo v2, "https"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cert checkValidity CertificateNotYetValidException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " t:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    throw v0

    .line 154
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v3, v4

    .line 173
    goto :goto_4

    .line 158
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v3, v4

    .line 173
    goto/16 :goto_4

    .line 161
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v3, v4

    .line 173
    goto/16 :goto_4

    .line 164
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v3, v4

    .line 173
    goto/16 :goto_4

    .line 168
    :catch_7
    move-exception v3

    .line 171
    const-string/jumbo v6, "mtopsdk.TaoSSLSocketFactoryHelper"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 172
    goto/16 :goto_4

    .line 117
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 184
    :cond_4
    const-string/jumbo v1, "https"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " customize https verify failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_defaultMgr:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    .line 192
    :try_start_4
    sget-object v0, Lmtopsdk/mtop/network/TaoSSLSocketFactoryHelper$TaoX509TrustManager;->m_defaultMgr:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_0

    .line 195
    :catch_8
    move-exception v0

    .line 198
    array-length v1, p1

    if-lez v1, :cond_5

    .line 200
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 202
    :cond_5
    throw v0

    .line 204
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    array-length v0, p1

    if-lez v0, :cond_0

    .line 209
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :catch_a
    move-exception v3

    goto/16 :goto_3

    .line 109
    :catch_b
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method
