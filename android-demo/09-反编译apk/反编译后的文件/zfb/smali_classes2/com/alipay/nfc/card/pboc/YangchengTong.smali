.class final Lcom/alipay/nfc/card/pboc/YangchengTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "YangchengTong.java"


# static fields
.field private static final DFN_SRV:[B

.field private static final DFN_SRV_S1:[B

.field private static final DFN_SRV_S2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 24
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->DFN_SRV:[B

    .line 27
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->DFN_SRV_S1:[B

    .line 31
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->DFN_SRV_S2:[B

    .line 23
    return-void

    .line 24
    :array_0
    .array-data 1
        0x50t
        0x41t
        0x59t
        0x2et
        0x41t
        0x50t
        0x50t
        0x59t
    .end array-data

    .line 27
    :array_1
    .array-data 1
        0x50t
        0x41t
        0x59t
        0x2et
        0x50t
        0x41t
        0x53t
        0x44t
    .end array-data

    .line 31
    :array_2
    .array-data 1
        0x50t
        0x41t
        0x59t
        0x2et
        0x54t
        0x49t
        0x43t
        0x4ct
    .end array-data
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 38
    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->card_type:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "\u5cad\u5357\u901a\u5361\uff08\u7f8a\u57ce\u901a\uff09"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->busi_type:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "yangcheng"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->busi_id:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static final load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/YangchengTong;
    .locals 7

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 49
    sget-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->DFN_SRV:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v3

    .line 66
    invoke-virtual {p0, v5}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    .line 71
    sget-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->DFN_SRV_S1:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v6}, Lcom/alipay/nfc/card/pboc/YangchengTong;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    :goto_0
    sget-object v2, Lcom/alipay/nfc/card/pboc/YangchengTong;->DFN_SRV_S2:[B

    invoke-virtual {p0, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v6}, Lcom/alipay/nfc/card/pboc/YangchengTong;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    :cond_0
    new-instance v2, Lcom/alipay/nfc/card/pboc/YangchengTong;

    invoke-direct {v2, p0}, Lcom/alipay/nfc/card/pboc/YangchengTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 81
    invoke-virtual {v2, v4}, Lcom/alipay/nfc/card/pboc/YangchengTong;->parseBalance(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 82
    invoke-direct {v2, v3}, Lcom/alipay/nfc/card/pboc/YangchengTong;->parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 83
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/ArrayList;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/alipay/nfc/card/pboc/YangchengTong;->parseLog([Ljava/util/ArrayList;)V

    move-object v1, v2

    .line 89
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    .line 72
    goto :goto_0
.end method

.method private parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 94
    :cond_0
    iput-object v8, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->count:Ljava/lang/String;

    iput-object v8, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->date:Ljava/lang/String;

    iput-object v8, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->version:Ljava/lang/String;

    iput-object v8, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->serl:Ljava/lang/String;

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v0

    .line 99
    const/16 v1, 0xb

    invoke-static {v0, v1, v7}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->serl:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "%02X.%02X"

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0x2c

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x2d

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->version:Ljava/lang/String;

    .line 101
    const-string/jumbo v1, "%02X%02X.%02X.%02X - %02X%02X.%02X.%02X"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x17

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    .line 102
    const/16 v3, 0x18

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x19

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const/16 v4, 0x1a

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

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

    const/4 v3, 0x6

    const/16 v4, 0x1d

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x1e

    aget-byte v0, v0, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    .line 101
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->date:Ljava/lang/String;

    .line 103
    iput-object v8, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->count:Ljava/lang/String;

    goto/16 :goto_0
.end method
