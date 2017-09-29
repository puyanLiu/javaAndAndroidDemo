.class public Lcom/alipay/nfc/card/pboc/LeavedCard;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "LeavedCard.java"


# direct methods
.method public constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 10
    const-string/jumbo v0, "LEAVED_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/LeavedCard;->card_type:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "?"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/LeavedCard;->busi_type:Ljava/lang/String;

    .line 13
    return-void
.end method
