.class public Lcom/alipay/android/app/encrypt/Rsa;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2

    .prologue
    .line 35
    invoke-static {p1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 36
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 38
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 127
    .line 131
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 133
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 136
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 137
    const/4 v2, 0x2

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 139
    invoke-static {p0}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 142
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 143
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_1
    array-length v0, v6

    if-ge v4, v0, :cond_1

    .line 146
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_0

    array-length v0, v6

    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 145
    add-int v0, v4, v3

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 146
    goto :goto_1

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :goto_2
    return-object v0

    .line 159
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 153
    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    if-eqz v2, :cond_3

    .line 158
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 161
    goto :goto_2

    .line 159
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 162
    goto :goto_2

    .line 156
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 158
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :cond_2
    :goto_5
    throw v0

    .line 159
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 156
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 153
    :catch_4
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 197
    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 198
    invoke-static {p2}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 199
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 206
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 208
    invoke-static {p1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 215
    :goto_0
    return v0

    .line 211
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 47
    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {v0, p1}, Lcom/alipay/android/app/encrypt/Rsa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 49
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 54
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 55
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_1
    array-length v0, v6

    if-ge v4, v0, :cond_1

    .line 58
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_0

    array-length v0, v6

    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 57
    add-int v0, v4, v3

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 58
    goto :goto_1

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/encrypt/Base64;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :goto_2
    return-object v0

    .line 72
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 66
    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    if-eqz v2, :cond_3

    .line 71
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 74
    goto :goto_2

    .line 72
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 75
    goto :goto_2

    .line 69
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_2

    .line 71
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 75
    :cond_2
    :goto_5
    throw v0

    .line 72
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 69
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 66
    :catch_4
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static encryptToByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 89
    :try_start_0
    const-string/jumbo v1, "RSA"

    invoke-static {v1, p1}, Lcom/alipay/android/app/encrypt/Rsa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 91
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v5, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 94
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 96
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 97
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    :try_start_1
    array-length v1, v6

    if-ge v4, v1, :cond_1

    .line 100
    array-length v1, v6

    sub-int/2addr v1, v4

    if-ge v1, v3, :cond_0

    array-length v1, v6

    sub-int/2addr v1, v4

    :goto_1
    invoke-virtual {v5, v6, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 99
    add-int v1, v4, v3

    move v4, v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 100
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 111
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    :cond_2
    :goto_2
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 108
    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_3
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    if-eqz v2, :cond_2

    .line 113
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 114
    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 111
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_3

    .line 113
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 117
    :cond_3
    :goto_5
    throw v0

    .line 114
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 111
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 108
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    const-string/jumbo v0, "utf-8"

    .line 174
    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 176
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 177
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 179
    const-string/jumbo v2, "SHA1WithRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    .line 185
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/alipay/android/app/encrypt/Base64;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 192
    const/4 v0, 0x0

    goto :goto_0
.end method
