.class public final Lcom/alipay/nfc/tech/FeliCa$WriteResponse;
.super Lcom/alipay/nfc/tech/FeliCa$Response;
.source "FeliCa.java"


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 402
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object p1, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->EMPTY:[B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa$Response;-><init>([B)V

    .line 403
    return-void
.end method


# virtual methods
.method public final getStatusFlag1()I
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$WriteResponse;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public final getStatusFlag2()I
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$WriteResponse;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final isOkey()Z
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$WriteResponse;->getStatusFlag1()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
