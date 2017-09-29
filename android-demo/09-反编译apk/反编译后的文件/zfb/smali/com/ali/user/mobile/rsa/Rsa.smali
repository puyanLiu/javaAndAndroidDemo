.class public Lcom/ali/user/mobile/rsa/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"

.field private static a:Lcom/ali/user/mobile/rsa/RSAHandler;

.field private static b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 115
    .line 119
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 120
    invoke-static {p1}, Lcom/ali/user/mobile/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 119
    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 121
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 124
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 125
    const/4 v2, 0x2

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 127
    invoke-static {p0}, Lcom/ali/user/mobile/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 130
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 131
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_1
    array-length v0, v6

    if-lt v4, v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 150
    :goto_1
    return-object v0

    .line 135
    :cond_0
    :try_start_3
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_1

    array-length v0, v6

    sub-int/2addr v0, v4

    .line 134
    :goto_2
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    add-int v0, v4, v3

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 136
    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 142
    :goto_3
    :try_start_4
    const-string/jumbo v3, "Rsa"

    const-string/jumbo v4, "decrypt exception"

    invoke-static {v3, v4, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    if-eqz v2, :cond_3

    .line 147
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 145
    :goto_4
    if-eqz v2, :cond_2

    .line 147
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 150
    :cond_2
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_1

    .line 144
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 141
    :catch_4
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 186
    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 187
    invoke-static {p2}, Lcom/ali/user/mobile/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 189
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 192
    const-string/jumbo v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 195
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 197
    invoke-static {p1}, Lcom/ali/user/mobile/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string/jumbo v1, "Rsa"

    const-string/jumbo v2, "doCheck exception"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 75
    .line 79
    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {p1}, Lcom/ali/user/mobile/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 81
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 84
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 86
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 87
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_1
    array-length v0, v6

    if-lt v4, v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ali/user/mobile/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 107
    :goto_1
    return-object v0

    .line 91
    :cond_0
    :try_start_3
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_1

    array-length v0, v6

    sub-int/2addr v0, v4

    .line 90
    :goto_2
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    add-int v0, v4, v3

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 92
    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 99
    :goto_3
    :try_start_4
    const-string/jumbo v3, "Rsa"

    const-string/jumbo v4, "encrypt exception"

    invoke-static {v3, v4, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v3, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    if-eqz v2, :cond_3

    .line 104
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 102
    :goto_4
    if-eqz v2, :cond_2

    .line 104
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 107
    :cond_2
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_1

    .line 101
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 98
    :catch_4
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static getEncryptKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    :try_start_0
    invoke-static {p0}, Lcom/ali/user/mobile/rsa/Rsa;->getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ali/user/mobile/rsa/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string/jumbo v1, "RSAUtil"

    const-string/jumbo v2, "exception when getEncryptKey"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/ali/user/mobile/rsa/Rsa;->a:Lcom/ali/user/mobile/rsa/RSAHandler;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getRsaHandler()Lcom/ali/user/mobile/rsa/RSAHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getRsaHandler()Lcom/ali/user/mobile/rsa/RSAHandler;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rsa/Rsa;->a:Lcom/ali/user/mobile/rsa/RSAHandler;

    .line 51
    :cond_0
    :goto_0
    const-string/jumbo v0, "RSAUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sRsaHandler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/mobile/rsa/Rsa;->a:Lcom/ali/user/mobile/rsa/RSAHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/ali/user/mobile/rsa/Rsa;->b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/ali/user/mobile/rsa/Rsa;->a:Lcom/ali/user/mobile/rsa/RSAHandler;

    invoke-interface {v0}, Lcom/ali/user/mobile/rsa/RSAHandler;->getRSAKey()Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/rsa/Rsa;->b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    .line 55
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/rsa/Rsa;->b:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    return-object v0

    .line 48
    :cond_2
    new-instance v0, Lcom/ali/user/mobile/rsa/AliuserRSAHandler;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/rsa/AliuserRSAHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/rsa/Rsa;->a:Lcom/ali/user/mobile/rsa/RSAHandler;

    goto :goto_0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    const-string/jumbo v0, "utf-8"

    .line 162
    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 163
    invoke-static {p1}, Lcom/ali/user/mobile/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 162
    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 164
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 165
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "SHA1WithRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 170
    invoke-virtual {v2, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    .line 173
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/ali/user/mobile/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string/jumbo v1, "Rsa"

    const-string/jumbo v2, "sign exception"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 181
    const/4 v0, 0x0

    goto :goto_0
.end method
