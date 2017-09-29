.class public final Lcom/alipay/nfc/tech/Iso7816$BerL;
.super Lcom/alipay/nfc/tech/Iso7816;
.source "Iso7816.java"


# instance fields
.field private final val:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/Iso7816;-><init>([B)V

    .line 248
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/nfc/tech/Iso7816$BerL;->calc([BI)I

    move-result v0

    iput v0, p0, Lcom/alipay/nfc/tech/Iso7816$BerL;->val:I

    .line 249
    return-void
.end method

.method public static calc([BI)I
    .locals 3

    .prologue
    .line 226
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 227
    const/4 v0, 0x0

    .line 229
    aget-byte v1, p0, p1

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    .line 230
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-le p1, v1, :cond_0

    .line 238
    :goto_1
    return v0

    .line 231
    :cond_0
    shl-int/lit8 v0, v0, 0x8

    .line 232
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    goto :goto_0

    .line 238
    :cond_1
    aget-byte v0, p0, p1

    goto :goto_1
.end method

.method public static read([BI)Lcom/alipay/nfc/tech/Iso7816$BerL;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerL;

    .line 243
    invoke-static {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$BerL;->test([BI)I

    move-result v1

    add-int/2addr v1, p1

    .line 242
    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerL;-><init>([B)V

    return-object v0
.end method

.method public static test([BI)I
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x1

    .line 219
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 220
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    .line 222
    :cond_0
    return v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/alipay/nfc/tech/Iso7816$BerL;->val:I

    return v0
.end method
