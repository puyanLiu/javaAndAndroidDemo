.class final Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;
.super Ljava/lang/Object;
.source "ScanCallback.java"


# instance fields
.field private flag:I

.field private localName:Ljava/lang/String;

.field private manufacturerData:[B

.field private final scanRecord:[B

.field private final services:Ljava/util/List;

.field private final solicitedServices:Ljava/util/List;

.field private txPowerLevel:I


# direct methods
.method private constructor <init>([B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->flag:I

    .line 160
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->localName:Ljava/lang/String;

    .line 161
    iput v1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->txPowerLevel:I

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->services:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->solicitedServices:Ljava/util/List;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->manufacturerData:[B

    .line 167
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    .line 168
    invoke-direct {p0}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->parse()V

    .line 169
    return-void
.end method

.method synthetic constructor <init>([BLcom/alipay/security/mobile/bracelet/scan/ScanCallback$1;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;-><init>([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;)Ljava/util/List;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->services:Ljava/util/List;

    return-object v0
.end method

.method private parse()V
    .locals 13

    .prologue
    const/16 v12, 0x3e

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x10

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    if-nez v0, :cond_1

    .line 260
    :cond_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    array-length v0, v0

    if-ne v0, v12, :cond_0

    move v2, v1

    .line 179
    :cond_2
    :goto_0
    if-ge v2, v12, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 181
    const/4 v0, -0x1

    if-eq v5, v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v2, v3

    .line 185
    packed-switch v2, :pswitch_data_0

    .line 242
    :goto_1
    :pswitch_0
    add-int v2, v0, v5

    .line 259
    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v3, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->flag:I

    goto :goto_0

    :pswitch_2
    move v2, v0

    move v0, v1

    .line 191
    :goto_2
    if-ge v0, v5, :cond_2

    .line 192
    new-array v3, v11, [B

    .line 193
    iget-object v4, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v4, v2

    aput-byte v2, v3, v10

    .line 194
    iget-object v4, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v2, v6, 0x1

    aget-byte v4, v4, v6

    aput-byte v4, v3, v1

    .line 195
    iget-object v4, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->services:Ljava/util/List;

    invoke-static {v3}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->UUID([B)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :pswitch_3
    move v4, v1

    .line 200
    :goto_3
    if-ge v4, v5, :cond_4

    .line 201
    new-array v6, v9, [B

    move v2, v0

    move v0, v1

    .line 202
    :goto_4
    if-ge v0, v9, :cond_3

    .line 203
    rsub-int/lit8 v7, v0, 0xf

    iget-object v8, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v8, v2

    aput-byte v2, v6, v7

    .line 202
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_4

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->services:Ljava/util/List;

    invoke-static {v6}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->UUID([B)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v4, 0x10

    move v4, v0

    move v0, v2

    goto :goto_3

    :cond_4
    move v2, v0

    .line 207
    goto :goto_0

    :pswitch_4
    move v2, v0

    move v0, v1

    .line 209
    :goto_5
    if-ge v0, v5, :cond_2

    .line 210
    new-array v3, v11, [B

    .line 211
    iget-object v4, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v4, v2

    aput-byte v2, v3, v10

    .line 212
    iget-object v4, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v2, v6, 0x1

    aget-byte v4, v4, v6

    aput-byte v4, v3, v1

    .line 213
    iget-object v4, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->solicitedServices:Ljava/util/List;

    invoke-static {v3}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->UUID([B)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :pswitch_5
    move v4, v1

    .line 217
    :goto_6
    if-ge v4, v5, :cond_6

    .line 218
    new-array v6, v9, [B

    move v2, v0

    move v0, v1

    .line 219
    :goto_7
    if-ge v0, v9, :cond_5

    .line 220
    rsub-int/lit8 v7, v0, 0xf

    iget-object v8, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v8, v2

    aput-byte v2, v6, v7

    .line 219
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_7

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->solicitedServices:Ljava/util/List;

    invoke-static {v6}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->UUID([B)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v4, 0x10

    move v4, v0

    move v0, v2

    goto :goto_6

    :cond_6
    move v2, v0

    .line 224
    goto/16 :goto_0

    .line 226
    :pswitch_6
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int v4, v0, v5

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->localName:Ljava/lang/String;

    goto/16 :goto_1

    .line 231
    :pswitch_7
    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->localName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 232
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int v4, v0, v5

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->localName:Ljava/lang/String;

    .line 235
    :cond_7
    add-int v2, v0, v5

    .line 236
    goto/16 :goto_0

    .line 238
    :pswitch_8
    iget-object v3, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    iput v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->txPowerLevel:I

    goto/16 :goto_0

    .line 241
    :pswitch_9
    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->scanRecord:[B

    add-int v3, v0, v5

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->manufacturerData:[B

    goto/16 :goto_1

    .line 185
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 264
    const-string/jumbo v0, "[[[ AdvData ]]]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nFlag: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->flag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nLocal Name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->localName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nTx Power Level: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->txPowerLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string/jumbo v0, "\nServices:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->solicitedServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    const-string/jumbo v0, "\nSolicited Services:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->solicitedServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->manufacturerData:[B

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nMFG Spec Data: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/security/mobile/bracelet/scan/ScanCallback$AdvData;->manufacturerData:[B

    invoke-static {v2}, Lcom/alipay/security/mobile/bracelet/scan/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
