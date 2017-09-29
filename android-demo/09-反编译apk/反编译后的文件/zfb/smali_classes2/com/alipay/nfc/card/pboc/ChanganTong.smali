.class final Lcom/alipay/nfc/card/pboc/ChanganTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "ChanganTong.java"


# static fields
.field private static final DFN_SRV:[B

.field private static final citys:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [B

    const/16 v1, -0x60

    aput-byte v1, v0, v4

    const/4 v1, 0x4

    .line 25
    aput-byte v3, v0, v1

    const/4 v1, 0x5

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    .line 26
    aput-byte v7, v0, v7

    const/16 v1, 0x8

    aput-byte v5, v0, v1

    .line 24
    sput-object v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->DFN_SRV:[B

    .line 28
    const/16 v0, 0x23

    new-array v0, v0, [[Ljava/lang/String;

    .line 29
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "\u4e0a\u6d77"

    aput-object v2, v1, v4

    const-string/jumbo v2, "2000"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 30
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "\u5b81\u6ce2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "3150"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 31
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "\u5929\u6d25"

    aput-object v2, v1, v4

    const-string/jumbo v2, "3000"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 32
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "\u6c88\u9633"

    aput-object v2, v1, v4

    const-string/jumbo v2, "1100"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    .line 33
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u798f\u5dde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3500"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 34
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u4e09\u4e9a"

    aput-object v3, v2, v4

    const-string/jumbo v3, "5720"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 35
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6e5b\u6c5f"

    aput-object v3, v2, v4

    const-string/jumbo v3, "5240"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 36
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "\u65e0\u9521"

    aput-object v2, v1, v4

    const-string/jumbo v2, "2140"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/16 v1, 0x8

    .line 37
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u5357\u901a"

    aput-object v3, v2, v4

    const-string/jumbo v3, "2263"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 38
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u846b\u82a6\u5c9b"

    aput-object v3, v2, v4

    const-string/jumbo v3, "1250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 39
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u8fbd\u6e90"

    aput-object v3, v2, v4

    const-string/jumbo v3, "1362"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 40
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u677e\u539f"

    aput-object v3, v2, v4

    const-string/jumbo v3, "1310"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 41
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u514b\u62c9\u739b\u4f9d"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8340"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 42
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6986\u6797"

    aput-object v3, v2, v4

    const-string/jumbo v3, "7190"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 43
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u9f99\u5ca9"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3640"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 44
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u821f\u5c71"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3160"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 45
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6cf0\u5dde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "2253"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 46
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u957f\u5174"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3131"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 47
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u9a7b\u9a6c\u5e97"

    aput-object v3, v2, v4

    const-string/jumbo v3, "4630"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 48
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u9e70\u6f6d"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3350"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 49
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u51ef\u91cc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "5560"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 50
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u5357\u660c"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3300"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 51
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6c38\u5dde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "4250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 52
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u9526\u5dde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "1210"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 53
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6c5f\u6cb9"

    aput-object v3, v2, v4

    const-string/jumbo v3, "6217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 54
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u629a\u987a"

    aput-object v3, v2, v4

    const-string/jumbo v3, "1130"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 55
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6606\u5c71"

    aput-object v3, v2, v4

    const-string/jumbo v3, "2153"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 56
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6c5f\u9634"

    aput-object v3, v2, v4

    const-string/jumbo v3, "2144"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 57
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6dee\u5b89"

    aput-object v3, v2, v4

    const-string/jumbo v3, "2232"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 58
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u7ecd\u5174"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3120"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 59
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u6e56\u5dde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3130"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 60
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u53f0\u5dde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "3180"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 61
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u5e38\u719f"

    aput-object v3, v2, v4

    const-string/jumbo v3, "2155"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 62
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u5170\u5dde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "7300"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 63
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "\u767d\u94f6"

    aput-object v3, v2, v4

    const-string/jumbo v3, "7309"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 28
    sput-object v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->citys:[[Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 69
    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/ChanganTong;->card_type:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "\u57ce\u5e02\u4e00\u5361\u901a"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/ChanganTong;->busi_type:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static final load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/ChanganTong;
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 79
    sget-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    .line 89
    sget-object v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->DFN_SRV:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v3

    .line 99
    invoke-virtual {p0, v10}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 104
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/alipay/nfc/card/pboc/ChanganTong;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 109
    new-instance v0, Lcom/alipay/nfc/card/pboc/ChanganTong;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/ChanganTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/alipay/nfc/card/pboc/ChanganTong;->parseBalance(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 112
    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v11, v11}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    .line 113
    sget-object v6, Lcom/alipay/nfc/card/pboc/ChanganTong;->citys:[[Ljava/lang/String;

    array-length v7, v6

    move v1, v2

    :goto_0
    if-lt v1, v7, :cond_1

    .line 123
    :goto_1
    const-string/jumbo v1, "2000"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->serl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->serl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->serl:Ljava/lang/String;

    const/16 v6, 0x8

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->serl:Ljava/lang/String;

    const/16 v6, 0x8

    invoke-virtual {v5, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    iget-object v5, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->serl:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->serl:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    iget-object v5, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->serl:Ljava/lang/String;

    invoke-virtual {v5, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->serl:Ljava/lang/String;

    .line 129
    :cond_0
    invoke-virtual {v0, v3, v12, v2}, Lcom/alipay/nfc/card/pboc/ChanganTong;->parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V

    .line 133
    :goto_2
    new-array v1, v10, [Ljava/util/ArrayList;

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/card/pboc/ChanganTong;->parseLog([Ljava/util/ArrayList;)V

    .line 139
    :goto_3
    return-object v0

    .line 113
    :cond_1
    aget-object v8, v6, v1

    .line 114
    aget-object v9, v8, v10

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v6, v8, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " \u57ce\u5e02\u4e00\u5361\u901a"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->busi_type:Ljava/lang/String;

    .line 117
    aget-object v1, v8, v10

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/ChanganTong;->busi_id:Ljava/lang/String;

    goto/16 :goto_1

    .line 113
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 131
    :cond_3
    invoke-virtual {v0, v3, v2, v2}, Lcom/alipay/nfc/card/pboc/ChanganTong;->parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V

    goto :goto_2

    .line 139
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
