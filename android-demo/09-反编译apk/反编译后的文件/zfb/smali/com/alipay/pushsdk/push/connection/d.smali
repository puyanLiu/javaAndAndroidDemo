.class Lcom/alipay/pushsdk/push/connection/d;
.super Ljava/lang/Object;
.source "PacketReader.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[B

.field private c:Lcom/alipay/pushsdk/push/e/a;

.field private d:I

.field private e:Ljava/lang/Thread;

.field private f:Lcom/alipay/pushsdk/push/connection/i;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alipay/pushsdk/push/connection/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/alipay/pushsdk/push/connection/i;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    .line 41
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    .line 43
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/d;->a()V

    .line 44
    return-void
.end method

.method private a([BI)I
    .locals 12

    .prologue
    .line 287
    .line 288
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/i;->g()I

    move-result v3

    .line 292
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move v1, p2

    .line 294
    :cond_0
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 432
    :cond_1
    :goto_1
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 433
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "see count done! leftLen="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    const-string/jumbo v4, ", index="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v2, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_2
    :goto_2
    return v0

    .line 296
    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 298
    const/4 v2, 0x4

    .line 299
    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "see count got valid packet msgVersion:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 301
    const-string/jumbo v7, ", msgByte1st: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 302
    const/4 v7, 0x0

    aget-byte v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 300
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-static {v2, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_4
    :try_start_0
    invoke-static {v3}, Lcom/alipay/pushsdk/push/e/c;->a(I)Lcom/alipay/pushsdk/push/e/a;

    move-result-object v5

    .line 310
    sget v2, Lcom/alipay/pushsdk/push/e/b;->e:I

    .line 311
    new-array v6, v2, [B

    .line 312
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 313
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 314
    const/4 v8, 0x4

    sget-object v9, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "see count readLen="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_5
    if-ne v7, v2, :cond_1

    .line 318
    invoke-virtual {v5, v6}, Lcom/alipay/pushsdk/push/e/a;->c([B)V

    .line 325
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->j()I

    move-result v6

    sub-int v2, v6, v2

    .line 326
    const/4 v6, 0x4

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 327
    const/4 v6, 0x4

    sget-object v7, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "see count leftHdrLen="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 327
    invoke-static {v6, v7, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_6
    new-array v6, v2, [B

    .line 331
    sget v7, Lcom/alipay/pushsdk/push/e/b;->c:I

    if-ne v3, v7, :cond_8

    .line 332
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->a()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 334
    invoke-direct {p0, v5}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/e/a;)V

    .line 335
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->j()I

    move-result v2

    .line 414
    :goto_3
    add-int/2addr v0, v2

    .line 415
    sub-int/2addr v1, v2

    .line 416
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    const/4 v5, 0x4

    sget-object v6, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "see count current thisLen="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ", leftLen="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ", index="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-static {v5, v6, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 424
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 425
    const/4 v2, 0x2

    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v0, p2

    .line 428
    goto/16 :goto_0

    .line 337
    :cond_8
    :try_start_1
    sget v7, Lcom/alipay/pushsdk/push/e/b;->e:I

    sub-int v7, v1, v7

    if-le v2, v7, :cond_9

    .line 338
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    const/4 v2, 0x2

    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 340
    const-string/jumbo v6, "see count got error header!"

    .line 339
    invoke-static {v2, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "see count readLen:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " leftHdrLen:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 350
    if-ne v7, v2, :cond_11

    .line 351
    invoke-virtual {v5, v6}, Lcom/alipay/pushsdk/push/e/a;->b([B)V

    .line 355
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->g()I

    move-result v2

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "see count bodyLen:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->j()I

    move-result v6

    sub-int v6, v1, v6

    if-gt v2, v6, :cond_f

    .line 358
    if-ltz v2, :cond_f

    .line 359
    new-array v6, v2, [B

    .line 360
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v2}, Ljava/io/InputStream;->read([BII)I

    .line 361
    invoke-virtual {v5, v6}, Lcom/alipay/pushsdk/push/e/a;->a([B)V

    .line 362
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 363
    const/4 v2, 0x4

    sget-object v6, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "see count got valid packet! rawData="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 364
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-static {v2, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_a
    const/4 v2, 0x1

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->i()I

    move-result v6

    sget v7, Lcom/alipay/pushsdk/push/e/b;->g:I

    if-lt v6, v7, :cond_b

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->i()I

    move-result v6

    sget v7, Lcom/alipay/pushsdk/push/e/b;->f:I

    if-le v6, v7, :cond_c

    :cond_b
    const/4 v2, 0x0

    :cond_c
    if-nez v2, :cond_e

    .line 369
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 370
    const/4 v2, 0x2

    sget-object v6, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 371
    const-string/jumbo v7, "see count it\'s unsupported packet!"

    .line 370
    invoke-static {v2, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_d
    :goto_4
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->g()I

    move-result v2

    .line 379
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->j()I

    move-result v5

    .line 378
    add-int/2addr v2, v5

    goto/16 :goto_3

    .line 374
    :cond_e
    invoke-direct {p0, v5}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/e/a;)V

    goto :goto_4

    .line 381
    :cond_f
    if-lez v2, :cond_10

    .line 384
    const-string/jumbo v0, "bigdata see count not enough this is a big data"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 385
    new-array v0, v2, [B

    .line 386
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 387
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bigdata big data readed first:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (leftLen - recvMsg.getPacketHdrLen():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/e/a;->j()I

    move-result v8

    sub-int v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 388
    iput-object v5, p0, Lcom/alipay/pushsdk/push/connection/d;->c:Lcom/alipay/pushsdk/push/e/a;

    .line 389
    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    .line 390
    sub-int v0, v2, v6

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    .line 391
    const/16 v0, 0x800

    goto/16 :goto_2

    .line 395
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 401
    :cond_11
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    const/4 v2, 0x2

    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 403
    const-string/jumbo v6, "see count got error packet!"

    .line 402
    invoke-static {v2, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/connection/d;Ljava/lang/Thread;)V
    .locals 10

    .prologue
    const/16 v9, 0x800

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 175
    const/16 v0, 0x800

    :try_start_0
    new-array v2, v0, [B

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    const-string/jumbo v4, "parsePackets()..."

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :cond_1
    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    iget-object v3, v3, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    rsub-int v4, v0, 0x800

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "see count"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " idx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (BUFFER_LEN - index) \t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rsub-int v5, v0, 0x800

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-gtz v3, :cond_4

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reader() count="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and end of stream!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "reader reached the end of stream."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "-1 : end of stream"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "53"

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/connection/PushException;->setType(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/connection/PushException;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "reader() count="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/2addr v3, v0

    if-lez v3, :cond_c

    const/16 v4, 0x1000

    if-le v4, v3, :cond_c

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "bigdata data total len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " remain:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " curBuffDataLen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    if-ge v3, v5, :cond_7

    const-string/jumbo v0, "bigdata other buffer reading"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    iget-object v6, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    array-length v6, v6

    iget v7, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    sub-int/2addr v6, v7

    invoke-static {v4, v0, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bigdata currentBigPacketRemainDataLen:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    :goto_1
    iget-boolean v3, p0, Lcom/alipay/pushsdk/push/connection/d;->g:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Ljava/lang/Thread;

    if-eq p1, v3, :cond_1

    goto/16 :goto_0

    :cond_7
    iget v5, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    if-lt v3, v5, :cond_6

    const-string/jumbo v0, "bigdata last buffer reading"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    iget-object v6, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    array-length v6, v6

    iget v7, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->c:Lcom/alipay/pushsdk/push/e/a;

    iget-object v5, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    invoke-virtual {v0, v5}, Lcom/alipay/pushsdk/push/e/a;->a([B)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->c:Lcom/alipay/pushsdk/push/e/a;

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/e/a;)V

    iget v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    sub-int v0, v3, v0

    iget v3, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/d;->c:Lcom/alipay/pushsdk/push/e/a;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/d;->b:[B

    const/4 v3, 0x0

    iput v3, p0, Lcom/alipay/pushsdk/push/connection/d;->d:I

    const-string/jumbo v3, "bigdata process end"

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/alipay/pushsdk/push/connection/d;->g:Z

    if-nez v1, :cond_3

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parsePackets() encounter Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reader parsePackets encounter Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "exception : reader"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "54"

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/connection/PushException;->setType(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/connection/PushException;)V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-direct {p0, v4, v3}, Lcom/alipay/pushsdk/push/connection/d;->a([BI)I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "see count offset:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " dataLen:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-ge v5, v3, :cond_a

    sub-int v0, v3, v5

    const/4 v3, 0x0

    invoke-static {v4, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_a
    if-ne v5, v9, :cond_b

    const-string/jumbo v0, "bigdata 1st buffer readed prepare to read next"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 449
    if-nez p1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    sget-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 454
    const-string/jumbo v1, "processPacket() are processing one valid packet!"

    .line 453
    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/i;->j()V

    .line 461
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/connection/i;->b(Lcom/alipay/pushsdk/push/e/a;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/d;->g:Z

    .line 54
    new-instance v0, Lcom/alipay/pushsdk/push/connection/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/e;-><init>(Lcom/alipay/pushsdk/push/connection/d;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Ljava/lang/Thread;

    .line 59
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Packet Reader ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    iget v2, v2, Lcom/alipay/pushsdk/push/connection/i;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 64
    return-void
.end method

.method final a(Lcom/alipay/pushsdk/push/connection/PushException;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 123
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "notifyConnectionError()...Exception!"

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/i;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    return-void

    .line 134
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/b/c;

    .line 136
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/b/c;->a(Lcom/alipay/pushsdk/push/connection/PushException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 141
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    sget-object v2, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 85
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/d;->g:Z

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    .line 87
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/i;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/d;->g:Z

    .line 102
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "shutdown()...listenerExecutor.shutdown!"

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_2
    return-void

    .line 87
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/b/c;

    .line 89
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/pushsdk/push/b/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->f:Lcom/alipay/pushsdk/push/connection/i;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/connection/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    return-void
.end method
