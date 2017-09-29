.class public Lmtopsdk/mtop/network/ssl/SslCertVerifyHelper;
.super Ljava/lang/Object;
.source "SslCertVerifyHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SslCertVerifyHelper"

.field private static final TAG_EXPONENT:Ljava/lang/String; = "publicExponent="

.field private static final TAG_MODULE:Ljava/lang/String; = "modulus="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCertificate(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 168
    if-nez p0, :cond_0

    .line 193
    :goto_0
    return-object v1

    .line 172
    :cond_0
    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 175
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    if-eqz p0, :cond_1

    .line 187
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 193
    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Close InputStream failed while generate certificate."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 176
    :catch_1
    move-exception v0

    .line 178
    :try_start_2
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Generate certificate failed."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    if-eqz p0, :cond_3

    .line 187
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    .line 190
    goto :goto_1

    .line 188
    :catch_2
    move-exception v0

    .line 189
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Close InputStream failed while generate certificate."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 190
    goto :goto_1

    .line 180
    :catch_3
    move-exception v0

    .line 182
    :try_start_4
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Generate certificate failed."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    if-eqz p0, :cond_3

    .line 187
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    .line 190
    goto :goto_1

    .line 188
    :catch_4
    move-exception v0

    .line 189
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Close InputStream failed while generate certificate."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 190
    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 187
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 190
    :cond_2
    :goto_2
    throw v0

    .line 188
    :catch_5
    move-exception v1

    .line 189
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Close InputStream failed while generate certificate."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static getCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 142
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-static {v2}, Lmtopsdk/mtop/network/ssl/SslCertVerifyHelper;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 153
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Close InputStream failed while generate certificate."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 150
    :goto_1
    :try_start_3
    const-string/jumbo v3, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v4, "Generate certificate failed."

    invoke-static {v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    if-eqz v2, :cond_0

    .line 155
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 156
    :catch_2
    move-exception v1

    .line 157
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Close InputStream failed while generate certificate."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 155
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 158
    :cond_2
    :goto_3
    throw v0

    .line 156
    :catch_3
    move-exception v1

    .line 157
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "Close InputStream failed while generate certificate."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 153
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 149
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 203
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 204
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 205
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 206
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 207
    aget-object v3, v2, v0

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 208
    aget-object v0, v2, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 225
    :goto_1
    return-object v0

    .line 206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 224
    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 214
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "get X509TrustManager failed."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 224
    goto :goto_1

    .line 216
    :catch_1
    move-exception v0

    .line 218
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "get X509TrustManager failed."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 224
    goto :goto_1

    .line 220
    :catch_2
    move-exception v0

    .line 222
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "get X509TrustManager failed."

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static printCertInfo(Ljava/security/cert/X509Certificate;)V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    const-string/jumbo v1, "sigAlgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";serialNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";X500Principal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";SubjectDN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";IssuerDN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";pubKeyFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";pubKeyAlgorithm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";\npubKeyEncoded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string/jumbo v1, "https"

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v1, "mtopsdk.SslCertVerifyHelper"

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private static saveCertInfo(Ljava/security/cert/X509Certificate;I)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 260
    if-nez p0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 271
    aget-object v3, v2, v0

    const-string/jumbo v4, "modulus="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 272
    if-eq v3, v6, :cond_0

    .line 275
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x8

    if-le v4, v5, :cond_0

    .line 279
    aget-object v4, v2, v0

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    aget-object v4, v2, v1

    const-string/jumbo v5, "publicExponent="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 281
    if-eq v4, v6, :cond_0

    .line 284
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v4, 0xf

    add-int/lit8 v6, v6, 0x1

    if-le v5, v6, :cond_0

    .line 288
    aget-object v0, v2, v1

    add-int/lit8 v4, v4, 0xf

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "exponent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "; module="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    .line 294
    goto/16 :goto_0
.end method

.method public static verifyCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 66
    .line 68
    if-nez p0, :cond_0

    move v0, v1

    .line 135
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {p0}, Lmtopsdk/mtop/network/ssl/SslCertVerifyHelper;->printCertInfo(Ljava/security/cert/X509Certificate;)V

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 83
    const-string/jumbo v0, ".taobao.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    :try_start_1
    const-string/jumbo v3, ".alipay.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result v0

    .line 93
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 94
    const-string/jumbo v0, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v2, "vertify failed: invalid domain."

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 95
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    move v2, v1

    .line 89
    :goto_2
    const-string/jumbo v3, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v4, "vertify domain error."

    invoke-static {v3, v4, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_1

    .line 99
    :cond_3
    :try_start_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    :try_start_3
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_7

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "\u8bc1\u4e66\u8fc7\u671f\u3002"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :catch_2
    move-exception v0

    .line 106
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "\u8bc1\u4e66\u672a\u751f\u6548\u3002"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 107
    goto :goto_0

    .line 113
    :catch_3
    move-exception v0

    .line 114
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "\u8bc1\u4e66\u516c\u94a5\u4e0d\u5408\u6cd5\u3002"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :catch_4
    move-exception v0

    .line 118
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "\u8bc1\u4e66\u516c\u94a5\u4e0d\u5408\u6cd5\u3002"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 119
    goto :goto_0

    .line 121
    :catch_5
    move-exception v0

    .line 122
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "\u8bc1\u4e66\u516c\u94a5\u4e0d\u5408\u6cd5\u3002"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 123
    goto/16 :goto_0

    .line 125
    :catch_6
    move-exception v0

    .line 126
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "\u8bc1\u4e66\u516c\u94a5\u4e0d\u5408\u6cd5\u3002"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 127
    goto/16 :goto_0

    .line 129
    :catch_7
    move-exception v0

    .line 130
    const-string/jumbo v2, "mtopsdk.SslCertVerifyHelper"

    const-string/jumbo v3, "\u8bc1\u4e66\u516c\u94a5\u4e0d\u5408\u6cd5\u3002"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 131
    goto/16 :goto_0

    .line 88
    :catch_8
    move-exception v2

    move-object v5, v2

    move v2, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public static verifyCertificate([BI)Z
    .locals 2

    .prologue
    .line 48
    invoke-static {p0}, Lmtopsdk/mtop/network/ssl/SslCertVerifyHelper;->getCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lmtopsdk/mtop/network/ssl/SslCertVerifyHelper;->verifyCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 54
    invoke-static {v0, p1}, Lmtopsdk/mtop/network/ssl/SslCertVerifyHelper;->saveCertInfo(Ljava/security/cert/X509Certificate;I)Z

    .line 56
    :cond_0
    return v1
.end method
