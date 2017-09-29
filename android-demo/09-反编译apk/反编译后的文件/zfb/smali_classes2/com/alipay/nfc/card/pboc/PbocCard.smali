.class public Lcom/alipay/nfc/card/pboc/PbocCard;
.super Ljava/lang/Object;
.source "PbocCard.java"


# static fields
.field protected static final DFI_EP:[B

.field protected static final DFI_MF:[B

.field protected static final DFN_PSE:[B

.field protected static final DFN_PXX:[B

.field protected static final MAX_LOG:I = 0xa

.field protected static final SFI_EXTRA:I = 0x15

.field protected static final SFI_LOG:I = 0x18

.field protected static final TRANS_CSU:B = 0x6t

.field protected static final TRANS_CSU_CPX:B = 0x9t


# instance fields
.field protected balance_limit:Ljava/lang/String;

.field protected busi_id:Ljava/lang/String;

.field protected busi_type:Ljava/lang/String;

.field protected card_desc:Ljava/lang/String;

.field protected card_type:Ljava/lang/String;

.field protected cash:Ljava/lang/String;

.field protected count:Ljava/lang/String;

.field protected date:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected idcard:Ljava/lang/String;

.field protected log:Ljava/lang/String;

.field protected logList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/nfc/card/pboc/LogInfoInner;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected serl:Ljava/lang/String;

.field protected trans_limit:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 36
    new-array v0, v3, [B

    const/16 v1, 0x3f

    aput-byte v1, v0, v2

    sput-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFI_MF:[B

    .line 37
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFI_EP:[B

    .line 39
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PSE:[B

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x50

    aput-byte v1, v0, v2

    sput-object v0, Lcom/alipay/nfc/card/pboc/PbocCard;->DFN_PXX:[B

    .line 35
    return-void

    .line 37
    :array_0
    .array-data 1
        0x10t
        0x1t
    .end array-data

    .line 39
    nop

    :array_1
    .array-data 1
        0x31t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method protected constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->busi_id:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->getID()Lcom/alipay/nfc/tech/Iso7816$ID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$ID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->id:Ljava/lang/String;

    .line 229
    return-void
.end method

.method protected static addLog(Lcom/alipay/nfc/tech/Iso7816$Response;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/nfc/tech/Iso7816$Response;",
            "Ljava/util/ArrayList",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v2

    .line 259
    array-length v1, v2

    add-int/lit8 v3, v1, -0x17

    .line 260
    if-ltz v3, :cond_0

    .line 263
    :goto_1
    if-le v0, v3, :cond_2

    .line 267
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :cond_2
    add-int/lit8 v1, v0, 0x17

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1
.end method

.method public static load(Landroid/nfc/tech/IsoDep;)Lcom/alipay/nfc/card/pboc/PbocCard;
    .locals 2

    .prologue
    .line 112
    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Tag;

    invoke-direct {v1, p0}, Lcom/alipay/nfc/tech/Iso7816$Tag;-><init>(Landroid/nfc/tech/IsoDep;)V

    .line 114
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->connect()V

    .line 116
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->close()V

    .line 180
    if-eqz v0, :cond_9

    :goto_1
    return-object v0

    .line 124
    :cond_1
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/ShenzhenTong;->load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/ShenzhenTong;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/ChanganTong;->load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/ChanganTong;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/BeijingMunicipal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 142
    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    .line 145
    :cond_4
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/WuhanTong;->load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/WuhanTong;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    .line 152
    :cond_5
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/YangchengTong;->load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/YangchengTong;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 156
    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    .line 159
    :cond_6
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/SuzhouTong;->load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/SuzhouTong;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 163
    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto :goto_0

    .line 166
    :cond_7
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/MyBankCard;->load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/MyBankCard;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 170
    new-instance v0, Lcom/alipay/nfc/card/pboc/LeavedCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/LeavedCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto/16 :goto_0

    .line 173
    :cond_8
    invoke-static {v1}, Lcom/alipay/nfc/card/pboc/HardReader;->load(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/HardReader;

    move-result-object v0

    goto/16 :goto_0

    .line 180
    :cond_9
    new-instance v0, Lcom/alipay/nfc/card/pboc/UnknownCard;

    invoke-direct {v0, v1}, Lcom/alipay/nfc/card/pboc/UnknownCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    goto/16 :goto_1
.end method

.method public static load(Landroid/content/Intent;)Lcom/alipay/nfc/model/CardInfo;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "android.nfc.extra.TAG"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 87
    invoke-static {v0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-static {v0}, Lcom/alipay/nfc/card/pboc/PbocCard;->load(Landroid/nfc/tech/IsoDep;)Lcom/alipay/nfc/card/pboc/PbocCard;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/alipay/nfc/card/pboc/PbocCard;->convertCardInfo()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(Landroid/os/Bundle;)Lcom/alipay/nfc/model/CardInfo;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "android.nfc.extra.TAG"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 100
    invoke-static {v0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-static {v0}, Lcom/alipay/nfc/card/pboc/PbocCard;->load(Landroid/nfc/tech/IsoDep;)Lcom/alipay/nfc/card/pboc/PbocCard;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/alipay/nfc/card/pboc/PbocCard;->convertCardInfo()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(Landroid/nfc/tech/IsoDep;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/PbocCard;->load(Landroid/nfc/tech/IsoDep;)Lcom/alipay/nfc/card/pboc/PbocCard;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/nfc/card/pboc/PbocCard;->convertCardInfo()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    .line 81
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method protected static readLog(Lcom/alipay/nfc/tech/Iso7816$Tag;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/nfc/tech/Iso7816$Tag;",
            "I)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readRecord(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-static {v0, v1}, Lcom/alipay/nfc/card/pboc/PbocCard;->addLog(Lcom/alipay/nfc/tech/Iso7816$Response;Ljava/util/ArrayList;)Z

    .line 282
    :cond_0
    return-object v1

    .line 276
    :cond_1
    const/4 v0, 0x1

    .line 278
    :goto_0
    if-gt v0, v3, :cond_0

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->readRecord(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/nfc/card/pboc/PbocCard;->addLog(Lcom/alipay/nfc/tech/Iso7816$Response;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convertCardInfo()Lcom/alipay/nfc/model/CardInfo;
    .locals 3

    .prologue
    .line 185
    new-instance v1, Lcom/alipay/nfc/model/CardInfo;

    invoke-direct {v1}, Lcom/alipay/nfc/model/CardInfo;-><init>()V

    .line 186
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setId(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->serl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setSerl(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setClass_name(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->card_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->getCardTypeEnumByCode(Ljava/lang/String;)Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setCard_type(Lcom/alipay/nfc/model/CardTypeEnum;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->busi_type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setBusi_type(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->busi_id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setBusi_id(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->version:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setVersion(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->date:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setDate(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->count:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setCount(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->cash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->setCash(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/nfc/model/CardInfo;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "balance_limit"

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->balance_limit:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/nfc/model/CardInfo;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "trans_limit"

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->trans_limit:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/nfc/model/CardInfo;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "idcard"

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->idcard:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/nfc/model/CardInfo;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "card_desc"

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->card_desc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/nfc/model/CardInfo;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->logList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->logList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    return-object v1

    .line 205
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/nfc/card/pboc/LogInfoInner;

    .line 206
    invoke-virtual {p0, v0}, Lcom/alipay/nfc/card/pboc/PbocCard;->convertLogInfo(Lcom/alipay/nfc/card/pboc/LogInfoInner;)Lcom/alipay/nfc/model/LogInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/model/CardInfo;->addLog(Lcom/alipay/nfc/model/LogInfo;)V

    goto :goto_0
.end method

.method protected convertLogInfo(Lcom/alipay/nfc/card/pboc/LogInfoInner;)Lcom/alipay/nfc/model/LogInfo;
    .locals 2

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 217
    :cond_0
    new-instance v0, Lcom/alipay/nfc/model/LogInfo;

    invoke-direct {v0}, Lcom/alipay/nfc/model/LogInfo;-><init>()V

    .line 218
    iget-object v1, p1, Lcom/alipay/nfc/card/pboc/LogInfoInner;->cash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/model/LogInfo;->setCash(Ljava/lang/String;)V

    .line 219
    iget-object v1, p1, Lcom/alipay/nfc/card/pboc/LogInfoInner;->datetime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/model/LogInfo;->setDatetime(Ljava/lang/String;)V

    .line 220
    iget-object v1, p1, Lcom/alipay/nfc/card/pboc/LogInfoInner;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/model/LogInfo;->setCurrency(Ljava/lang/String;)V

    .line 221
    iget-object v1, p1, Lcom/alipay/nfc/card/pboc/LogInfoInner;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/model/LogInfo;->setLocation(Ljava/lang/String;)V

    .line 222
    iget-object v1, p1, Lcom/alipay/nfc/card/pboc/LogInfoInner;->optype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/model/LogInfo;->setOptype(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected formatBalance()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 387
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->cash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->cash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 388
    :cond_0
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    .line 390
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<b>Balance:<font color=\"teal\"> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->cash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v1, "CNY</font></b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->balance_limit:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->balance_limit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 397
    const-string/jumbo v1, "<br/><b>balanceLimit:<font color=\"teal\"> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->balance_limit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CNY</font></b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->trans_limit:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->trans_limit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 404
    const-string/jumbo v1, "<br/><b>transLimit:<font color=\"teal\"> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->trans_limit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CNY</font></b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->idcard:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->idcard:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 411
    const-string/jumbo v1, "<br/><b>IDCard:<font color=\"teal\"> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->idcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    const-string/jumbo v2, "</font></b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_4
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->card_desc:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->card_desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 418
    const-string/jumbo v1, "<br/><b>CardType:<font color=\"teal\"> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 420
    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->card_desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    const-string/jumbo v2, "</font></b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected formatInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->serl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    const-string/jumbo v1, "SEL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->serl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->version:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 356
    const-string/jumbo v1, "<br />VER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->date:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 361
    const-string/jumbo v1, "<br />DAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->count:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 366
    const-string/jumbo v1, "<br />USE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->count:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Time(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected formatLog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->log:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->log:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 383
    :goto_0
    return-object v0

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    const-string/jumbo v1, "<b>Log:</b><small>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v1, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->log:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected parseBalance(Lcom/alipay/nfc/tech/Iso7816$Response;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 335
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->cash:Ljava/lang/String;

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->toInt([BII)I

    move-result v0

    .line 341
    const v1, 0x186a0

    if-gt v0, v1, :cond_2

    const v1, -0x186a0

    if-ge v0, v1, :cond_3

    .line 342
    :cond_2
    const/high16 v1, -0x80000000

    sub-int/2addr v0, v1

    .line 344
    :cond_3
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/alipay/nfc/Util;->toAmountString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->cash:Ljava/lang/String;

    goto :goto_0
.end method

.method protected parseInfo(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V
    .locals 9

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->count:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->serl:Ljava/lang/String;

    .line 251
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/nfc/tech/Iso7816$Response;->getBytes()[B

    move-result-object v1

    .line 238
    if-lez p2, :cond_2

    const/16 v0, 0xa

    if-le p2, v0, :cond_3

    .line 239
    :cond_2
    const/16 v0, 0xc

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->serl:Ljava/lang/String;

    .line 247
    :goto_1
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    aget-byte v0, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->version:Ljava/lang/String;

    .line 248
    const-string/jumbo v0, "%02X%02X.%02X.%02X - %02X%02X.%02X.%02X"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x14

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 249
    const/16 v4, 0x15

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x16

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x17

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x18

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x19

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x1a

    aget-byte v4, v1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x1b

    aget-byte v1, v1, v4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v3

    .line 248
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->date:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->count:Ljava/lang/String;

    goto/16 :goto_0

    .line 241
    :cond_3
    if-eqz p3, :cond_4

    const/16 v0, 0x13

    invoke-static {v1, v0, p2}, Lcom/alipay/nfc/Util;->toIntR([BII)I

    move-result v0

    .line 244
    :goto_3
    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide v5, 0xffffffffL

    int-to-long v7, v0

    and-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->serl:Ljava/lang/String;

    goto/16 :goto_1

    .line 242
    :cond_4
    rsub-int/lit8 v0, p2, 0x14

    .line 241
    invoke-static {v1, v0, p2}, Lcom/alipay/nfc/Util;->toInt([BII)I

    move-result v0

    goto :goto_3

    .line 247
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method protected varargs parseLog([Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->logList:Ljava/util/List;

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    array-length v4, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->log:Ljava/lang/String;

    .line 332
    return-void

    .line 290
    :cond_0
    aget-object v0, p1, v2

    .line 291
    if-eqz v0, :cond_3

    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 295
    const-string/jumbo v1, "<br />--------------"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 290
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 297
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 299
    const/4 v1, 0x5

    const/4 v6, 0x4

    invoke-static {v0, v1, v6}, Lcom/alipay/nfc/Util;->toInt([BII)I

    move-result v6

    .line 300
    if-lez v6, :cond_2

    .line 302
    new-instance v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;

    invoke-direct {v7}, Lcom/alipay/nfc/card/pboc/LogInfoInner;-><init>()V

    .line 304
    const-string/jumbo v1, "%02X%02X.%02X.%02X %02X:%02X "

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x10

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x11

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 305
    const/16 v10, 0x12

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/16 v10, 0x13

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/16 v10, 0x14

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/16 v10, 0x15

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const/16 v10, 0x16

    aget-byte v10, v0, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    .line 303
    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->datetime:Ljava/lang/String;

    .line 306
    const-string/jumbo v1, "<br />"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->datetime:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const/16 v1, 0x9

    aget-byte v1, v0, v1

    const/4 v8, 0x6

    if-eq v1, v8, :cond_5

    const/16 v1, 0x9

    aget-byte v1, v0, v1

    const/16 v8, 0x9

    if-ne v1, v8, :cond_6

    :cond_5
    const/16 v1, 0x2d

    .line 311
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v1, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v1, v6

    invoke-static {v1}, Lcom/alipay/nfc/Util;->toAmountString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->cash:Ljava/lang/String;

    .line 312
    iget-object v1, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->cash:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const/4 v1, 0x2

    const/4 v6, 0x3

    invoke-static {v0, v1, v6}, Lcom/alipay/nfc/Util;->toInt([BII)I

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " ["

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa

    const/4 v8, 0x6

    invoke-static {v0, v6, v8}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->location:Ljava/lang/String;

    .line 324
    iget-object v0, v7, Lcom/alipay/nfc/card/pboc/LogInfoInner;->location:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v0, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->logList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 309
    :cond_6
    const/16 v1, 0x2b

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/alipay/nfc/card/pboc/PbocCard;->formatInfo()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Lcom/alipay/nfc/card/pboc/PbocCard;->formatLog()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {p0}, Lcom/alipay/nfc/card/pboc/PbocCard;->formatBalance()Ljava/lang/String;

    move-result-object v2

    .line 432
    iget-object v3, p0, Lcom/alipay/nfc/card/pboc/PbocCard;->name:Ljava/lang/String;

    invoke-static {v3, v0, v2, v1}, Lcom/alipay/nfc/card/CardManager;->buildResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
