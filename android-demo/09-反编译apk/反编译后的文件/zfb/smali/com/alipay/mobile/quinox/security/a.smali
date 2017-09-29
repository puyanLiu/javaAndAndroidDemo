.class public final Lcom/alipay/mobile/quinox/security/a;
.super Ljava/lang/Object;
.source "CertVerifier.java"


# static fields
.field private static final a:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private b:Ljava/security/PublicKey;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string/jumbo v1, "CN=dev,OU=Alipay,O=Alipay,L=HangZhou,ST=ZheJiang,C=CN"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/quinox/security/a;->a:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 167
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 176
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    .line 179
    array-length v4, v3

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    .line 181
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/security/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    goto :goto_0
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 193
    new-array v4, v8, [B

    fill-array-data v4, :array_0

    .line 194
    array-length v0, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 196
    add-int/lit8 v0, v5, -0x4

    add-int/lit8 v0, v0, -0x16

    move v3, v0

    :goto_0
    if-ltz v3, :cond_4

    .line 197
    const/4 v0, 0x1

    move v2, v1

    .line 198
    :goto_1
    if-ge v2, v8, :cond_0

    .line 199
    add-int v6, v3, v2

    aget-byte v6, p0, v6

    aget-byte v7, v4, v2

    if-eq v6, v7, :cond_2

    move v0, v1

    .line 204
    :cond_0
    if-eqz v0, :cond_3

    .line 206
    add-int/lit8 v0, v3, 0x14

    aget-byte v0, p0, v0

    add-int/lit8 v1, v3, 0x15

    aget-byte v1, p0, v1

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v1, v0

    .line 207
    sub-int v0, v5, v3

    add-int/lit8 v2, v0, -0x16

    .line 208
    const-string/jumbo v0, "CertVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ZIP comment found at buffer position "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", good!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-eq v1, v2, :cond_1

    .line 211
    const-string/jumbo v0, "CertVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "WARNING! ZIP comment size mismatch: directory says len is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", but file ends after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x16

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, p0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 222
    :goto_2
    return-object v0

    .line 198
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_0

    .line 221
    :cond_4
    const-string/jumbo v0, "CertVerifier"

    const-string/jumbo v1, "ERROR! ZIP comment NOT found!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    goto :goto_2

    .line 193
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method private static a(Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 99
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x0

    .line 102
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    const-string/jumbo v2, "classes.dex"

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 107
    if-nez v2, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    :try_start_2
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/security/a;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[B

    move-result-object v4

    .line 112
    invoke-static {v3}, Lcom/alipay/mobile/quinox/security/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 113
    if-nez v3, :cond_2

    .line 114
    const-string/jumbo v0, "CertVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "old cert: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p0, v2, p1}, Lcom/alipay/mobile/quinox/security/a;->a(Ljava/security/PublicKey;Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 119
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    .line 117
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x0

    new-array v2, v2, [B

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/security/b;->a(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    .line 125
    const-string/jumbo v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 129
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 130
    invoke-virtual {v1, v4}, Ljava/security/Signature;->update([B)V

    .line 131
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 137
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 120
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    goto :goto_1

    .line 119
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private static a(Ljava/security/PublicKey;Ljava/util/jar/JarEntry;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 230
    if-nez v3, :cond_1

    .line 231
    const-string/jumbo v1, "CertVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " no certs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    array-length v1, v3

    if-lez v1, :cond_0

    .line 237
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_0

    .line 239
    :try_start_0
    aget-object v1, v3, v2

    invoke-virtual {v1, p0}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_4

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    const-string/jumbo v4, "CertVerifier"

    invoke-static {v4, p2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 243
    :catch_1
    move-exception v1

    .line 244
    const-string/jumbo v4, "CertVerifier"

    invoke-static {v4, p2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 245
    :catch_2
    move-exception v1

    .line 246
    const-string/jumbo v4, "CertVerifier"

    invoke-static {v4, p2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 247
    :catch_3
    move-exception v1

    .line 248
    const-string/jumbo v4, "CertVerifier"

    invoke-static {v4, p2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 249
    :catch_4
    move-exception v1

    .line 250
    const-string/jumbo v4, "CertVerifier"

    invoke-static {v4, p2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[B
    .locals 5

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 147
    const-string/jumbo v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 148
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 150
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 151
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 157
    :cond_0
    throw v0

    .line 153
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 155
    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 157
    :cond_2
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 260
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 264
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "client_signature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string/jumbo v1, "CertVerifier"

    const-string/jumbo v2, "get signature error "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    .line 273
    const-string/jumbo v1, "CertVerifier"

    const-string/jumbo v2, "get signature error "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 291
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 294
    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 295
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 296
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "switch.certverifier"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 318
    :goto_0
    return v0

    .line 301
    :cond_0
    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 302
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 303
    if-eqz v4, :cond_2

    array-length v0, v4

    if-lez v0, :cond_2

    .line 304
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 305
    array-length v6, v4

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_2

    .line 306
    new-instance v0, Ljava/io/ByteArrayInputStream;

    aget-object v7, v4, v3

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 308
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v7, Lcom/alipay/mobile/quinox/security/a;->a:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 309
    goto :goto_0

    .line 305
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string/jumbo v1, "CertVerifier"

    const-string/jumbo v3, "get signature error "

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    move v0, v2

    .line 318
    goto :goto_0

    .line 315
    :catch_1
    move-exception v0

    .line 316
    const-string/jumbo v1, "CertVerifier"

    const-string/jumbo v3, "get signature error "

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/quinox/security/a;->b:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/a;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/security/a;->c:Z

    .line 64
    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/a;->b(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/security/a;->b:Ljava/security/PublicKey;

    .line 66
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/security/a;->c:Z

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/security/a;->b:Ljava/security/PublicKey;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/quinox/security/a;->b:Ljava/security/PublicKey;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/security/a;->a(Ljava/security/PublicKey;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v2, "CertVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verify sign error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    const-string/jumbo v2, "CertVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verify sign error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 86
    goto :goto_0
.end method
