.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;
.super Ljava/lang/Object;
.source "TlvUtil.java"


# static fields
.field public static final LEN_LENGTH:I = 0x2

.field public static final TAG_LENGTH:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(II)I
    .locals 1

    .prologue
    .line 67
    mul-int/lit8 v0, p0, 0x4

    add-int/2addr v0, p1

    return v0
.end method

.method public static readDataFully(Ljava/io/InputStream;I[BI)V
    .locals 3

    .prologue
    .line 92
    if-gtz p1, :cond_1

    .line 93
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->DataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0

    .line 109
    :cond_0
    add-int/2addr p3, v0

    .line 110
    sub-int/2addr p1, v0

    .line 98
    :cond_1
    if-lez p1, :cond_2

    .line 99
    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DATA-RES-DETAIL\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 102
    if-ne v0, p1, :cond_3

    .line 114
    :cond_2
    return-void

    .line 106
    :cond_3
    if-gez v0, :cond_0

    .line 107
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->SocketReadException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->SocketReadException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsException;-><init>(Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;)V

    throw v0
.end method

.method public static readTlBytes(Ljava/io/InputStream;[B)V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/tlv/TlvUtil;->readDataFully(Ljava/io/InputStream;I[BI)V

    .line 80
    return-void
.end method

.method public static sendNormalTl(Ljava/io/OutputStream;II)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 56
    return-void
.end method

.method public static sendNormalTlv(Ljava/io/OutputStream;I[B)V
    .locals 1

    .prologue
    .line 37
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 38
    array-length v0, p2

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/ByteUtil;->shortToBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 39
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 41
    return-void
.end method
