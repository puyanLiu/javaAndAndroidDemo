.class public final Lcom/alipay/nfc/tech/FeliCa$BlockListElement;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# static fields
.field private static final LENGTH_2_BYTE:B = -0x80t

.field private static final LENGTH_3_BYTE:B


# instance fields
.field private final lengthAndaccessMode:B

.field private final serviceCodeListOrder:B


# direct methods
.method public varargs constructor <init>(BB[B)V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/alipay/nfc/tech/FeliCa;-><init>()V

    .line 164
    if-eqz p3, :cond_2

    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 165
    or-int/lit16 v0, p1, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->lengthAndaccessMode:B

    .line 169
    :goto_0
    and-int/lit8 v0, p2, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->serviceCodeListOrder:B

    .line 170
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    sget-object p3, Lcom/alipay/nfc/tech/FeliCa;->EMPTY:[B

    :cond_1
    iput-object p3, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->data:[B

    .line 171
    return-void

    .line 167
    :cond_2
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->lengthAndaccessMode:B

    goto :goto_0
.end method


# virtual methods
.method public final getBytes()[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    iget-byte v0, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->lengthAndaccessMode:B

    and-int/lit8 v0, v0, -0x80

    if-ne v0, v4, :cond_0

    .line 178
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    iget-byte v1, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->lengthAndaccessMode:B

    iget-byte v2, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->serviceCodeListOrder:B

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->data:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 186
    iget-byte v1, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->lengthAndaccessMode:B

    iget-byte v2, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->serviceCodeListOrder:B

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->data:[B

    aget-byte v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$BlockListElement;->data:[B

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method
