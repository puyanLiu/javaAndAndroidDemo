.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I[IILjava/lang/StringBuilder;)I
    .locals 14

    const/16 v1, 0x385

    if-ne p0, v1, :cond_7

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x6

    new-array v9, v1, [C

    const/4 v1, 0x6

    new-array v10, v1, [I

    const/4 v2, 0x0

    add-int/lit8 v5, p2, 0x1

    aget v1, p1, p2

    :goto_0
    const/4 v7, 0x0

    aget v7, p1, v7

    if-ge v5, v7, :cond_3

    if-nez v2, :cond_3

    add-int/lit8 v7, v6, 0x1

    aput v1, v10, v6

    const-wide/16 v11, 0x384

    mul-long/2addr v3, v11

    int-to-long v11, v1

    add-long/2addr v3, v11

    add-int/lit8 v6, v5, 0x1

    aget v1, p1, v5

    const/16 v5, 0x384

    if-eq v1, v5, :cond_0

    const/16 v5, 0x385

    if-eq v1, v5, :cond_0

    const/16 v5, 0x386

    if-eq v1, v5, :cond_0

    const/16 v5, 0x39c

    if-eq v1, v5, :cond_0

    const/16 v5, 0x3a0

    if-eq v1, v5, :cond_0

    const/16 v5, 0x39b

    if-eq v1, v5, :cond_0

    const/16 v5, 0x39a

    if-ne v1, v5, :cond_1

    :cond_0
    add-int/lit8 v5, v6, -0x1

    const/4 v2, 0x1

    move v6, v7

    goto :goto_0

    :cond_1
    rem-int/lit8 v5, v7, 0x5

    if-nez v5, :cond_d

    if-lez v7, :cond_d

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x6

    if-ge v5, v7, :cond_2

    rsub-int/lit8 v7, v5, 0x5

    const-wide/16 v11, 0x100

    rem-long v11, v3, v11

    long-to-int v8, v11

    int-to-char v8, v8

    aput-char v8, v9, v7

    const/16 v7, 0x8

    shr-long v7, v3, v7

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-wide v3, v7

    goto :goto_1

    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    move v13, v6

    move v6, v5

    move v5, v13

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    aget v2, p1, v2

    if-ne v5, v2, :cond_4

    const/16 v2, 0x384

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v6, 0x1

    aput v1, v10, v6

    move v6, v2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_5

    aget v2, v10, v1

    int-to-char v2, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move/from16 p2, v5

    :cond_6
    return p2

    :cond_7
    const/16 v1, 0x39c

    if-ne p0, v1, :cond_6

    const/4 v4, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :cond_8
    :goto_3
    const/4 v5, 0x0

    aget v5, p1, v5

    move/from16 v0, p2

    if-ge v0, v5, :cond_6

    if-nez v3, :cond_6

    add-int/lit8 v5, p2, 0x1

    aget v6, p1, p2

    const/16 v7, 0x384

    if-ge v6, v7, :cond_9

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v7, 0x384

    mul-long/2addr v1, v7

    int-to-long v6, v6

    add-long/2addr v1, v6

    move/from16 p2, v5

    :goto_4
    rem-int/lit8 v5, v4, 0x5

    if-nez v5, :cond_8

    if-lez v4, :cond_8

    const/4 v4, 0x6

    new-array v7, v4, [C

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x6

    if-ge v4, v5, :cond_b

    rsub-int/lit8 v5, v4, 0x5

    const-wide/16 v8, 0xff

    and-long/2addr v8, v1

    long-to-int v6, v8

    int-to-char v6, v6

    aput-char v6, v7, v5

    const/16 v5, 0x8

    shr-long v5, v1, v5

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-wide v1, v5

    goto :goto_5

    :cond_9
    const/16 v7, 0x384

    if-eq v6, v7, :cond_a

    const/16 v7, 0x385

    if-eq v6, v7, :cond_a

    const/16 v7, 0x386

    if-eq v6, v7, :cond_a

    const/16 v7, 0x39c

    if-eq v6, v7, :cond_a

    const/16 v7, 0x3a0

    if-eq v6, v7, :cond_a

    const/16 v7, 0x39b

    if-eq v6, v7, :cond_a

    const/16 v7, 0x39a

    if-ne v6, v7, :cond_c

    :cond_a
    add-int/lit8 p2, v5, -0x1

    const/4 v3, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    move/from16 p2, v5

    goto :goto_4

    :cond_d
    move v5, v6

    move v6, v7

    goto/16 :goto_0
.end method

.method private static a([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 8

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x2

    aget v3, p0, v1

    if-le v0, v3, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    new-array v3, v5, [I

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    aget v4, p0, p1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([IILjava/lang/StringBuilder;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    aget v0, p0, v4

    const/16 v3, 0x39b

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, v4, 0x1

    aget v3, p0, v1

    sub-int/2addr v3, v0

    new-array v6, v3, [I

    move v3, v1

    move v4, v0

    move v0, v1

    :goto_1
    aget v5, p0, v1

    if-ge v4, v5, :cond_3

    if-nez v0, :cond_3

    add-int/lit8 v5, v4, 0x1

    aget v7, p0, v4

    const/16 v4, 0x384

    if-ge v7, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    aput v7, v6, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_2
    packed-switch v7, :pswitch_data_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v0, v5, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    :cond_4
    :goto_2
    return v4

    :cond_5
    aget v0, p0, v4

    const/16 v1, 0x39a

    if-ne v0, v1, :cond_4

    invoke-virtual {p2, v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
    .end packed-switch
.end method

.method private static a([IILjava/lang/StringBuilder;)I
    .locals 11

    const/4 v0, 0x0

    aget v0, p0, v0

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [I

    const/4 v0, 0x0

    aget v0, p0, v0

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    aget v2, p0, v2

    if-ge p1, v2, :cond_1

    if-nez v0, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget v2, p0, p1

    const/16 v4, 0x384

    if-ge v2, v4, :cond_0

    div-int/lit8 v4, v2, 0x1e

    aput v4, v5, v1

    add-int/lit8 v4, v1, 0x1

    rem-int/lit8 v2, v2, 0x1e

    aput v2, v5, v4

    add-int/lit8 v1, v1, 0x2

    move p1, v3

    goto :goto_0

    :cond_0
    sparse-switch v2, :sswitch_data_0

    move p1, v3

    goto :goto_0

    :sswitch_0
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x384

    aput v4, v5, v1

    move v1, v2

    move p1, v3

    goto :goto_0

    :sswitch_1
    add-int/lit8 p1, v3, -0x1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x391

    aput v2, v5, v1

    add-int/lit8 p1, v3, 0x1

    aget v2, p0, v3

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_1f

    aget v7, v5, v4

    const/4 v0, 0x0

    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :pswitch_0
    const/16 v8, 0x1a

    if-ge v7, v8, :cond_4

    add-int/lit8 v0, v7, 0x41

    int-to-char v0, v0

    goto :goto_2

    :cond_4
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_5

    const/16 v0, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_6

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_2

    :cond_6
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_7

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_2

    :cond_7
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_8

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_2

    :cond_8
    const/16 v8, 0x391

    if-ne v7, v8, :cond_9

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const/16 v8, 0x384

    if-ne v7, v8, :cond_2

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_2

    :pswitch_1
    const/16 v8, 0x1a

    if-ge v7, v8, :cond_a

    add-int/lit8 v0, v7, 0x61

    int-to-char v0, v0

    goto :goto_2

    :cond_a
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_b

    const/16 v0, 0x20

    goto :goto_2

    :cond_b
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_c

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_2

    :cond_c
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_d

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_2

    :cond_d
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_e

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_2

    :cond_e
    const/16 v8, 0x391

    if-ne v7, v8, :cond_f

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_f
    const/16 v8, 0x384

    if-ne v7, v8, :cond_2

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_2

    :pswitch_2
    const/16 v8, 0x19

    if-ge v7, v8, :cond_10

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b:[C

    aget-char v0, v0, v7

    goto/16 :goto_2

    :cond_10
    const/16 v8, 0x19

    if-ne v7, v8, :cond_11

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :cond_11
    const/16 v8, 0x1a

    if-ne v7, v8, :cond_12

    const/16 v0, 0x20

    goto/16 :goto_2

    :cond_12
    const/16 v8, 0x1b

    if-ne v7, v8, :cond_13

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :cond_13
    const/16 v8, 0x1c

    if-ne v7, v8, :cond_14

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :cond_14
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_15

    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_2

    :cond_15
    const/16 v8, 0x391

    if-ne v7, v8, :cond_16

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_16
    const/16 v8, 0x384

    if-ne v7, v8, :cond_2

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :pswitch_3
    const/16 v8, 0x1d

    if-ge v7, v8, :cond_17

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    aget-char v0, v0, v7

    goto/16 :goto_2

    :cond_17
    const/16 v8, 0x1d

    if-ne v7, v8, :cond_18

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :cond_18
    const/16 v8, 0x391

    if-ne v7, v8, :cond_19

    aget v7, v6, v4

    int-to-char v7, v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_19
    const/16 v8, 0x384

    if-ne v7, v8, :cond_2

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :pswitch_4
    const/16 v3, 0x1a

    if-ge v7, v3, :cond_1a

    add-int/lit8 v0, v7, 0x41

    int-to-char v0, v0

    move-object v3, v2

    goto/16 :goto_2

    :cond_1a
    const/16 v3, 0x1a

    if-ne v7, v3, :cond_1b

    const/16 v0, 0x20

    move-object v3, v2

    goto/16 :goto_2

    :cond_1b
    const/16 v3, 0x384

    if-ne v7, v3, :cond_20

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :pswitch_5
    const/16 v3, 0x1d

    if-ge v7, v3, :cond_1c

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a:[C

    aget-char v0, v0, v7

    move-object v3, v2

    goto/16 :goto_2

    :cond_1c
    const/16 v3, 0x1d

    if-ne v7, v3, :cond_1d

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :cond_1d
    const/16 v3, 0x391

    if-ne v7, v3, :cond_1e

    aget v3, v6, v4

    int-to-char v3, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v3, v2

    goto/16 :goto_2

    :cond_1e
    const/16 v3, 0x384

    if-ne v7, v3, :cond_20

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_2

    :cond_1f
    return p1

    :cond_20
    move-object v3, v2

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a([II)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->c:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([IILjava/lang/StringBuilder;)I
    .locals 9

    const/16 v8, 0x384

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xf

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    :cond_0
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_5

    if-nez v0, :cond_5

    add-int/lit8 v4, p1, 0x1

    aget v6, p0, p1

    aget v7, p0, v1

    if-ne v4, v7, :cond_1

    move v0, v3

    :cond_1
    if-ge v6, v8, :cond_3

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    move p1, v4

    :goto_1
    rem-int/lit8 v4, v2, 0xf

    if-eqz v4, :cond_2

    const/16 v4, 0x386

    if-eq v6, v4, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {v5, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_0

    :cond_3
    if-eq v6, v8, :cond_4

    const/16 v7, 0x385

    if-eq v6, v7, :cond_4

    const/16 v7, 0x39c

    if-eq v6, v7, :cond_4

    const/16 v7, 0x3a0

    if-eq v6, v7, :cond_4

    const/16 v7, 0x39b

    if-eq v6, v7, :cond_4

    const/16 v7, 0x39a

    if-ne v6, v7, :cond_6

    :cond_4
    add-int/lit8 p1, v4, -0x1

    move v0, v3

    goto :goto_1

    :cond_5
    return p1

    :cond_6
    move p1, v4

    goto :goto_1
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    aget v0, p0, v0

    new-instance v3, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_0
    const/4 v4, 0x0

    aget v4, p0, v4

    if-ge v1, v4, :cond_1

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v0, v1, -0x1

    invoke-static {p0, v0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v0, p0, v0

    goto :goto_0

    :sswitch_0
    invoke-static {p0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([IILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_1

    :sswitch_1
    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a(I[IILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-static {p0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->b([IILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_1

    :sswitch_3
    invoke-static {p0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->a([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v0

    goto :goto_1

    :sswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1, v5, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_1
        0x39a -> :sswitch_4
        0x39b -> :sswitch_4
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_3
    .end sparse-switch
.end method
