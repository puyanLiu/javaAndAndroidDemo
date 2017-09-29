.class public Lcom/alipay/nfc/card/pboc/SuzhouTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "SuzhouTong.java"


# static fields
.field private static final DFI_ADF01:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->DFI_ADF01:[B

    .line 7
    return-void

    .line 8
    :array_0
    .array-data 1
        0x53t
        0x55t
        0x58t
        0x49t
        0x4et
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 13
    const-string/jumbo v0, "\u82cf\u5dde\u5e02\u6c11\u5361"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->name:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->card_type:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "\u82cf\u5dde\u5e02\u6c11\u5361"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->busi_type:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "suzhou"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->busi_id:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static final load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/SuzhouTong;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    sget-object v0, Lcom/alipay/nfc/card/pboc/SuzhouTong;->DFI_ADF01:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 31
    const/16 v1, 0x20

    aput-byte v1, v0, v5

    const/4 v1, 0x4

    .line 34
    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 35
    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 36
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    .line 37
    const/16 v2, 0x56

    aput-byte v2, v0, v1

    .line 40
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->transceive([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    .line 42
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 52
    invoke-virtual {p0, v4}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    .line 57
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 62
    new-instance v0, Lcom/alipay/nfc/card/pboc/SuzhouTong;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/SuzhouTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 63
    invoke-virtual {v0, v2}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->parseBalance(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 64
    invoke-virtual {v0, v1, v4, v4}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V

    .line 65
    new-array v1, v5, [Ljava/util/ArrayList;

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->parseLog([Ljava/util/ArrayList;)V

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
