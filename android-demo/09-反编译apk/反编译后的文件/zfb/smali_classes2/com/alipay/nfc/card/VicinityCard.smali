.class final Lcom/alipay/nfc/card/VicinityCard;
.super Ljava/lang/Object;
.source "VicinityCard.java"


# static fields
.field private static final DEP_SZLIB_CENTER:I = 0x100

.field private static final DEP_SZLIB_NANSHAN:I = 0x200

.field private static final SRV_BOOK:I = 0x2

.field private static final SRV_USER:I = 0x1

.field public static final SW1_OK:I = 0x0

.field private static final SYS_SZLIB:I = 0x10000

.field private static final SYS_UNKNOWN:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load(Landroid/nfc/tech/NfcV;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v2, 0xb

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/tech/NfcV;->connect()V

    .line 42
    invoke-virtual {p0}, Landroid/nfc/tech/NfcV;->getTag()Landroid/nfc/Tag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/Tag;->getId()[B

    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    array-length v4, v3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 119
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/tech/NfcV;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :goto_1
    return-object v0

    .line 49
    :cond_1
    const/16 v4, 0xa

    :try_start_2
    new-array v4, v4, [B

    .line 50
    const/4 v5, 0x0

    const/16 v6, 0x22

    aput-byte v6, v4, v5

    .line 51
    const/4 v5, 0x1

    const/16 v6, 0x2b

    aput-byte v6, v4, v5

    .line 52
    const/4 v5, 0x0

    const/4 v6, 0x2

    array-length v7, v3

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    invoke-virtual {p0, v4}, Landroid/nfc/tech/NfcV;->transceive([B)[B

    move-result-object v4

    .line 55
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    if-eqz v5, :cond_2

    .line 56
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 59
    :cond_2
    const/4 v5, 0x1

    aget-byte v5, v4, v5

    .line 61
    and-int/lit8 v6, v5, 0x1

    if-ne v6, v8, :cond_4

    const/16 v1, 0xa

    aget-byte v1, v4, v1

    move v10, v1

    move v1, v2

    move v2, v10

    .line 63
    :goto_2
    and-int/lit8 v6, v5, 0x2

    if-ne v6, v9, :cond_3

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    :cond_3
    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 67
    add-int/lit8 v5, v1, 0x1

    aget-byte v0, v4, v1

    add-int/lit8 v0, v0, 0x1

    .line 68
    aget-byte v1, v4, v5

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x1

    .line 76
    :goto_3
    const/16 v4, 0xc

    new-array v4, v4, [B

    .line 77
    const/4 v5, 0x0

    const/16 v6, 0x22

    aput-byte v6, v4, v5

    .line 78
    const/4 v5, 0x1

    const/16 v6, 0x23

    aput-byte v6, v4, v5

    .line 79
    const/4 v5, 0x0

    const/4 v6, 0x2

    array-length v7, v3

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    const/16 v5, 0xa

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 81
    const/16 v5, 0xb

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    .line 83
    invoke-virtual {p0, v4}, Landroid/nfc/tech/NfcV;->transceive([B)[B

    move-result-object v5

    .line 84
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    if-eqz v6, :cond_6

    .line 85
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_4
    move v2, v0

    .line 61
    goto :goto_2

    :cond_5
    move v1, v0

    .line 70
    goto :goto_3

    .line 92
    :cond_6
    const/16 v6, 0xa

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    .line 93
    const/16 v0, 0xb

    const/4 v6, 0x0

    aput-byte v6, v4, v0

    .line 95
    invoke-virtual {p0, v4}, Landroid/nfc/tech/NfcV;->transceive([B)[B

    move-result-object v0

    .line 96
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    if-eqz v4, :cond_7

    .line 97
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 101
    :cond_7
    const/4 v4, 0x0

    array-length v6, v0

    invoke-static {v0, v4, v6}, Lcom/alipay/nfc/Util;->toHexString([BII)Ljava/lang/String;

    .line 106
    invoke-static {v2, v5, v1}, Lcom/alipay/nfc/card/VicinityCard;->parseType(B[BI)I

    move-result v2

    .line 107
    invoke-static {v2, p1}, Lcom/alipay/nfc/card/VicinityCard;->parseName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v3, p1}, Lcom/alipay/nfc/card/VicinityCard;->parseInfo([BLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v2, v5, v0, v1, p1}, Lcom/alipay/nfc/card/VicinityCard;->parseData(I[B[BILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    invoke-static {v4, v3, v0, v1}, Lcom/alipay/nfc/card/CardManager;->buildResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method private static parseData(I[B[BILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 182
    and-int v0, p0, v1

    if-ne v0, v1, :cond_0

    .line 183
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/nfc/card/VicinityCard;->parseSzlibData(I[B[BILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseInfo([BLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    const-string/jumbo v1, "<b>ID:</b> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 175
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3}, Lcom/alipay/nfc/Util;->toHexStringR([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x10000

    .line 147
    and-int v1, p0, v2

    if-ne v1, v2, :cond_4

    .line 149
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1

    .line 150
    const-string/jumbo v1, "Shenzhen Library (Center)"

    .line 157
    :goto_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 158
    const-string/jumbo v0, "Book\'s eTag"

    .line 164
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_2
    return-object v0

    .line 151
    :cond_1
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_2

    .line 152
    const-string/jumbo v1, "Shenzhen Library (Nanshan)"

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 154
    goto :goto_0

    .line 159
    :cond_3
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 160
    const-string/jumbo v0, "Reader\'s Card"

    goto :goto_1

    .line 168
    :cond_4
    const-string/jumbo v0, "Unknown Tag"

    goto :goto_2
.end method

.method private static parseSzlibData(I[B[BILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/16 v4, 0x8

    .line 191
    const-wide/16 v2, 0x0

    .line 192
    const/4 v0, 0x3

    :goto_0
    if-gtz v0, :cond_1

    move v0, v4

    .line 195
    :goto_1
    const/4 v5, 0x4

    if-gt v0, v5, :cond_2

    .line 199
    and-int/lit8 v0, p0, 0x1

    if-ne v0, v7, :cond_3

    .line 200
    const-string/jumbo v0, "Card SN:"

    .line 204
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const-string/jumbo v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " <font color=\"teal\">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string/jumbo v0, "%013d"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</font></b><br />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    and-int/lit8 v0, p0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 210
    const/16 v0, 0xc

    aget-byte v0, p1, v0

    .line 211
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_7

    .line 212
    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    .line 213
    const-string/jumbo v0, "Natural sciences"

    .line 225
    :goto_3
    if-eqz v0, :cond_0

    .line 226
    const-string/jumbo v1, "<b>Category:</b> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "<br />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_1
    shl-long/2addr v2, v4

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 196
    :cond_2
    shl-long/2addr v2, v4

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 195
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 202
    :cond_3
    const-string/jumbo v0, "Book ID:"

    goto :goto_2

    .line 214
    :cond_4
    const/16 v2, 0x20

    if-ne v0, v2, :cond_6

    .line 215
    const/16 v0, 0xb

    aget-byte v0, p1, v0

    const/16 v1, -0x7c

    if-ne v0, v1, :cond_5

    .line 216
    const-string/jumbo v0, "Literature"

    goto :goto_3

    .line 218
    :cond_5
    const-string/jumbo v0, "Social sciences"

    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 220
    goto :goto_3

    :cond_7
    move-object v0, v1

    .line 222
    goto :goto_3
.end method

.method private static parseType(B[BI)I
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x4

    .line 127
    const/4 v0, 0x0

    .line 128
    if-ne p2, v3, :cond_0

    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/16 v1, 0xe

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xab

    const/16 v2, 0xab

    if-ne v1, v2, :cond_0

    .line 129
    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xe0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_0

    .line 130
    aget-byte v0, p1, v4

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 133
    const v0, 0x10100

    .line 137
    :goto_0
    aget-byte v1, p1, v3

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 138
    or-int/lit8 v0, v0, 0x1

    .line 143
    :cond_0
    :goto_1
    return v0

    .line 135
    :cond_1
    const v0, 0x10200

    goto :goto_0

    .line 140
    :cond_2
    or-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method
