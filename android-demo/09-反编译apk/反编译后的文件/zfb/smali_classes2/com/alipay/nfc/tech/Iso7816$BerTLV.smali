.class public final Lcom/alipay/nfc/tech/Iso7816$BerTLV;
.super Lcom/alipay/nfc/tech/Iso7816;
.source "Iso7816.java"


# instance fields
.field public final l:Lcom/alipay/nfc/tech/Iso7816$BerL;

.field public final t:Lcom/alipay/nfc/tech/Iso7816$BerT;

.field public final v:Lcom/alipay/nfc/tech/Iso7816$BerV;


# direct methods
.method public constructor <init>(Lcom/alipay/nfc/tech/Iso7816$BerT;Lcom/alipay/nfc/tech/Iso7816$BerL;Lcom/alipay/nfc/tech/Iso7816$BerV;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/alipay/nfc/tech/Iso7816;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->t:Lcom/alipay/nfc/tech/Iso7816$BerT;

    .line 321
    iput-object p2, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->l:Lcom/alipay/nfc/tech/Iso7816$BerL;

    .line 322
    iput-object p3, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->v:Lcom/alipay/nfc/tech/Iso7816$BerV;

    .line 323
    return-void
.end method

.method public static read(Lcom/alipay/nfc/tech/Iso7816;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->read([BI)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    return-object v0
.end method

.method public static read([BI)Lcom/alipay/nfc/tech/Iso7816$BerTLV;
    .locals 5

    .prologue
    .line 280
    invoke-static {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$BerT;->read([BI)Lcom/alipay/nfc/tech/Iso7816$BerT;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;->size()I

    move-result v1

    add-int/2addr v1, p1

    .line 284
    invoke-static {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerL;->read([BI)Lcom/alipay/nfc/tech/Iso7816$BerL;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$BerL;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 287
    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$BerL;->toInt()I

    move-result v3

    invoke-static {p0, v1, v3}, Lcom/alipay/nfc/tech/Iso7816$BerV;->read([BII)Lcom/alipay/nfc/tech/Iso7816$BerV;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$BerV;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 290
    new-instance v4, Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    invoke-direct {v4, v0, v2, v3}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;-><init>(Lcom/alipay/nfc/tech/Iso7816$BerT;Lcom/alipay/nfc/tech/Iso7816$BerL;Lcom/alipay/nfc/tech/Iso7816$BerV;)V

    .line 291
    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->data:[B

    .line 293
    return-object v4
.end method

.method public static readList(Lcom/alipay/nfc/tech/Iso7816;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/nfc/tech/Iso7816;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/nfc/tech/Iso7816$BerTLV;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->readList([B)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static readList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/nfc/tech/Iso7816$BerTLV;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    const/4 v0, 0x0

    .line 304
    array-length v2, p0

    add-int/lit8 v2, v2, -0x3

    .line 305
    :goto_0
    if-lt v0, v2, :cond_0

    .line 312
    return-object v1

    .line 306
    :cond_0
    invoke-static {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->read([BI)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v3

    .line 307
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public static test([BI)I
    .locals 3

    .prologue
    .line 268
    invoke-static {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$BerT;->test([BI)I

    move-result v0

    .line 269
    add-int v1, p1, v0

    invoke-static {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerL;->test([BI)I

    move-result v1

    .line 270
    add-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/alipay/nfc/tech/Iso7816$BerL;->calc([BI)I

    move-result v2

    .line 272
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public final getChild(I)Lcom/alipay/nfc/tech/Iso7816$BerTLV;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->t:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$BerT;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->v:Lcom/alipay/nfc/tech/Iso7816$BerV;

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$BerV;->getBytes()[B

    move-result-object v3

    .line 345
    array-length v4, v3

    move v2, v0

    .line 348
    :goto_0
    if-lt v2, v4, :cond_1

    .line 356
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 349
    :cond_1
    add-int/lit8 v1, v0, 0x1

    if-ne v0, p1, :cond_2

    .line 350
    invoke-static {v3, v2}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->read([BI)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    goto :goto_1

    .line 352
    :cond_2
    invoke-static {v3, v2}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->test([BI)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public final getChildByTag(Lcom/alipay/nfc/tech/Iso7816$BerT;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->t:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->v:Lcom/alipay/nfc/tech/Iso7816$BerV;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerV;->getBytes()[B

    move-result-object v1

    .line 328
    const/4 v0, 0x0

    .line 329
    array-length v2, v1

    .line 330
    :goto_0
    if-lt v0, v2, :cond_1

    .line 338
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 331
    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/alipay/nfc/tech/Iso7816$BerT;->match([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    invoke-static {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->read([BI)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    goto :goto_1

    .line 334
    :cond_2
    invoke-static {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->test([BI)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method
