.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;
.super Ljava/io/FilterInputStream;
.source "AtlsCipherInputStream.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private done:Z

.field private hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

.field private ibuffer:[B

.field private input:Ljava/io/InputStream;

.field private obuffer:[B

.field private ofinish:I

.field private ostart:I

.field private seq:[B

.field private temp2bytes:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ibuffer:[B

    .line 47
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->done:Z

    .line 53
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    .line 55
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->seq:[B

    .line 169
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 171
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->setHs(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ibuffer:[B

    .line 47
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->done:Z

    .line 53
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    .line 55
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->seq:[B

    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    .line 155
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 156
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->setHs(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;)V

    .line 157
    return-void
.end method

.method private endHandle()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->done:Z

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    if-nez v0, :cond_1

    .line 135
    const/4 v0, -0x1

    .line 139
    :goto_1
    return v0

    .line 127
    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    goto :goto_0

    .line 130
    :catch_2
    move-exception v0

    .line 131
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    .line 139
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    goto :goto_1
.end method

.method private getMoreData()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 80
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->done:Z

    if-eqz v2, :cond_0

    .line 112
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 85
    if-ne v2, v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->endHandle()I

    move-result v0

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_2

    .line 90
    const-string/jumbo v0, "Cipher Get MoreData Error!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsEx(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->DataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    .line 96
    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->UnknowTag:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 98
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->readResData()V

    move v0, v1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->readReqData()V

    .line 107
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    if-nez v0, :cond_3

    .line 109
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    .line 112
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x104
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readData_error()I
    .locals 4

    .prologue
    .line 485
    const-string/jumbo v0, "DATA-REQ-TLV-ERROR"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->seq:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->seq:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 488
    const/16 v0, 0xa

    return v0
.end method

.method private readData_seq()I
    .locals 4

    .prologue
    .line 473
    const-string/jumbo v0, "DATA-REQ-TLV-SEQ"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->seq:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->seq:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 476
    const/16 v0, 0xa

    return v0
.end method

.method private readReqData()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DATA-REQ\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 409
    const/high16 v1, 0x10000

    if-le v0, v1, :cond_0

    .line 410
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->InputExLength:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 422
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->readData_seq()I

    move-result v1

    sub-int/2addr v0, v1

    .line 413
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DATA-REQ-TLV-START"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 417
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v1

    .line 418
    add-int/lit8 v0, v0, -0x2

    .line 420
    packed-switch v1, :pswitch_data_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ATLS 7001 Ex\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->bytes2String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsEx(Ljava/lang/String;)V

    .line 433
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 425
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->readReqData_data()I

    move-result v1

    sub-int/2addr v0, v1

    .line 426
    goto :goto_0

    .line 428
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->readReqData_sum()I

    move-result v1

    sub-int/2addr v0, v1

    .line 429
    goto :goto_0

    .line 435
    :cond_1
    return-void

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readReqData_data()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 498
    const-string/jumbo v1, "DATA-REQ-TLV-DATA"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 505
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v1

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ATLS-DATA-LENGTH:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ibuffer:[B

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 509
    add-int/lit8 v2, v1, 0x2

    .line 511
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    if-nez v3, :cond_0

    .line 512
    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    const-string/jumbo v4, "BC"

    invoke-static {v3, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v5, v5, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->aesKey:[B

    invoke-static {v5}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/AesAlgorithmHelper;->toKey([B)Ljava/security/Key;

    move-result-object v5

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v7, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v7, v7, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->iv:[B

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 517
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ibuffer:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    .line 520
    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    .line 521
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    iget-object v3, v3, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;->iv:[B

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ibuffer:[B

    add-int/lit8 v5, v1, -0x10

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const-string/jumbo v1, "readReqData-ex:"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 529
    :cond_1
    return v2
.end method

.method private readReqData_sum()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 539
    const-string/jumbo v1, "DATA-REQ-TLV-SUM"

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 546
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v1

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DATA-REQ-SUM\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsEx(Ljava/lang/String;)V

    .line 548
    new-array v2, v1, [B

    .line 550
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 551
    add-int/lit8 v3, v1, 0x2

    .line 552
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->seq:[B

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->Encrypt1([B[B)[B

    move-result-object v4

    .line 553
    array-length v5, v4

    if-eq v5, v1, :cond_1

    .line 554
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataCheckError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataCheckError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 556
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-ge v0, v1, :cond_2

    .line 557
    :try_start_1
    aget-byte v5, v2, v0

    aget-byte v6, v4, v0

    if-eq v5, v6, :cond_0

    .line 558
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataCheckError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    :cond_2
    return v3
.end method

.method private readResData()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v0

    .line 444
    :goto_0
    if-lez v0, :cond_0

    .line 446
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readTlBytes(Ljava/io/InputStream;[B)V

    .line 447
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->temp2bytes:[B

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->hBytesToShort([B)I

    move-result v1

    .line 448
    add-int/lit8 v0, v0, -0x2

    .line 450
    packed-switch v1, :pswitch_data_0

    .line 458
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ResDataError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 452
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->readData_seq()I

    move-result v1

    sub-int/2addr v0, v1

    .line 453
    goto :goto_0

    .line 455
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->readData_error()I

    move-result v1

    sub-int/2addr v0, v1

    .line 456
    goto :goto_0

    .line 462
    :cond_0
    return-void

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 304
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    :goto_0
    iput v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    .line 331
    iput v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    .line 332
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 329
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getHs()Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    return-object v0
.end method

.method public getInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 190
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    if-lt v1, v2, :cond_1

    .line 192
    const/4 v1, 0x0

    .line 193
    :goto_0
    if-nez v1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->getMoreData()I

    move-result v1

    goto :goto_0

    .line 195
    :cond_0
    if-ne v1, v0, :cond_1

    .line 198
    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 239
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    if-lt v2, v3, :cond_1

    move v2, v1

    .line 242
    :goto_0
    if-nez v2, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->getMoreData()I

    move-result v2

    goto :goto_0

    .line 244
    :cond_0
    if-ne v2, v0, :cond_1

    .line 259
    :goto_1
    return v0

    .line 247
    :cond_1
    if-gtz p3, :cond_2

    move v0, v1

    .line 248
    goto :goto_1

    .line 250
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "spdy read data1\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsEx(Ljava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    sub-int/2addr v0, v1

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "spdy read data2\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsEx(Ljava/lang/String;)V

    .line 253
    if-ge p3, v0, :cond_3

    move v0, p3

    .line 255
    :cond_3
    if-eqz p1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->obuffer:[B

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_4
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    goto :goto_1
.end method

.method public setCipher(Ljavax/crypto/Cipher;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 391
    return-void
.end method

.method public setHs(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->hs:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/impl/DefaultAtlsHandShake;

    .line 355
    return-void
.end method

.method public setInput(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->input:Ljava/io/InputStream;

    .line 400
    return-void
.end method

.method public skip(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 281
    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ofinish:I

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    sub-int/2addr v2, v3

    .line 282
    int-to-long v3, v2

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 283
    int-to-long v2, v2

    .line 285
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 289
    :goto_1
    return-wide v0

    .line 288
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/AtlsCipherInputStream;->ostart:I

    move-wide v0, v2

    .line 289
    goto :goto_1

    :cond_1
    move-wide v2, p1

    goto :goto_0
.end method
