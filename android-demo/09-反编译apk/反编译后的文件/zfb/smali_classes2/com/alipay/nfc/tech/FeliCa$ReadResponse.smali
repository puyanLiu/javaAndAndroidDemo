.class public final Lcom/alipay/nfc/tech/FeliCa$ReadResponse;
.super Lcom/alipay/nfc/tech/FeliCa$Response;
.source "FeliCa.java"


# static fields
.field public static final EMPTY:[B


# instance fields
.field private final blockData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 364
    const/16 v0, 0xc

    new-array v0, v0, [B

    const/16 v1, 0xa

    .line 365
    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v2, v0, v1

    .line 364
    sput-object v0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->EMPTY:[B

    .line 363
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 370
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object p1, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->EMPTY:[B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa$Response;-><init>([B)V

    .line 372
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->getStatusFlag1()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->getBlockCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->data:[B

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->data:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->blockData:[B

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_2
    sget-object v0, Lcom/alipay/nfc/tech/FeliCa;->EMPTY:[B

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->blockData:[B

    goto :goto_0
.end method


# virtual methods
.method public final getBlockCount()I
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 388
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->data:[B

    array-length v0, v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBlockData()[B
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->blockData:[B

    return-object v0
.end method

.method public final getStatusFlag1()I
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->data:[B

    const/16 v1, 0xa

    aget-byte v0, v0, v1

    return v0
.end method

.method public final getStatusFlag2()I
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->data:[B

    const/16 v1, 0xb

    aget-byte v0, v0, v1

    return v0
.end method

.method public final isOkey()Z
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->getStatusFlag1()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
