.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "AtlsCipherOutputStream.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

.field private obuffer:[B

.field private originBuffer:[B

.field private originPos:I

.field private outBuffer:[B

.field private outPos:I

.field private output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originBuffer:[B

    .line 46
    const/16 v0, 0x2400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outBuffer:[B

    .line 49
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    .line 52
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outPos:I

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->output:Ljava/io/OutputStream;

    .line 87
    :try_start_0
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    const-string/jumbo v1, "BC"

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKey:[B

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/AesAlgorithmHelper;->toKey([B)Ljava/security/Key;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->iv:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    .line 95
    return-void

    .line 91
    :catch_0
    move-exception v0

    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originBuffer:[B

    .line 46
    const/16 v0, 0x2400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outBuffer:[B

    .line 49
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    .line 52
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outPos:I

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->output:Ljava/io/OutputStream;

    .line 68
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 69
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    .line 70
    return-void
.end method

.method private bufferWrite([B)V
    .locals 4

    .prologue
    .line 254
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outBuffer:[B

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outPos:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outPos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outPos:I

    .line 256
    return-void
.end method

.method private reqDataBuild(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 203
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    if-gtz v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 205
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    const/16 v2, 0x2000

    if-le v1, v2, :cond_1

    .line 206
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->OutputExLength:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 209
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    new-array v1, v1, [B

    .line 210
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originBuffer:[B

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->yseq:[B

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->Encrypt1([B[B)[B

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x4

    array-length v3, v2

    add-int/2addr v1, v3

    .line 220
    const/16 v3, 0x104

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 221
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 222
    const-string/jumbo v1, "0000"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 223
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 224
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->yseq:[B

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B

    array-length v1, v1

    .line 226
    const-string/jumbo v3, "0001"

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 227
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 228
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 229
    const-string/jumbo v1, "0002"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 230
    array-length v1, v2

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 231
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->bufferWrite([B)V

    .line 233
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outBuffer:[B

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outPos:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 234
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 237
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    .line 238
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->outPos:I

    .line 241
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->ivClient:[B

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_2
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    const-string/jumbo v1, "BC"

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKey:[B

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/AesAlgorithmHelper;->toKey([B)Ljava/security/Key;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->ivClient:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->yseq:[B

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->seq8turn([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->yseq:[B

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 286
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 287
    return-void

    .line 278
    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B

    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->obuffer:[B

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ATLS flush:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->output:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->reqDataBuild(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string/jumbo v1, "ATLS\u6570\u636e\u8bf7\u6c42\u65f6\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataSendError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0
.end method

.method public getHs()Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    return-object v0
.end method

.method public setHs(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    .line 296
    return-void
.end method

.method public write(I)V
    .locals 4

    .prologue
    const/16 v3, 0x2000

    .line 106
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    if-lt v0, v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->flush()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originBuffer:[B

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 111
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    .line 113
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    if-ne v0, v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->flush()V

    .line 117
    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->write([BII)V

    .line 136
    return-void
.end method

.method public write([BII)V
    .locals 4

    .prologue
    const/16 v3, 0x2000

    .line 150
    :goto_0
    if-lez p3, :cond_1

    .line 152
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    if-lt v0, v3, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->flush()V

    .line 156
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    rsub-int v0, v0, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originBuffer:[B

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    .line 159
    sub-int/2addr p3, v0

    .line 160
    add-int/2addr p2, v0

    .line 161
    goto :goto_0

    .line 163
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->originPos:I

    if-ne v0, v3, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherOutputStream;->flush()V

    .line 167
    :cond_2
    return-void
.end method
