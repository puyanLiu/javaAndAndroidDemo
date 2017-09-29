.class public final Lcom/alipay/nfc/tech/FeliCa$Command;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# instance fields
.field private final code:B

.field private final idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

.field private final length:I


# direct methods
.method public varargs constructor <init>(BLcom/alipay/nfc/tech/FeliCa$IDm;[B)V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/alipay/nfc/tech/FeliCa;-><init>()V

    .line 296
    iput-byte p1, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->code:B

    .line 297
    iput-object p2, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 298
    iput-object p3, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->data:[B

    .line 299
    invoke-virtual {p2}, Lcom/alipay/nfc/tech/FeliCa$IDm;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->length:I

    .line 300
    return-void
.end method

.method public varargs constructor <init>(B[B)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 283
    invoke-direct {p0}, Lcom/alipay/nfc/tech/FeliCa;-><init>()V

    .line 284
    iput-byte p1, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->code:B

    .line 285
    array-length v0, p2

    if-lt v0, v2, :cond_0

    .line 286
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$IDm;

    const/4 v1, 0x0

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$IDm;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 287
    array-length v0, p2

    invoke-static {p2, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->data:[B

    .line 292
    :goto_0
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->length:I

    .line 293
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 290
    iput-object p2, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->data:[B

    goto :goto_0
.end method

.method public varargs constructor <init>(B[B[B)V
    .locals 2

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/alipay/nfc/tech/FeliCa;-><init>()V

    .line 303
    iput-byte p1, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->code:B

    .line 304
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$IDm;

    invoke-direct {v0, p2}, Lcom/alipay/nfc/tech/FeliCa$IDm;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 305
    iput-object p3, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->data:[B

    .line 306
    array-length v0, p2

    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->length:I

    .line 307
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/nfc/tech/FeliCa$Command;-><init>(B[B)V

    .line 281
    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .locals 3

    .prologue
    .line 311
    iget v0, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->length:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 312
    iget v1, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->length:I

    int-to-byte v1, v1

    .line 313
    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->code:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/FeliCa$IDm;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->data:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 318
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->code:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$Command;->data:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
