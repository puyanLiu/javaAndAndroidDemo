.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->a:[I

    return-void
.end method


# virtual methods
.method protected final decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 9

    iget-object v4, p0, Lcom/google/zxing/oned/EAN13Reader;->a:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v4, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v4, v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v0, 0x1

    aget v2, p2, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move v0, v1

    :goto_0
    const/4 v1, 0x6

    if-ge v3, v1, :cond_2

    if-ge v2, v5, :cond_2

    sget-object v1, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v4, v2, v1}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    rem-int/lit8 v1, v6, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v7, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_0

    aget v8, v4, v1

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-lt v6, v1, :cond_1

    const/4 v1, 0x1

    rsub-int/lit8 v6, v3, 0x5

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/16 v3, 0xa

    if-ge v1, v3, :cond_4

    sget-object v3, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v2, v0, v1}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_6

    if-ge v1, v5, :cond_6

    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static {p1, v4, v1, v2}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v6, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_5

    aget v3, v4, v2

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return v1
.end method

.method final getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
