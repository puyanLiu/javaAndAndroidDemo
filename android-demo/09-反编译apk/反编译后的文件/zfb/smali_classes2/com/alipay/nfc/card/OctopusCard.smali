.class public Lcom/alipay/nfc/card/OctopusCard;
.super Ljava/lang/Object;
.source "OctopusCard.java"


# static fields
.field private static final SRV_OCTOPUS:I = 0x117

.field private static final SRV_SZT:I = 0x118

.field private static final SYS_OCTOPUS:I = 0x8008

.field private static final SYS_SZT:I = 0x8005


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Intent;Landroid/content/res/Resources;)Lcom/alipay/nfc/model/CardInfo;
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "android.nfc.extra.TAG"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 37
    invoke-static {v0}, Landroid/nfc/tech/NfcF;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcF;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    new-instance v0, Lcom/alipay/nfc/model/CardInfo;

    invoke-direct {v0}, Lcom/alipay/nfc/model/CardInfo;-><init>()V

    .line 41
    invoke-static {v1, v0, p1}, Lcom/alipay/nfc/card/OctopusCard;->load(Landroid/nfc/tech/NfcF;Lcom/alipay/nfc/model/CardInfo;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(Landroid/nfc/tech/NfcF;Lcom/alipay/nfc/model/CardInfo;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x3

    const/4 v3, 0x0

    .line 49
    new-instance v6, Lcom/alipay/nfc/tech/FeliCa$Tag;

    invoke-direct {v6, p0}, Lcom/alipay/nfc/tech/FeliCa$Tag;-><init>(Landroid/nfc/tech/NfcF;)V

    .line 55
    invoke-virtual {v6}, Lcom/alipay/nfc/tech/FeliCa$Tag;->getSystemCode()I

    move-result v7

    .line 57
    const v0, 0x8008

    if-ne v7, v0, :cond_1

    .line 58
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    const/16 v2, 0x117

    invoke-direct {v0, v2}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;-><init>(I)V

    .line 64
    :goto_0
    invoke-virtual {v6}, Lcom/alipay/nfc/tech/FeliCa$Tag;->connect()V

    .line 70
    new-array v8, v11, [F

    fill-array-data v8, :array_0

    move v2, v3

    move v4, v3

    .line 74
    :goto_1
    if-lt v4, v11, :cond_3

    .line 82
    :cond_0
    invoke-virtual {v6}, Lcom/alipay/nfc/tech/FeliCa$Tag;->close()V

    .line 88
    const-string/jumbo v0, "TRANS_CARD"

    invoke-static {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getCardTypeEnumByCode(Ljava/lang/String;)Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/nfc/model/CardInfo;->setCard_type(Lcom/alipay/nfc/model/CardTypeEnum;)V

    .line 90
    invoke-static {v7, p1, p2}, Lcom/alipay/nfc/card/OctopusCard;->parseName(ILcom/alipay/nfc/model/CardInfo;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v6, p1, p2}, Lcom/alipay/nfc/card/OctopusCard;->parseInfo(Lcom/alipay/nfc/tech/FeliCa$Tag;Lcom/alipay/nfc/model/CardInfo;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v1, p2}, Lcom/alipay/nfc/card/OctopusCard;->parseLog([BLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v8, v4, p1, p2}, Lcom/alipay/nfc/card/OctopusCard;->parseBalance([FILcom/alipay/nfc/model/CardInfo;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v0, v2, v3, v1}, Lcom/alipay/nfc/card/CardManager;->buildResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 59
    :cond_1
    const v0, 0x8005

    if-ne v7, v0, :cond_2

    .line 60
    new-instance v0, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;

    const/16 v2, 0x118

    invoke-direct {v0, v2}, Lcom/alipay/nfc/tech/FeliCa$ServiceCode;-><init>(I)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 62
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v6, v0, v2}, Lcom/alipay/nfc/tech/FeliCa$Tag;->readWithoutEncryption(Lcom/alipay/nfc/tech/FeliCa$ServiceCode;B)Lcom/alipay/nfc/tech/FeliCa$ReadResponse;

    move-result-object v9

    .line 76
    invoke-virtual {v9}, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->isOkey()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v9}, Lcom/alipay/nfc/tech/FeliCa$ReadResponse;->getBlockData()[B

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v9, v3, v10}, Lcom/alipay/nfc/Util;->toInt([BII)I

    move-result v9

    add-int/lit16 v9, v9, -0x15e

    int-to-float v9, v9

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    aput v9, v8, v4

    .line 74
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    move v4, v5

    goto :goto_1

    .line 70
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static parseBalance([FILcom/alipay/nfc/model/CardInfo;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 128
    if-gtz p1, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 131
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const-string/jumbo v0, "<b>Balance: <font color=\"teal\">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, p1, :cond_1

    .line 148
    const-string/jumbo v0, "HKD</font></b>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    aget v0, p0, v1

    invoke-static {v0}, Lcom/alipay/nfc/Util;->toAmountString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p2}, Lcom/alipay/nfc/model/CardInfo;->getCash()Ljava/lang/String;

    move-result-object v0

    .line 141
    if-nez v0, :cond_2

    .line 142
    const-string/jumbo v0, ""

    .line 144
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v0, p0, v1

    invoke-static {v0}, Lcom/alipay/nfc/Util;->toAmountString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/nfc/model/CardInfo;->setCash(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private static parseInfo(Lcom/alipay/nfc/tech/FeliCa$Tag;Lcom/alipay/nfc/model/CardInfo;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string/jumbo v1, "<b>ID:</b> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->getIDm()Lcom/alipay/nfc/tech/FeliCa$IDm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/FeliCa$IDm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, "<br />PMm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->getPMm()Lcom/alipay/nfc/tech/FeliCa$PMm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/FeliCa$PMm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->getIDm()Lcom/alipay/nfc/tech/FeliCa$IDm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/FeliCa$IDm;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/nfc/model/CardInfo;->setId(Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->getIDm()Lcom/alipay/nfc/tech/FeliCa$IDm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/FeliCa$IDm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/nfc/tech/FeliCa$Tag;->getPMm()Lcom/alipay/nfc/tech/FeliCa$PMm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/FeliCa$PMm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/nfc/model/CardInfo;->setSerl(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseLog([BLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseName(ILcom/alipay/nfc/model/CardInfo;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const v0, 0x8008

    if-ne p0, v0, :cond_0

    .line 100
    const-string/jumbo v0, "\u516b\u8fbe\u901a\u5361\uff08\u9999\u6e2f\uff09"

    invoke-virtual {p1, v0}, Lcom/alipay/nfc/model/CardInfo;->setBusi_type(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "Octopus Card (Hong Kong)"

    .line 109
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const v0, 0x8005

    if-ne p0, v0, :cond_1

    .line 105
    const-string/jumbo v0, "\u6df1\u5733\u901a\u5361"

    invoke-virtual {p1, v0}, Lcom/alipay/nfc/model/CardInfo;->setBusi_type(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "Shenzhen Tong (Old version)"

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
