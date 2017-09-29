.class public final Lcom/alipay/nfc/tech/FeliCa$PollingResponse;
.super Lcom/alipay/nfc/tech/FeliCa$Response;
.source "FeliCa.java"


# instance fields
.field private final pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 350
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/FeliCa$Response;-><init>([B)V

    .line 351
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 352
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$PMm;

    iget-object v1, p0, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->data:[B

    const/16 v2, 0xa

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$PMm;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$PMm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/FeliCa$PMm;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    goto :goto_0
.end method


# virtual methods
.method public final getPMm()Lcom/alipay/nfc/tech/FeliCa$PMm;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/nfc/tech/FeliCa$PollingResponse;->pmm:Lcom/alipay/nfc/tech/FeliCa$PMm;

    return-object v0
.end method
