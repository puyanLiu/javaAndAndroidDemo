.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a([F[II[B)I
    .locals 6

    const/4 v3, 0x0

    invoke-static {p3, v3}, Ljava/util/Arrays;->fill([BB)V

    move v2, v3

    move v0, p2

    :goto_0
    const/4 v1, 0x6

    if-ge v2, v1, :cond_2

    aget v1, p0, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    aput v1, p1, v2

    aget v1, p1, v2

    if-le v0, v1, :cond_0

    invoke-static {p3, v3}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    :cond_0
    if-ne v0, v1, :cond_1

    aget-byte v1, p3, v2

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static a(C)Z
    .locals 1

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->b(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge p1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v2, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-static {p0, v0, v1, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0xfe

    const/4 v5, 0x5

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v2}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    aput-object v3, v1, v2

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v2}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    aput-object v2, v1, v4

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v3}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v3}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    aput-object v3, v1, v2

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v2}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v2, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    invoke-virtual {v2, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    const-string/jumbo v3, "[)>\u001e05\u001d"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "\u001e\u0004"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xec

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v2, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v3, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v3, v3, 0x7

    iput v3, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v1, v0

    invoke-interface {v3, v2}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "[)>\u001e06\u001d"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\u001e\u0004"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xed

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v2, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v3, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v3, v3, 0x7

    iput v3, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_3
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v3, :cond_4

    const/16 v0, 0x81

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x95

    rem-int/lit16 v0, v0, 0xfd

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0x81

    if-gt v0, v6, :cond_5

    int-to-char v0, v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    add-int/lit16 v0, v0, -0xfe

    int-to-char v0, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static illegalCharacter(C)V
    .locals 5

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0000"

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isExtendedASCII(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 13

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    move v2, p2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez p2, :cond_3

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    :goto_1
    move v1, v2

    :cond_2
    add-int v7, p1, v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v7, v8, :cond_8

    const/4 v1, 0x6

    new-array v1, v1, [B

    const/4 v7, 0x6

    new-array v7, v7, [I

    const v8, 0x7fffffff

    invoke-static {v0, v7, v8, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->a([F[II[B)I

    move-result v0

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->a([B)I

    move-result v8

    aget v7, v7, v2

    if-eq v7, v0, :cond_0

    if-ne v8, v6, :cond_4

    const/4 v0, 0x5

    aget-byte v0, v1, v0

    if-lez v0, :cond_4

    const/4 v2, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const/4 v1, 0x0

    aput v1, v0, p2

    goto :goto_1

    :cond_4
    if-ne v8, v6, :cond_5

    aget-byte v0, v1, v3

    if-lez v0, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    if-ne v8, v6, :cond_6

    aget-byte v0, v1, v4

    if-lez v0, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    if-ne v8, v6, :cond_7

    aget-byte v0, v1, v5

    if-lez v0, :cond_7

    move v2, v5

    goto :goto_0

    :cond_7
    move v2, v6

    goto :goto_0

    :cond_8
    add-int v7, p1, v1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v1, v1, 0x1

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_f

    aget v7, v0, v2

    float-to-double v9, v7

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-float v7, v9

    aput v7, v0, v2

    :goto_2
    const/16 v7, 0x20

    if-eq v8, v7, :cond_a

    const/16 v7, 0x30

    if-lt v8, v7, :cond_9

    const/16 v7, 0x39

    if-le v8, v7, :cond_a

    :cond_9
    const/16 v7, 0x41

    if-lt v8, v7, :cond_11

    const/16 v7, 0x5a

    if-gt v8, v7, :cond_11

    :cond_a
    move v7, v6

    :goto_3
    if-eqz v7, :cond_12

    aget v7, v0, v6

    const v9, 0x3f2aaaab

    add-float/2addr v7, v9

    aput v7, v0, v6

    :goto_4
    const/16 v7, 0x20

    if-eq v8, v7, :cond_c

    const/16 v7, 0x30

    if-lt v8, v7, :cond_b

    const/16 v7, 0x39

    if-le v8, v7, :cond_c

    :cond_b
    const/16 v7, 0x61

    if-lt v8, v7, :cond_14

    const/16 v7, 0x7a

    if-gt v8, v7, :cond_14

    :cond_c
    move v7, v6

    :goto_5
    if-eqz v7, :cond_15

    aget v7, v0, v4

    const v9, 0x3f2aaaab

    add-float/2addr v7, v9

    aput v7, v0, v4

    :goto_6
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->a(C)Z

    move-result v7

    if-eqz v7, :cond_17

    aget v7, v0, v5

    const v9, 0x3f2aaaab

    add-float/2addr v7, v9

    aput v7, v0, v5

    :goto_7
    const/16 v7, 0x20

    if-lt v8, v7, :cond_19

    const/16 v7, 0x5e

    if-gt v8, v7, :cond_19

    move v7, v6

    :goto_8
    if-eqz v7, :cond_1a

    aget v7, v0, v3

    const/high16 v8, 0x3f400000    # 0.75f

    add-float/2addr v7, v8

    aput v7, v0, v3

    :goto_9
    const/4 v7, 0x5

    aget v8, v0, v7

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    aput v8, v0, v7

    if-lt v1, v3, :cond_2

    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v8, 0x6

    new-array v8, v8, [B

    const v9, 0x7fffffff

    invoke-static {v0, v7, v9, v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->a([F[II[B)I

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->a([B)I

    move-result v9

    aget v10, v7, v2

    const/4 v11, 0x5

    aget v11, v7, v11

    if-ge v10, v11, :cond_d

    aget v10, v7, v2

    aget v11, v7, v6

    if-ge v10, v11, :cond_d

    aget v10, v7, v2

    aget v11, v7, v4

    if-ge v10, v11, :cond_d

    aget v10, v7, v2

    aget v11, v7, v5

    if-ge v10, v11, :cond_d

    aget v10, v7, v2

    aget v11, v7, v3

    if-lt v10, v11, :cond_0

    :cond_d
    const/4 v10, 0x5

    aget v10, v7, v10

    aget v11, v7, v2

    if-lt v10, v11, :cond_e

    aget-byte v10, v8, v6

    aget-byte v11, v8, v4

    add-int/2addr v10, v11

    aget-byte v11, v8, v5

    add-int/2addr v10, v11

    aget-byte v11, v8, v3

    add-int/2addr v10, v11

    if-nez v10, :cond_1c

    :cond_e
    const/4 v2, 0x5

    goto/16 :goto_0

    :cond_f
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_10

    aget v7, v0, v2

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    int-to-float v7, v7

    aput v7, v0, v2

    aget v7, v0, v2

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v7, v9

    aput v7, v0, v2

    goto/16 :goto_2

    :cond_10
    aget v7, v0, v2

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    int-to-float v7, v7

    aput v7, v0, v2

    aget v7, v0, v2

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v7, v9

    aput v7, v0, v2

    goto/16 :goto_2

    :cond_11
    move v7, v2

    goto/16 :goto_3

    :cond_12
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_13

    aget v7, v0, v6

    const v9, 0x402aaaab

    add-float/2addr v7, v9

    aput v7, v0, v6

    goto/16 :goto_4

    :cond_13
    aget v7, v0, v6

    const v9, 0x3faaaaab

    add-float/2addr v7, v9

    aput v7, v0, v6

    goto/16 :goto_4

    :cond_14
    move v7, v2

    goto/16 :goto_5

    :cond_15
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_16

    aget v7, v0, v4

    const v9, 0x402aaaab

    add-float/2addr v7, v9

    aput v7, v0, v4

    goto/16 :goto_6

    :cond_16
    aget v7, v0, v4

    const v9, 0x3faaaaab

    add-float/2addr v7, v9

    aput v7, v0, v4

    goto/16 :goto_6

    :cond_17
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_18

    aget v7, v0, v5

    const v9, 0x408aaaab

    add-float/2addr v7, v9

    aput v7, v0, v5

    goto/16 :goto_7

    :cond_18
    aget v7, v0, v5

    const v9, 0x40555555

    add-float/2addr v7, v9

    aput v7, v0, v5

    goto/16 :goto_7

    :cond_19
    move v7, v2

    goto/16 :goto_8

    :cond_1a
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_1b

    aget v7, v0, v3

    const/high16 v8, 0x40880000    # 4.25f

    add-float/2addr v7, v8

    aput v7, v0, v3

    goto/16 :goto_9

    :cond_1b
    aget v7, v0, v3

    const/high16 v8, 0x40500000    # 3.25f

    add-float/2addr v7, v8

    aput v7, v0, v3

    goto/16 :goto_9

    :cond_1c
    if-ne v9, v6, :cond_1d

    aget-byte v10, v8, v3

    if-lez v10, :cond_1d

    move v2, v3

    goto/16 :goto_0

    :cond_1d
    if-ne v9, v6, :cond_1e

    aget-byte v10, v8, v4

    if-lez v10, :cond_1e

    move v2, v4

    goto/16 :goto_0

    :cond_1e
    if-ne v9, v6, :cond_1f

    aget-byte v8, v8, v5

    if-lez v8, :cond_1f

    move v2, v5

    goto/16 :goto_0

    :cond_1f
    aget v8, v7, v6

    add-int/lit8 v8, v8, 0x1

    aget v9, v7, v2

    if-ge v8, v9, :cond_2

    aget v8, v7, v6

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x5

    aget v9, v7, v9

    if-ge v8, v9, :cond_2

    aget v8, v7, v6

    add-int/lit8 v8, v8, 0x1

    aget v9, v7, v3

    if-ge v8, v9, :cond_2

    aget v8, v7, v6

    add-int/lit8 v8, v8, 0x1

    aget v9, v7, v4

    if-ge v8, v9, :cond_2

    aget v8, v7, v6

    aget v9, v7, v5

    if-ge v8, v9, :cond_20

    move v2, v6

    goto/16 :goto_0

    :cond_20
    aget v8, v7, v6

    aget v7, v7, v5

    if-ne v8, v7, :cond_2

    add-int v0, p1, v1

    add-int/lit8 v0, v0, 0x1

    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_22

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->b(C)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v5

    goto/16 :goto_0

    :cond_21
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->a(C)Z

    move-result v1

    if-eqz v1, :cond_22

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_22
    move v2, v6

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method
