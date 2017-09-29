.class public Lorg/ccil/cowan/tagsoup/HTMLScanner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;
.implements Lorg/xml/sax/Locator;


# static fields
.field private static f:[I


# instance fields
.field a:I

.field b:I

.field c:[C

.field d:I

.field e:[I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x250

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2f
        0x5
        0x16
        0x1
        0x3d
        0x4
        0x3
        0x1
        0x3e
        0x6
        0x1c
        0x1
        0x0
        0x1b
        0x1
        0x1
        -0x1
        0x6
        0x15
        0x1
        0x20
        0x4
        0x18
        0x1
        0xa
        0x4
        0x18
        0x1
        0x9
        0x4
        0x18
        0x2
        0x27
        0x7
        0x22
        0x2
        0x0
        0x1b
        0x2
        0x2
        -0x1
        0x8
        0x15
        0x2
        0x20
        0x1d
        0x2
        0x2
        0xa
        0x1d
        0x2
        0x2
        0x9
        0x1d
        0x2
        0x3
        0x27
        0x1c
        0x2
        0x3
        0x22
        0x1c
        0x1f
        0x3
        0x3e
        0x8
        0x1c
        0x3
        0x0
        0x1b
        0x20
        0x3
        -0x1
        0x8
        0x15
        0x3
        0x20
        0x1c
        0x3
        0x3
        0xa
        0x1c
        0x3
        0x3
        0x9
        0x1c
        0x3
        0x4
        0x43
        0x1c
        0x5
        0x4
        0x0
        0x1c
        0x13
        0x4
        -0x1
        0x1c
        0x15
        0x5
        0x44
        0x1c
        0x6
        0x5
        0x0
        0x1c
        0x13
        0x5
        -0x1
        0x1c
        0x15
        0x6
        0x41
        0x1c
        0x7
        0x6
        0x0
        0x1c
        0x13
        0x6
        -0x1
        0x1c
        0x15
        0x7
        0x54
        0x1c
        0x8
        0x7
        0x0
        0x1c
        0x13
        0x7
        -0x1
        0x1c
        0x15
        0x8
        0x41
        0x1c
        0x9
        0x8
        0x0
        0x1c
        0x13
        0x8
        -0x1
        0x1c
        0x15
        0x9
        0x5b
        0x1c
        0xc
        0x9
        0x0
        0x1c
        0x13
        0x9
        -0x1
        0x1c
        0x15
        0xa
        0x3c
        0x1b
        0xb
        0xa
        0x0
        0x1b
        0xa
        0xa
        -0x1
        0x17
        0x15
        0xb
        0x2f
        0x20
        0x19
        0xb
        0x0
        0x1b
        0xa
        0xb
        -0x1
        0x20
        0x15
        0xc
        0x5d
        0x1b
        0xd
        0xc
        0x0
        0x1b
        0xc
        0xc
        -0x1
        0x1c
        0x15
        0xd
        0x5d
        0x1b
        0xe
        0xd
        0x0
        0x1b
        0xc
        0xd
        -0x1
        0x1c
        0x15
        0xe
        0x3e
        0x9
        0x1c
        0xe
        0x0
        0x1b
        0xc
        0xe
        -0x1
        0x1c
        0x15
        0xf
        0x2d
        0x1c
        0x10
        0xf
        0x0
        0x1b
        0x10
        0xf
        -0x1
        0xa
        0x15
        0x10
        0x2d
        0x1c
        0x11
        0x10
        0x0
        0x1b
        0x10
        0x10
        -0x1
        0xa
        0x15
        0x11
        0x2d
        0x1c
        0x12
        0x11
        0x0
        0x14
        0x10
        0x11
        -0x1
        0xa
        0x15
        0x12
        0x2d
        0x16
        0x12
        0x12
        0x3e
        0xa
        0x1c
        0x12
        0x0
        0x15
        0x10
        0x12
        -0x1
        0xa
        0x15
        0x13
        0x2d
        0x1c
        0xf
        0x13
        0x5b
        0x1c
        0x4
        0x13
        0x3e
        0x1c
        0x1c
        0x13
        0x0
        0x1b
        0x14
        0x13
        -0x1
        0x1c
        0x15
        0x14
        0x3e
        0xb
        0x1c
        0x14
        0x0
        0x1b
        0x14
        0x14
        -0x1
        0x1c
        0x15
        0x16
        0x3e
        0xc
        0x1c
        0x16
        0x0
        0x1b
        0x1
        0x16
        0x20
        0x1c
        0x22
        0x16
        0xa
        0x1c
        0x22
        0x16
        0x9
        0x1c
        0x22
        0x17
        0x0
        0xd
        0x17
        0x17
        -0x1
        0xd
        0x15
        0x18
        0x3d
        0x1c
        0x3
        0x18
        0x3e
        0x3
        0x1c
        0x18
        0x0
        0x2
        0x1
        0x18
        -0x1
        0x3
        0x15
        0x18
        0x20
        0x1c
        0x18
        0x18
        0xa
        0x1c
        0x18
        0x18
        0x9
        0x1c
        0x18
        0x19
        0x3e
        0xf
        0x1c
        0x19
        0x0
        0x1b
        0x19
        0x19
        -0x1
        0xf
        0x15
        0x19
        0x20
        0x1c
        0x19
        0x19
        0xa
        0x1c
        0x19
        0x19
        0x9
        0x1c
        0x19
        0x1a
        0x2f
        0x1c
        0x16
        0x1a
        0x3e
        0x11
        0x1c
        0x1a
        0x0
        0x1b
        0x1a
        0x1a
        -0x1
        0x1c
        0x15
        0x1a
        0x20
        0x10
        0x22
        0x1a
        0xa
        0x10
        0x22
        0x1a
        0x9
        0x10
        0x22
        0x1b
        0x0
        0xd
        0x1b
        0x1b
        -0x1
        0xd
        0x15
        0x1c
        0x26
        0xe
        0x17
        0x1c
        0x3c
        0x17
        0x21
        0x1c
        0x0
        0x1b
        0x1c
        0x1c
        -0x1
        0x17
        0x15
        0x1d
        0x3e
        0x18
        0x1c
        0x1d
        0x0
        0x1b
        0x1d
        0x1d
        -0x1
        0x18
        0x15
        0x1e
        0x3e
        0x1a
        0x1c
        0x1e
        0x0
        0x1b
        0x1e
        0x1e
        -0x1
        0x1a
        0x15
        0x1e
        0x20
        0x19
        0x1d
        0x1e
        0xa
        0x19
        0x1d
        0x1e
        0x9
        0x19
        0x1d
        0x1f
        0x22
        0x7
        0x22
        0x1f
        0x0
        0x1b
        0x1f
        0x1f
        -0x1
        0x8
        0x15
        0x1f
        0x20
        0x1d
        0x1f
        0x1f
        0xa
        0x1d
        0x1f
        0x1f
        0x9
        0x1d
        0x1f
        0x20
        0x3e
        0x8
        0x1c
        0x20
        0x0
        0x1b
        0x20
        0x20
        -0x1
        0x8
        0x15
        0x20
        0x20
        0x7
        0x22
        0x20
        0xa
        0x7
        0x22
        0x20
        0x9
        0x7
        0x22
        0x21
        0x21
        0x1c
        0x13
        0x21
        0x3f
        0x1c
        0x1e
        0x21
        0x2f
        0x1c
        0x19
        0x21
        0x3c
        0x1b
        0x21
        0x21
        0x0
        0x1b
        0x1a
        0x21
        -0x1
        0x13
        0x15
        0x21
        0x20
        0x12
        0x1c
        0x21
        0xa
        0x12
        0x1c
        0x21
        0x9
        0x12
        0x1c
        0x22
        0x2f
        0x1c
        0x16
        0x22
        0x3e
        0x1e
        0x1c
        0x22
        0x0
        0x1b
        0x1
        0x22
        -0x1
        0x1e
        0x15
        0x22
        0x20
        0x1c
        0x22
        0x22
        0xa
        0x1c
        0x22
        0x22
        0x9
        0x1c
        0x22
        0x23
        0x0
        0xd
        0x23
        0x23
        -0x1
        0xd
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    .line 202
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20ac
        0xfffd
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0xfffd
        0x17d
        0xfffd
        0xfffd
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0xfffd
        0x17e
        0x178
    .end array-data
.end method

.method private a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 560
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x14

    if-lt v0, v1, :cond_1

    .line 561
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v1}, Lorg/ccil/cowan/tagsoup/ScanHandler;->g([CI)V

    .line 564
    iput v3, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 573
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 574
    return-void

    .line 567
    :cond_2
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 568
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    goto :goto_0
.end method

.method private static a(Ljava/io/PushbackReader;I)V
    .locals 1

    .prologue
    .line 211
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Ljava/io/PushbackReader;->unread(I)V

    .line 213
    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->j:I

    .line 547
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->k:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->i:I

    .line 548
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 556
    const/16 v0, 0xa

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b:I

    .line 557
    return-void
.end method

.method public final a(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 10

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0x1b

    const/16 v4, 0xa

    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 260
    const/16 v0, 0x1c

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    .line 262
    instance-of v0, p1, Ljava/io/PushbackReader;

    if-eqz v0, :cond_4

    .line 263
    check-cast p1, Ljava/io/PushbackReader;

    .line 270
    :goto_0
    invoke-virtual {p1}, Ljava/io/PushbackReader;->read()I

    move-result v0

    .line 271
    const v2, 0xfeff

    if-eq v0, v2, :cond_0

    .line 272
    invoke-static {p1, v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(Ljava/io/PushbackReader;I)V

    .line 274
    :cond_0
    :goto_1
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1a

    .line 275
    invoke-virtual {p1}, Ljava/io/PushbackReader;->read()I

    move-result v0

    .line 278
    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_1

    .line 279
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->e:[I

    add-int/lit8 v0, v0, -0x80

    aget v0, v2, v0

    .line 281
    :cond_1
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1b

    .line 282
    invoke-virtual {p1}, Ljava/io/PushbackReader;->read()I

    move-result v0

    .line 283
    if-eq v0, v4, :cond_1b

    .line 284
    invoke-static {p1, v0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(Ljava/io/PushbackReader;I)V

    move v3, v4

    .line 289
    :goto_2
    if-ne v3, v4, :cond_6

    .line 290
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->k:I

    .line 291
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    .line 296
    :goto_3
    if-ge v3, v7, :cond_2

    if-eq v3, v4, :cond_2

    const/16 v0, 0x9

    if-eq v3, v0, :cond_2

    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    :cond_2
    move v0, v1

    move v2, v1

    .line 301
    :goto_4
    sget-object v5, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 302
    iget v5, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    sget-object v6, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_7

    .line 303
    if-eqz v2, :cond_8

    .line 319
    :cond_3
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 533
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can\'t process state "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_4
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_5

    .line 265
    new-instance v0, Ljava/io/PushbackReader;

    invoke-direct {v0, p1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_0

    .line 267
    :cond_5
    new-instance v0, Ljava/io/PushbackReader;

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0xc8

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {v0, v2}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto/16 :goto_0

    .line 293
    :cond_6
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    goto :goto_3

    .line 307
    :cond_7
    sget-object v5, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    if-nez v5, :cond_9

    .line 308
    sget-object v2, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    add-int/lit8 v5, v0, 0x2

    aget v2, v2, v5

    .line 309
    sget-object v5, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    iput v5, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b:I

    .line 301
    :cond_8
    add-int/lit8 v0, v0, 0x4

    goto :goto_4

    .line 310
    :cond_9
    sget-object v5, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    if-ne v5, v3, :cond_8

    .line 311
    sget-object v2, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    add-int/lit8 v5, v0, 0x2

    aget v2, v2, v5

    .line 312
    sget-object v5, Lorg/ccil/cowan/tagsoup/HTMLScanner;->f:[I

    add-int/lit8 v0, v0, 0x3

    aget v0, v5, v0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b:I

    goto :goto_5

    .line 321
    :pswitch_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HTMLScanner can\'t cope with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :pswitch_1
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->a()V

    .line 326
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 535
    :goto_6
    :pswitch_2
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    goto/16 :goto_1

    .line 329
    :pswitch_3
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->a()V

    .line 330
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 331
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_6

    .line 334
    :pswitch_4
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->a()V

    .line 335
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 336
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->j([CI)V

    goto :goto_6

    .line 339
    :pswitch_5
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->a([CI)V

    .line 340
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto :goto_6

    .line 343
    :pswitch_6
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->a([CI)V

    .line 344
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 345
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->a()V

    goto :goto_6

    .line 348
    :pswitch_7
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->a([CI)V

    .line 349
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 350
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->a()V

    .line 351
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->j([CI)V

    goto :goto_6

    .line 354
    :pswitch_8
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->b([CI)V

    .line 355
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto :goto_6

    .line 358
    :pswitch_9
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->b([CI)V

    .line 359
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 360
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->j([CI)V

    goto :goto_6

    .line 363
    :pswitch_a
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b()V

    .line 365
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_a

    .line 366
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 367
    :cond_a
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->g([CI)V

    .line 368
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 371
    :pswitch_b
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->g([CI)V

    .line 372
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 373
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 376
    :pswitch_c
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b()V

    .line 377
    int-to-char v0, v3

    .line 381
    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    const/16 v5, 0x17

    if-ne v2, v5, :cond_b

    if-ne v0, v9, :cond_b

    .line 382
    iput v8, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b:I

    .line 383
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 385
    :cond_b
    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    if-ne v2, v8, :cond_d

    const/16 v2, 0x78

    if-eq v0, v2, :cond_c

    const/16 v2, 0x58

    if-ne v0, v2, :cond_d

    .line 386
    :cond_c
    iput v9, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b:I

    .line 387
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 389
    :cond_d
    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    const/16 v5, 0x17

    if-ne v2, v5, :cond_e

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 390
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 392
    :cond_e
    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    if-ne v2, v8, :cond_f

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 393
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 395
    :cond_f
    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a:I

    if-ne v2, v9, :cond_11

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "abcdefABCDEF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    .line 398
    :cond_10
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 405
    :cond_11
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->c([CI)V

    .line 406
    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->c()I

    move-result v0

    .line 408
    if-eqz v0, :cond_15

    .line 409
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 410
    const/16 v2, 0x80

    if-lt v0, v2, :cond_12

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_12

    .line 411
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->e:[I

    add-int/lit8 v0, v0, -0x80

    aget v0, v2, v0

    .line 413
    :cond_12
    if-lt v0, v7, :cond_14

    .line 415
    const v2, 0xd800

    if-lt v0, v2, :cond_13

    const v2, 0xdfff

    if-le v0, v2, :cond_14

    .line 418
    :cond_13
    const v2, 0xffff

    if-gt v0, v2, :cond_17

    .line 421
    invoke-direct {p0, v0, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 428
    :cond_14
    :goto_7
    const/16 v0, 0x3b

    if-eq v3, v0, :cond_16

    .line 429
    :cond_15
    invoke-static {p1, v3}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(Ljava/io/PushbackReader;I)V

    .line 434
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    .line 436
    :cond_16
    const/16 v0, 0x1c

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b:I

    goto/16 :goto_6

    .line 424
    :cond_17
    const/high16 v2, 0x10000

    sub-int/2addr v0, v2

    .line 425
    shr-int/lit8 v2, v0, 0xa

    const v5, 0xd800

    add-int/2addr v2, v5

    invoke-direct {p0, v2, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 426
    and-int/lit16 v0, v0, 0x3ff

    const v2, 0xdc00

    add-int/2addr v0, v2

    invoke-direct {p0, v0, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto :goto_7

    .line 439
    :pswitch_d
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->d([CI)V

    .line 440
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 443
    :pswitch_e
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->e([CI)V

    .line 444
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 447
    :pswitch_f
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->f([CI)V

    .line 448
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 451
    :pswitch_10
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->f([CI)V

    .line 452
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 453
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->j([CI)V

    goto/16 :goto_6

    .line 456
    :pswitch_11
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b()V

    .line 457
    const/16 v0, 0x3c

    invoke-direct {p0, v0, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 458
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 461
    :pswitch_12
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b()V

    .line 462
    const/16 v0, 0x3c

    invoke-direct {p0, v0, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 463
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->g([CI)V

    .line 464
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 467
    :pswitch_13
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b()V

    .line 468
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->g([CI)V

    .line 469
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 472
    :pswitch_14
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b()V

    .line 473
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->l([CI)V

    .line 474
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 477
    :pswitch_15
    const/16 v0, 0x2d

    invoke-direct {p0, v0, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 478
    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 481
    :pswitch_16
    const/16 v0, 0x2d

    invoke-direct {p0, v0, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 482
    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 485
    :pswitch_17
    const/16 v0, 0x2d

    invoke-direct {p0, v0, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    .line 486
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 489
    :pswitch_18
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b()V

    .line 490
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->i([CI)V

    .line 491
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 494
    :pswitch_19
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->h([CI)V

    .line 495
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 498
    :pswitch_1a
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->h([CI)V

    .line 499
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 500
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->i([CI)V

    goto/16 :goto_6

    .line 503
    :pswitch_1b
    invoke-direct {p0, v3, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 508
    :pswitch_1c
    invoke-direct {p0, v7, p2}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(ILorg/ccil/cowan/tagsoup/ScanHandler;)V

    goto/16 :goto_6

    .line 511
    :pswitch_1d
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->j([CI)V

    .line 512
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 515
    :pswitch_1e
    invoke-direct {p0}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->b()V

    .line 517
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    if-lez v0, :cond_18

    .line 518
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->f([CI)V

    .line 519
    :cond_18
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 520
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->k([CI)V

    goto/16 :goto_6

    .line 523
    :pswitch_1f
    invoke-static {p1, v3}, Lorg/ccil/cowan/tagsoup/HTMLScanner;->a(Ljava/io/PushbackReader;I)V

    .line 524
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    goto/16 :goto_6

    .line 527
    :pswitch_20
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    if-lez v0, :cond_19

    .line 528
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    .line 529
    :cond_19
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    iget v2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    invoke-interface {p2, v0, v2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->g([CI)V

    .line 530
    iput v1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->d:I

    goto/16 :goto_6

    .line 537
    :cond_1a
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->c:[C

    invoke-interface {p2}, Lorg/ccil/cowan/tagsoup/ScanHandler;->b()V

    .line 538
    return-void

    :cond_1b
    move v3, v0

    goto/16 :goto_2

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_14
        :pswitch_e
        :pswitch_1e
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_2
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->g:Ljava/lang/String;

    .line 246
    iput-object p2, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->h:Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->l:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->k:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->j:I

    iput v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->i:I

    .line 248
    return-void
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->j:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->i:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/HTMLScanner;->h:Ljava/lang/String;

    return-object v0
.end method
