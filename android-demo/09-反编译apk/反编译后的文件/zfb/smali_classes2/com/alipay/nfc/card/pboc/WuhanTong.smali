.class final Lcom/alipay/nfc/card/pboc/WuhanTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "WuhanTong.java"


# static fields
.field private static final DFN_SRV:[B

.field private static final SFI_INFO:I = 0x5

.field private static final SFI_SERL:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/WuhanTong;->DFN_SRV:[B

    .line 23
    return-void

    .line 27
    :array_0
    .array-data 1
        0x41t
        0x50t
        0x31t
        0x2et
        0x57t
        0x48t
        0x43t
        0x54t
        0x43t
    .end array-data
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 34
    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->card_type:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "\u6b66\u6c49\u57ce\u5e02\u4e00\u5361\u901a"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->busi_type:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "wuhan"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->busi_id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static final load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/WuhanTong;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 45
    sget-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 88
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v5}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    .line 63
    sget-object v4, Lcom/alipay/nfc/card/pboc/WuhanTong;->DFN_SRV:[B

    invoke-virtual {p0, v4}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    invoke-virtual {p0, v5}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    .line 74
    :cond_2
    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/alipay/nfc/card/pboc/WuhanTong;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 79
    new-instance v1, Lcom/alipay/nfc/card/pboc/WuhanTong;

    invoke-direct {v1, p0}, Lcom/alipay/nfc/card/pboc/WuhanTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/alipay/nfc/card/pboc/WuhanTong;->parseBalance(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 81
    invoke-direct {v1, v2, v3}, Lcom/alipay/nfc/card/pboc/WuhanTong;->parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 82
    new-array v0, v5, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/card/pboc/WuhanTong;->parseLog([Ljava/util/ArrayList;)V

    move-object v0, v1

    .line 84
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 88
    goto :goto_0
.end method

.method private parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;Lcom/alipay/nfc/tech/Iso7816$Response;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v1, 0x1b

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/alipay/nfc/tech/Iso7816$Response;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 93
    :cond_0
    iput-object v7, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->count:Ljava/lang/String;

    iput-object v7, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->date:Ljava/lang/String;

    iput-object v7, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->version:Ljava/lang/String;

    iput-object v7, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->serl:Ljava/lang/String;

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v4, v6}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->serl:Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x18

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->version:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "%02X%02X.%02X.%02X - %02X%02X.%02X.%02X"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x14

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    .line 101
    const/16 v3, 0x15

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const/16 v4, 0x16

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x17

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x10

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x11

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x6

    const/16 v4, 0x12

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x13

    aget-byte v0, v0, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    .line 100
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->date:Ljava/lang/String;

    .line 102
    iput-object v7, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->count:Ljava/lang/String;

    goto/16 :goto_0
.end method
