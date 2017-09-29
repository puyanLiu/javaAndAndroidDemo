.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;


# static fields
.field static final ALPHABET:[C

.field static final CHARACTER_ENCODINGS:[I

.field private static final a:[C


# instance fields
.field private final b:Ljava/lang/StringBuilder;

.field private c:[I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    aput p1, v0, v1

    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    :cond_0
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p0, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(I)I
    .locals 10

    const v3, 0x7fffffff

    const/4 v5, -0x1

    const/4 v4, 0x0

    add-int/lit8 v7, p1, 0x7

    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    if-lt v7, v0, :cond_1

    move v0, v5

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v8, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    move v6, p1

    move v2, v3

    move v1, v4

    :goto_1
    if-ge v6, v7, :cond_3

    aget v0, v8, v6

    if-ge v0, v2, :cond_2

    move v2, v0

    :cond_2
    if-le v0, v1, :cond_b

    :goto_2
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v1, v0

    goto :goto_1

    :cond_3
    add-int v0, v2, v1

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v0, p1, 0x1

    move v1, v4

    move v6, v0

    :goto_3
    if-ge v6, v7, :cond_5

    aget v0, v8, v6

    if-ge v0, v3, :cond_4

    move v3, v0

    :cond_4
    if-le v0, v1, :cond_a

    :goto_4
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    move v1, v0

    goto :goto_3

    :cond_5
    add-int v0, v3, v1

    div-int/lit8 v1, v0, 0x2

    const/16 v0, 0x80

    move v6, v0

    move v7, v4

    move v3, v4

    :goto_5
    const/4 v0, 0x7

    if-ge v7, v0, :cond_7

    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_6

    move v0, v2

    :goto_6
    shr-int/lit8 v6, v6, 0x1

    add-int v9, p1, v7

    aget v9, v8, v9

    if-le v9, v0, :cond_9

    or-int v0, v3, v6

    :goto_7
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v0

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v4

    :goto_8
    sget-object v1, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_8

    sget-object v1, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-eq v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    move v0, v5

    goto :goto_0

    :cond_9
    move v0, v3

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-lt v0, v5, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    move v3, v1

    move v4, v0

    move v0, v2

    :goto_0
    if-ge v4, v5, :cond_3

    invoke-virtual {p2, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->a(I)V

    if-nez v3, :cond_2

    move v0, v1

    :goto_2
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->a(I)V

    move v0, v1

    :goto_3
    iget v3, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    if-ge v0, v3, :cond_8

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->b(I)I

    move-result v3

    if-eq v3, v9, :cond_7

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v3, v5, v3

    invoke-static {v4, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v0

    move v4, v2

    :goto_4
    add-int/lit8 v5, v0, 0x7

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    aget v5, v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    if-eq v0, v1, :cond_5

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    add-int/lit8 v5, v0, -0x1

    aget v3, v3, v5

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v0

    :cond_6
    invoke-direct {p0, v3}, Lcom/google/zxing/oned/CodaBarReader;->b(I)I

    move-result v4

    if-ne v4, v9, :cond_9

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_9
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    int-to-char v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x8

    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v1, :cond_a

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v4, v6, v4

    invoke-static {v5, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    iget v4, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    if-lt v3, v4, :cond_6

    :cond_b
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    add-int/lit8 v5, v3, -0x1

    aget v6, v4, v5

    const/4 v4, -0x8

    move v5, v2

    :goto_5
    if-ge v4, v9, :cond_c

    iget-object v7, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    add-int v8, v3, v4

    aget v7, v7, v8

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    iget v4, p0, Lcom/google/zxing/oned/CodaBarReader;->d:I

    if-ge v3, v4, :cond_d

    div-int/lit8 v4, v5, 0x2

    if-ge v6, v4, :cond_d

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    move v4, v2

    :goto_6
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_e

    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    iget-object v7, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    aget-char v6, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    invoke-static {v5, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->a:[C

    invoke-static {v5, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_10
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_11

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    if-eqz p3, :cond_12

    sget-object v4, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_12
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_13
    move v5, v2

    move v4, v2

    :goto_7
    if-ge v5, v0, :cond_14

    iget-object v6, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    aget v6, v6, v5

    add-int/2addr v6, v4

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto :goto_7

    :cond_14
    int-to-float v5, v4

    move v10, v4

    move v4, v0

    move v0, v10

    :goto_8
    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_15

    iget-object v6, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    aget v6, v6, v4

    add-int/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_15
    int-to-float v0, v0

    new-instance v3, Lcom/google/zxing/Result;

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, p1

    invoke-direct {v8, v5, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v7, v2

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v5, p1

    invoke-direct {v2, v0, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v7, v1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v4, v6, v7, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3
.end method

.method final validatePattern(I)V
    .locals 11

    const/4 v0, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    const/4 v0, 0x4

    new-array v5, v0, [I

    fill-array-data v5, :array_1

    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    sget-object v2, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    aget v3, v2, v3

    const/4 v2, 0x6

    :goto_1
    if-ltz v2, :cond_0

    and-int/lit8 v7, v2, 0x1

    and-int/lit8 v8, v3, 0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aget v8, v4, v7

    iget-object v9, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    add-int v10, v1, v2

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v4, v7

    aget v8, v5, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v7

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    if-ge v0, v6, :cond_1

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    new-array v3, v0, [F

    const/4 v0, 0x4

    new-array v7, v0, [F

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    aput v1, v7, v0

    add-int/lit8 v1, v0, 0x2

    aget v2, v4, v0

    int-to-float v2, v2

    aget v8, v5, v0

    int-to-float v8, v8

    div-float/2addr v2, v8

    add-int/lit8 v8, v0, 0x2

    aget v8, v4, v8

    int-to-float v8, v8

    add-int/lit8 v9, v0, 0x2

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    aput v2, v7, v1

    add-int/lit8 v1, v0, 0x2

    aget v1, v7, v1

    aput v1, v3, v0

    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x2

    aget v2, v4, v2

    int-to-float v2, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v2, v8

    const/high16 v8, 0x3fc00000    # 1.5f

    add-float/2addr v2, v8

    add-int/lit8 v8, v0, 0x2

    aget v8, v5, v8

    int-to-float v8, v8

    div-float/2addr v2, v8

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x6

    :goto_4
    if-ltz v2, :cond_5

    and-int/lit8 v4, v2, 0x1

    and-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->c:[I

    add-int v8, p1, v2

    aget v5, v5, v8

    int-to-float v8, v5

    aget v9, v7, v4

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_3

    int-to-float v5, v5

    aget v4, v3, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_4
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_5
    if-ge v0, v6, :cond_6

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
