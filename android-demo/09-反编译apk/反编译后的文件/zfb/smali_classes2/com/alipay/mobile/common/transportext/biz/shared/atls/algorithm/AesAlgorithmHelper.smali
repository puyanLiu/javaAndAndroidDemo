.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/AesAlgorithmHelper;
.super Ljava/lang/Object;
.source "AesAlgorithmHelper.java"


# static fields
.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final KEY_ALGORITHM:Ljava/lang/String; = "AES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([B[B)[B
    .locals 5

    .prologue
    .line 83
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/AesAlgorithmHelper;->toKey([B)Ljava/security/Key;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    const-string/jumbo v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 85
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/AesAlgorithmHelper;->getIV([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 86
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptIV([B[B)[B
    .locals 5

    .prologue
    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 50
    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    const-string/jumbo v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 51
    const/4 v2, 0x1

    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/AesAlgorithmHelper;->toKey([B)Ljava/security/Key;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 52
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getIV([B)[B
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 63
    new-array v1, v3, [B

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 66
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v1
.end method

.method public static initKey()[B
    .locals 2

    .prologue
    .line 98
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 99
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 100
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static toKey([B)Ljava/security/Key;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 38
    return-object v0
.end method
