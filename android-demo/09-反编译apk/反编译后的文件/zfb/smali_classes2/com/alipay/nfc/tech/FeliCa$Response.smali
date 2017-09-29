.class public Lcom/alipay/nfc/tech/FeliCa$Response;
.super Lcom/alipay/nfc/tech/FeliCa;
.source "FeliCa.java"


# instance fields
.field protected final code:B

.field protected final idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

.field protected final length:I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 327
    invoke-direct {p0}, Lcom/alipay/nfc/tech/FeliCa;-><init>()V

    .line 328
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v2, :cond_0

    .line 329
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->length:I

    .line 330
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->code:B

    .line 331
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$IDm;

    const/4 v1, 0x2

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$IDm;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 332
    iput-object p1, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->data:[B

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_0
    iput v1, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->length:I

    .line 335
    iput-byte v1, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->code:B

    .line 336
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$IDm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$IDm;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    .line 337
    sget-object v0, Lcom/alipay/nfc/tech/FeliCa;->EMPTY:[B

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->data:[B

    goto :goto_0
.end method


# virtual methods
.method public getIDm()Lcom/alipay/nfc/tech/FeliCa$IDm;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$Response;->idm:Lcom/alipay/nfc/tech/FeliCa$IDm;

    return-object v0
.end method
