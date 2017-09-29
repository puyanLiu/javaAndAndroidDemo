.class public final Lcom/alipay/nfc/card/pboc/HardReader;
.super Lcom/alipay/nfc/card/pboc/PbocCard;
.source "HardReader.java"


# static fields
.field public static final TMPL_PDE:B = 0x61t

.field public static final TMPL_PDR:B = 0x70t


# direct methods
.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;[B)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 30
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->name:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->card_type:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/alipay/nfc/Util;->byte2hexString([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "a00000000386980703"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const-string/jumbo v0, "\u53f0\u5dde\u901a"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->busi_type:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "taizhou"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->busi_id:Ljava/lang/String;

    .line 42
    :goto_1
    return-void

    .line 31
    :cond_0
    const-string/jumbo v0, "Unknown Tag"

    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v0, "?"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->busi_type:Ljava/lang/String;

    goto :goto_1
.end method

.method private static findAID(Lcom/alipay/nfc/tech/Iso7816$Response;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-static {p0}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->read(Lcom/alipay/nfc/tech/Iso7816;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v1

    .line 174
    iget-object v2, v1, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->t:Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v3, 0x70

    invoke-virtual {v2, v3}, Lcom/alipay/nfc/tech/Iso7816$BerT;->match(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    sget-object v2, Lcom/alipay/nfc/tech/Iso7816$BerT;->CLASS_ADO:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v1, v2}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->getChildByTag(Lcom/alipay/nfc/tech/Iso7816$BerT;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    sget-object v2, Lcom/alipay/nfc/tech/Iso7816$BerT;->CLASS_AID:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v1, v2}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->getChildByTag(Lcom/alipay/nfc/tech/Iso7816$BerT;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->v:Lcom/alipay/nfc/tech/Iso7816$BerV;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerV;->getBytes()[B

    move-result-object v0

    .line 182
    :cond_0
    return-object v0
.end method

.method private static findAIDs(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/nfc/tech/Iso7816$Tag;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 157
    :goto_0
    const/16 v0, 0x1f

    if-le v2, v0, :cond_0

    .line 169
    return-object v4

    .line 158
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readRecord(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 159
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v5

    if-nez v5, :cond_2

    .line 157
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/HardReader;->findAID(Lcom/alipay/nfc/tech/Iso7816$Response;)[B

    move-result-object v1

    .line 161
    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p0, v2, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readRecord(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getBalance(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getBalance(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    goto :goto_0
.end method

.method public static final load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/HardReader;
    .locals 11

    .prologue
    const/16 v9, 0x18

    const/16 v8, 0x15

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 50
    sget-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFI_MF:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByID([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v2

    .line 56
    :cond_1
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->getBalance(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->findAIDs(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v2

    move-object v4, v0

    move-object v0, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    .line 95
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v3

    if-nez v3, :cond_4

    .line 96
    :cond_2
    sget-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PXX:[B

    invoke-static {p0, v0}, Lcom/alipay/nfc/card/pboc/HardReader;->selectAID(Lcom/alipay/nfc/tech/Iso7816$Tag;[B)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->getBalance(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    .line 101
    :cond_3
    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 102
    invoke-static {p0, v9}, Lcom/alipay/nfc/card/pboc/HardReader;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    move-object v3, v1

    move-object v1, v0

    move-object v0, v4

    .line 108
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    sget-object v4, Lcom/alipay/nfc/card/pboc/PbocCard;->DFI_EP:[B

    invoke-virtual {p0, v4}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByID([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 109
    sget-object v1, Lcom/alipay/nfc/card/pboc/PbocCard;->DFI_EP:[B

    .line 111
    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v3

    if-nez v3, :cond_6

    .line 112
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->getBalance(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    .line 114
    :cond_6
    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v3

    .line 115
    invoke-static {p0, v9}, Lcom/alipay/nfc/card/pboc/HardReader;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    move-object v10, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v10

    .line 118
    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v4

    if-nez v4, :cond_8

    if-nez v1, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_0

    .line 124
    :cond_8
    new-instance v2, Lcom/alipay/nfc/card/pboc/HardReader;

    invoke-direct {v2, p0, v0}, Lcom/alipay/nfc/card/pboc/HardReader;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;[B)V

    .line 125
    invoke-virtual {v2, v3}, Lcom/alipay/nfc/card/pboc/HardReader;->parseBalance(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    .line 127
    if-eqz v1, :cond_9

    .line 128
    invoke-virtual {v2, v1, v7, v7}, Lcom/alipay/nfc/card/pboc/HardReader;->parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V

    .line 130
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    aput-object v5, v0, v7

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/card/pboc/HardReader;->parseLog([Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 66
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 71
    invoke-static {p0, v0}, Lcom/alipay/nfc/card/pboc/HardReader;->selectAID(Lcom/alipay/nfc/tech/Iso7816$Tag;[B)[B

    move-result-object v3

    if-eqz v3, :cond_e

    .line 75
    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-nez v0, :cond_b

    .line 76
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->getBalance(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    .line 81
    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-nez v0, :cond_d

    .line 82
    :cond_c
    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readBinary(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    .line 87
    :goto_2
    invoke-static {p0, v9}, Lcom/alipay/nfc/card/pboc/HardReader;->readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_1

    :cond_d
    move-object v0, v1

    goto :goto_2

    :cond_e
    move-object v0, v3

    goto/16 :goto_1
.end method

.method private static selectAID(Lcom/alipay/nfc/tech/Iso7816$Tag;[B)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    sget-object v1, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    sget-object v1, Lcom/alipay/nfc/card/pboc/PbocCard;->DFI_MF:[B

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByID([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    .line 151
    :cond_0
    :goto_0
    return-object p1

    .line 140
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->selectByName([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v0

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    invoke-static {v1}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->read(Lcom/alipay/nfc/tech/Iso7816;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    .line 145
    iget-object v1, v0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->t:Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lcom/alipay/nfc/tech/Iso7816$BerT;->match(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Lcom/alipay/nfc/tech/Iso7816$BerT;->CLASS_DFN:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->getChildByTag(Lcom/alipay/nfc/tech/Iso7816$BerT;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v0, v0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->v:Lcom/alipay/nfc/tech/Iso7816$BerV;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerV;->getBytes()[B

    move-result-object p1

    goto :goto_0
.end method
