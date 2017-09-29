.class final Lcom/alipay/nfc/card/pboc/ShenzhenTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "ShenzhenTong.java"


# static fields
.field private static final DFN_SRV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->DFN_SRV:[B

    .line 22
    return-void

    .line 23
    nop

    :array_0
    .array-data 1
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x5at
        0x54t
    .end array-data
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 29
    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->card_type:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "\u6df1\u5733\u901a\u5361"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->busi_type:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "shenzhen"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->busi_id:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static final load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/ShenzhenTong;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    sget-object v0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->DFN_SRV:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v4}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    .line 62
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 67
    new-instance v0, Lcom/alipay/nfc/card/pboc/ShenzhenTong;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->parseBalance(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 69
    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V

    .line 70
    new-array v1, v4, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->parseLog([Ljava/util/ArrayList;)V

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
