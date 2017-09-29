.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;
.super Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;
.source "DefaultAtlsHandShake.java"


# static fields
.field static final TYPE_HELLO_CERT:I = 0x4

.field static final TYPE_HELLO_SESSION:I = 0x3

.field static final TYPE_HSREQ_KEY:I = 0x0

.field static final TYPE_HSRES_IV:I = 0x1

.field static final TYPE_HSRES_MSEQ:I = 0x1

.field static final TYPE_HSRES_SESSION:I = 0x2

.field static final TYPE_HSRES_SIGN:I = 0x0

.field static final TYPE_HSRES_UPDATE:I = 0x3

.field static final TYPE_HSRES_YSEQ:I = 0x2

.field public static lock:Ljava/lang/Object;

.field private static name:Ljava/lang/String;


# instance fields
.field public aesKey:[B

.field private aesKeyRsa:[B

.field private cert:[B

.field private input:Ljava/io/InputStream;

.field public iv:[B

.field public ivClient:[B

.field private mContext:Landroid/content/Context;

.field public myseq:[B

.field private output:Ljava/io/OutputStream;

.field private resLastLength:I

.field private session:[B

.field private temp2bytes:[B

.field public yseq:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->lock:Ljava/lang/Object;

    .line 26
    const-string/jumbo v0, "/C=CN/ST=ZHEJIANG/L=HANGZHOU/O=Alipay.com Co.,Ltd/OU=Operations Department/OU=Terms of use at www.verisign.com/rpa (c)05/CN=*.alipay.com"

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x8

    .line 84
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/handshake/AtlsHandShake;-><init>()V

    .line 54
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->iv:[B

    .line 57
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->ivClient:[B

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    .line 66
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->myseq:[B

    .line 69
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->yseq:[B

    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->output:Ljava/io/OutputStream;

    .line 86
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    .line 87
    return-void
.end method

.method private certUpdate()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 443
    const-string/jumbo v1, "\u65b0\u8bc1\u4e66\u52a0\u8f7d"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->sendCertReq()V

    .line 446
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->readHandShakeRes()Z

    .line 448
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->cert:[B

    if-nez v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->cert:[B

    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->name:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->isSimpleVerifyAltsMode()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->verify([BLjava/lang/String;Z)V

    .line 455
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->error()I

    move-result v1

    if-nez v1, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->storeCert()V

    .line 457
    const-string/jumbo v0, "\u65b0\u8bc1\u4e66OK"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private certVerify()Z
    .locals 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    .line 476
    :cond_0
    const-string/jumbo v0, "xxxxxxx2\uff1a"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 479
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->readCert()[B

    move-result-object v0

    .line 481
    const-string/jumbo v1, "xxxxxxx3\uff1a"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 483
    if-eqz v0, :cond_2

    .line 484
    const-string/jumbo v1, "\u8bc1\u4e66\u9a8c\u8bc1\u5f00\u59cb!"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->name:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->isSimpleVerifyAltsMode()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->verify([BLjava/lang/String;Z)V

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->error()I

    move-result v0

    if-nez v0, :cond_1

    .line 487
    const-string/jumbo v0, "\u8bc1\u4e66\u9a8c\u8bc1OK!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 488
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    .line 490
    :cond_1
    const-string/jumbo v0, "\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 492
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certUpdate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string/jumbo v1, "\u8bc1\u4e66\u52a0\u8f7d\u9a8c\u8bc1\u5931\u8d25"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readCert()[B
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 326
    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 328
    :try_start_0
    const-string/jumbo v1, "\u8bc1\u4e66\u8bfb\u53d6"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;->CERT_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;->CERT_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    monitor-exit v3

    .line 365
    :goto_0
    return-object v0

    .line 337
    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v5, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 341
    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    .line 343
    :goto_1
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v1, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-eq v4, v6, :cond_2

    .line 345
    const/4 v4, 0x0

    invoke-virtual {v5, v1, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 348
    :catch_0
    move-exception v1

    .line 349
    :goto_2
    :try_start_3
    const-string/jumbo v4, "Cert Local Read Ex"

    invoke-static {v4, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 350
    if-eqz v2, :cond_1

    .line 354
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 360
    :cond_1
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 365
    :goto_4
    :try_start_6
    monitor-exit v3

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 347
    :cond_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    .line 353
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 360
    :goto_5
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 365
    :goto_6
    :try_start_a
    monitor-exit v3

    goto :goto_0

    .line 356
    :catch_1
    move-exception v1

    .line 357
    const-string/jumbo v2, "Close in occurs exception "

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 363
    :catch_2
    move-exception v1

    .line 364
    const-string/jumbo v2, "Close bos occurs exception "

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 356
    :catch_3
    move-exception v1

    .line 357
    const-string/jumbo v2, "Close in occurs exception "

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 363
    :catch_4
    move-exception v1

    .line 364
    const-string/jumbo v2, "Close bos occurs exception "

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 352
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 353
    :goto_7
    if-eqz v2, :cond_3

    .line 354
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 360
    :cond_3
    :goto_8
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 365
    :goto_9
    :try_start_d
    throw v0

    .line 356
    :catch_5
    move-exception v1

    .line 357
    const-string/jumbo v2, "Close in occurs exception "

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 363
    :catch_6
    move-exception v1

    .line 364
    const-string/jumbo v2, "Close bos occurs exception "

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    .line 352
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 348
    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method private readResCert()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ReadResCert!size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 313
    add-int/lit8 v1, v0, 0x3

    and-int/lit8 v1, v1, -0x4

    .line 314
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    add-int/lit8 v2, v2, -0x2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    .line 315
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->cert:[B

    .line 316
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->cert:[B

    invoke-static {v2, v0, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 317
    sub-int v2, v1, v0

    new-array v2, v2, [B

    .line 318
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    sub-int v0, v1, v0

    invoke-static {v3, v0, v2, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 319
    return-void
.end method

.method private readResMseq()V
    .locals 4

    .prologue
    .line 256
    const-string/jumbo v0, "readResMseq!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->myseq:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 259
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    .line 261
    return-void
.end method

.method private readResSession()V
    .locals 4

    .prologue
    .line 284
    const-string/jumbo v0, "readResSession!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    .line 287
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    .line 288
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->session:[B

    .line 289
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->session:[B

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 291
    return-void
.end method

.method private readResSign()V
    .locals 4

    .prologue
    .line 233
    const-string/jumbo v0, "readResSign!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    .line 236
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    .line 237
    new-array v1, v0, [B

    .line 238
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->iv:[B

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->rsaVerify([B[B)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->error()I

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string/jumbo v0, "ATLS\u63e1\u624b\u7b7e\u540d\u9a8c\u8bc1\u5931\u8d25"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeSignFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 245
    :cond_0
    const-string/jumbo v0, "ATLS\u63e1\u624b\u7b7e\u540d\u9a8c\u8bc1\u6210\u529f"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private readResYseq()V
    .locals 4

    .prologue
    .line 270
    const-string/jumbo v0, "readResYseq!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->yseq:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 273
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    .line 275
    return-void
.end method

.method private sendCertReq()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->output:Ljava/io/OutputStream;

    const/16 v1, 0x102

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->sendNormalTl(Ljava/io/OutputStream;II)V

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->output:Ljava/io/OutputStream;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->sendNormalTl(Ljava/io/OutputStream;II)V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 303
    return-void
.end method

.method private storeCert()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 378
    sget-object v4, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 384
    :try_start_0
    const-string/jumbo v0, "\u8bc1\u4e66\u5b58\u50a8"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->cert:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 415
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :goto_0
    return-void

    .line 390
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;->CERT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 395
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 404
    :cond_1
    :goto_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;->CERT_FILE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v3, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 405
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 406
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->cert:[B

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 407
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 408
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 415
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 423
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 431
    :goto_3
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 397
    :cond_2
    :try_start_8
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;->CERT_FILE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 410
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 411
    :goto_4
    :try_start_9
    const-string/jumbo v3, "Cert Local Store Ex0"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 415
    if-eqz v1, :cond_3

    .line 416
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 423
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 424
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 428
    :cond_4
    :goto_6
    :try_start_c
    monitor-exit v4

    goto/16 :goto_0

    .line 418
    :catch_1
    move-exception v0

    .line 419
    const-string/jumbo v1, "Cert Local Store Ex"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 426
    :catch_2
    move-exception v0

    .line 427
    const-string/jumbo v1, "Cert Local Store Ex"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 418
    :catch_3
    move-exception v0

    .line 419
    const-string/jumbo v1, "Cert Local Store Ex"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 426
    :catch_4
    move-exception v0

    .line 427
    const-string/jumbo v1, "Cert Local Store Ex"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    .line 414
    :catchall_1
    move-exception v0

    move-object v3, v1

    .line 415
    :goto_7
    if-eqz v1, :cond_5

    .line 416
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 423
    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 424
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 428
    :cond_6
    :goto_9
    :try_start_f
    throw v0

    .line 418
    :catch_5
    move-exception v1

    .line 419
    const-string/jumbo v2, "Cert Local Store Ex"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 426
    :catch_6
    move-exception v1

    .line 427
    const-string/jumbo v2, "Cert Local Store Ex"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9

    .line 414
    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 410
    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4
.end method


# virtual methods
.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected needHandShake()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->handShakeOk:Z

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const-string/jumbo v1, "xxxxxxx1\uff1a"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 101
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    .line 103
    const-string/jumbo v1, "xxxxxxx1.5\uff1a"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certVerify()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->generateKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKey:[B

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKey:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->iv:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKey:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->ivClient:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->certTool:Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKey:[B

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/Certificate;->rsaEnKey([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKeyRsa:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string/jumbo v1, "ATLS\u63e1\u624b\u51c6\u5907\u65f6\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeReadyFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0
.end method

.method public readHandShakeRes()Z
    .locals 2

    .prologue
    .line 127
    const-string/jumbo v0, "readHandShakeRes!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    .line 132
    const/16 v1, 0x103

    if-ne v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    .line 137
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    .line 141
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->resLastLength:I

    .line 143
    packed-switch v0, :pswitch_data_0

    .line 160
    const-string/jumbo v0, "ATLS\u63e1\u624b\u89e3\u6790\u65f6,\u672a\u77e5tag"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->UnknowTag:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 145
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->readResSign()V

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->readResMseq()V

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->readResYseq()V

    goto :goto_0

    .line 154
    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->readResSession()V

    goto :goto_0

    .line 157
    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->readResCert()V

    goto :goto_0

    .line 166
    :cond_0
    const/4 v0, 0x1

    .line 173
    :goto_1
    return v0

    .line 169
    :cond_1
    const-string/jumbo v0, "ATLS\u63e1\u624b\u89e3\u6790\u65f6,\u672a\u77e5TAG"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected sendHandShakeReq()V
    .locals 6

    .prologue
    .line 189
    :try_start_0
    const-string/jumbo v0, "sendHandShakeReq!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKey:[B

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->ivClient:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/AesAlgorithmHelper;->encryptIV([B[B)[B

    move-result-object v0

    .line 194
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 195
    const/16 v2, 0x102

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKeyRsa:[B

    array-length v3, v3

    array-length v4, v0

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->calculateLength(II)I

    move-result v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKeyRsa:[B

    array-length v2, v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKeyRsa:[B

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKeyRsa:[B

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKeyRsa:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    .line 210
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    add-int/lit8 v2, v2, 0x2

    .line 212
    array-length v3, v0

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    add-int/lit8 v2, v2, 0x2

    .line 214
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    array-length v0, v0

    add-int/2addr v0, v2

    .line 216
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->output:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string/jumbo v1, "ATLS\u63e1\u624b\u8bf7\u6c42\u65f6\u53d1\u751f\u5f02\u5e38\uff1a"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeReqException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->mContext:Landroid/content/Context;

    .line 503
    return-void
.end method
