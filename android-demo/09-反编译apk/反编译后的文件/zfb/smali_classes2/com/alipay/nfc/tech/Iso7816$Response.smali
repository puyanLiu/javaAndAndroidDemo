.class public final Lcom/alipay/nfc/tech/Iso7816$Response;
.super Lcom/alipay/nfc/tech/Iso7816;
.source "Iso7816.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:[B

.field public static final ERROR:[B

.field private static final serialVersionUID:J = -0x6f66b31889722d8aL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    new-array v0, v2, [B

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$Response;->EMPTY:[B

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x6f

    aput-byte v1, v0, v2

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$Response;->ERROR:[B

    .line 88
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 97
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object p1, Lcom/alipay/nfc/tech/Iso7816$Response;->ERROR:[B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/Iso7816;-><init>([B)V

    .line 98
    return-void
.end method


# virtual methods
.method public final equalsSw12(S)Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Response;->getSw12()S

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBytes()[B
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Response;->isOkey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Response;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 128
    :cond_0
    sget-object v0, Lcom/alipay/nfc/tech/Iso7816$Response;->EMPTY:[B

    goto :goto_0
.end method

.method public final getBytes(B)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    .line 134
    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 141
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 134
    :cond_0
    aget-byte v4, v2, v0

    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    if-ne v4, p1, :cond_1

    .line 138
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    add-int/2addr v1, v3

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getBytes([B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v3, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    move v0, v1

    .line 147
    :goto_0
    array-length v2, v3

    array-length v4, p1

    sub-int/2addr v2, v4

    if-lt v0, v2, :cond_0

    .line 159
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move v2, v1

    .line 152
    :goto_2
    array-length v4, p1

    if-lt v2, v4, :cond_2

    .line 154
    :cond_1
    array-length v4, p1

    if-ne v2, v4, :cond_3

    .line 156
    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    array-length v4, p1

    add-int/2addr v0, v4

    aget-byte v0, v3, v0

    add-int/2addr v0, v2

    invoke-static {v3, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_2
    aget-byte v4, p1, v2

    .line 151
    add-int v5, v0, v2

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_1

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 147
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getSw1()B
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    iget-object v1, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public final getSw12()S
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    .line 110
    array-length v1, v0

    .line 111
    add-int/lit8 v2, v1, -0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method

.method public final getSw2()B
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    iget-object v1, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final isOkey()Z
    .locals 1

    .prologue
    .line 115
    const/16 v0, -0x7000

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->equalsSw12(S)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method
