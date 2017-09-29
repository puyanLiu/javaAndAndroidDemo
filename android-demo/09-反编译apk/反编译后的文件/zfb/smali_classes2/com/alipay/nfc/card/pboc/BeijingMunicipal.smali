.class final Lcom/alipay/nfc/card/pboc/BeijingMunicipal;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "BeijingMunicipal.java"


# static fields
.field private static final SFI_EXTRA_CNT:I = 0x5

.field private static final SFI_EXTRA_LOG:I = 0x4


# direct methods
.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 31
    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->card_type:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "\u5317\u4eac\u5e02\u653f\u4ea4\u901a\u5361"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->busi_type:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "beijing"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->busi_id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static final load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/BeijingMunicipal;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 42
    sget-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    .line 60
    sget-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFI_EP:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByID([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v5}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v3

    .line 70
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 75
    new-instance v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 76
    invoke-virtual {v0, v3}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->parseBalance(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 77
    invoke-direct {v0, v1, v2}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 78
    new-array v1, v5, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->parseLog([Ljava/util/ArrayList;)V

    .line 85
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;Lcom/alipay/nfc/tech/Iso7816$Response;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v4, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->count:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->serl:Ljava/lang/String;

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v0

    .line 95
    invoke-static {v0, v5, v4}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->serl:Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "%02X.%02X%02X"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aget-byte v3, v0, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0xa

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->version:Ljava/lang/String;

    .line 97
    const-string/jumbo v1, "%02X%02X.%02X.%02X - %02X%02X.%02X.%02X"

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0x18

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    .line 98
    const/16 v3, 0x19

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x1a

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x1b

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x5

    const/16 v4, 0x1d

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x1e

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x1f

    aget-byte v0, v0, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    .line 97
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->date:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->count:Ljava/lang/String;

    .line 101
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/alipay/nfc/tech/Iso7816$Response;->size()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v0

    .line 103
    invoke-static {v0, v6, v7}, Lcom/alipay/nfc/Util;->toInt([BII)I

    move-result v1

    .line 104
    aget-byte v0, v0, v5

    if-nez v0, :cond_3

    .line 105
    const-string/jumbo v0, "%d "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->count:Ljava/lang/String;

    goto/16 :goto_0

    .line 107
    :cond_3
    const-string/jumbo v0, "%d* "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->count:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public final convertCardInfo()Lcom/alipay/nfc/model/CardInfo;
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/alipay/nfc/card/pboc/PbocCard;->convertCardInfo()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "BeijingMunicipal"

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/model/CardInfo;->setClass_name(Ljava/lang/String;)V

    .line 115
    return-object v0
.end method
