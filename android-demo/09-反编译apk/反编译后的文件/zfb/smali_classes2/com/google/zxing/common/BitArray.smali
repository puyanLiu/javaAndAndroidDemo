.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/BitArray;->b:I

    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-void
.end method

.method constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iput p2, p0, Lcom/google/zxing/common/BitArray;->b:I

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    if-le p1, v0, :cond_0

    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->b(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    :cond_0
    return-void
.end method

.method private static b(I)[I
    .locals 1

    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public final appendBit(Z)V
    .locals 5

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->a(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    div-int/lit8 v1, v1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/zxing/common/BitArray;->b:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    return-void
.end method

.method public final appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3

    iget v1, p1, Lcom/google/zxing/common/BitArray;->b:I

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->a(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final appendBits(II)V
    .locals 2

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/16 v0, 0x20

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->a(I)V

    :goto_0
    if-lez p2, :cond_3

    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final clear()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clone()Lcom/google/zxing/common/BitArray;
    .locals 3

    new-instance v1, Lcom/google/zxing/common/BitArray;

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->b:I

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/zxing/common/BitArray;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    iget v2, p1, Lcom/google/zxing/common/BitArray;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iget-object v2, p1, Lcom/google/zxing/common/BitArray;->a:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final flip(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public final get(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    div-int/lit8 v2, p1, 0x20

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBitArray()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-object v0
.end method

.method public final getNextSet(I)I
    .locals 4

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    div-int/lit8 v0, p1, 0x20

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0x1f

    shl-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    :goto_1
    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v1, v1, v0

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    goto :goto_0
.end method

.method public final getNextUnset(I)I
    .locals 4

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    div-int/lit8 v0, p1, 0x20

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v1, v1, v0

    xor-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0x1f

    shl-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    :goto_1
    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v1, v1, v0

    xor-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    goto :goto_0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    return v0
.end method

.method public final getSizeInBytes()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRange(IIZ)Z
    .locals 11

    const/16 v5, 0x1f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-ne p2, p1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v8, p2, -0x1

    div-int/lit8 v7, p1, 0x20

    div-int/lit8 v9, v8, 0x20

    move v6, v7

    :goto_1
    if-gt v6, v9, :cond_8

    if-le v6, v7, :cond_3

    move v0, v2

    :goto_2
    if-ge v6, v9, :cond_4

    move v4, v5

    :goto_3
    if-nez v0, :cond_5

    if-ne v4, v5, :cond_5

    const/4 v0, -0x1

    :cond_2
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v3, v3, v6

    and-int/2addr v3, v0

    if-eqz p3, :cond_6

    :goto_4
    if-eq v3, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p1, 0x1f

    goto :goto_2

    :cond_4
    and-int/lit8 v3, v8, 0x1f

    move v4, v3

    goto :goto_3

    :cond_5
    move v3, v0

    move v0, v2

    :goto_5
    if-gt v3, v4, :cond_2

    shl-int v10, v1, v3

    or-int/2addr v0, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public final reverse()V
    .locals 15

    const/16 v14, 0x8

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v0, v0

    new-array v4, v0, [I

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v3, v0, 0x20

    add-int/lit8 v5, v3, 0x1

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v6, v6, v0

    int-to-long v6, v6

    shr-long v8, v6, v1

    const-wide/32 v10, 0x55555555

    and-long/2addr v8, v10

    const-wide/32 v10, 0x55555555

    and-long/2addr v6, v10

    shl-long/2addr v6, v1

    or-long/2addr v6, v8

    shr-long v8, v6, v12

    const-wide/32 v10, 0x33333333

    and-long/2addr v8, v10

    const-wide/32 v10, 0x33333333

    and-long/2addr v6, v10

    shl-long/2addr v6, v12

    or-long/2addr v6, v8

    shr-long v8, v6, v13

    const-wide/32 v10, 0xf0f0f0f

    and-long/2addr v8, v10

    const-wide/32 v10, 0xf0f0f0f

    and-long/2addr v6, v10

    shl-long/2addr v6, v13

    or-long/2addr v6, v8

    shr-long v8, v6, v14

    const-wide/32 v10, 0xff00ff

    and-long/2addr v8, v10

    const-wide/32 v10, 0xff00ff

    and-long/2addr v6, v10

    shl-long/2addr v6, v14

    or-long/2addr v6, v8

    const/16 v8, 0x10

    shr-long v8, v6, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const-wide/32 v10, 0xffff

    and-long/2addr v6, v10

    const/16 v10, 0x10

    shl-long/2addr v6, v10

    or-long/2addr v6, v8

    sub-int v8, v3, v0

    long-to-int v6, v6

    aput v6, v4, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    mul-int/lit8 v3, v5, 0x20

    if-eq v0, v3, :cond_3

    mul-int/lit8 v0, v5, 0x20

    iget v3, p0, Lcom/google/zxing/common/BitArray;->b:I

    sub-int v6, v0, v3

    move v0, v2

    move v3, v1

    :goto_1
    rsub-int/lit8 v7, v6, 0x1f

    if-ge v0, v7, :cond_1

    shl-int/lit8 v3, v3, 0x1

    or-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget v0, v4, v2

    shr-int/2addr v0, v6

    and-int/2addr v0, v3

    :goto_2
    if-ge v1, v5, :cond_2

    aget v2, v4, v1

    rsub-int/lit8 v7, v6, 0x20

    shl-int v7, v2, v7

    or-int/2addr v0, v7

    add-int/lit8 v7, v1, -0x1

    aput v0, v4, v7

    shr-int v0, v2, v6

    and-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v5, -0x1

    aput v0, v4, v1

    :cond_3
    iput-object v4, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-void
.end method

.method public final set(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public final setBulk(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    div-int/lit8 v1, p1, 0x20

    aput p2, v0, v1

    return-void
.end method

.method public final setRange(II)V
    .locals 10

    const/16 v4, 0x1f

    const/4 v1, 0x0

    if-ge p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-ne p2, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v7, p2, -0x1

    div-int/lit8 v6, p1, 0x20

    div-int/lit8 v8, v7, 0x20

    move v5, v6

    :goto_0
    if-gt v5, v8, :cond_1

    if-le v5, v6, :cond_4

    move v0, v1

    :goto_1
    if-ge v5, v8, :cond_5

    move v3, v4

    :goto_2
    if-nez v0, :cond_6

    if-ne v3, v4, :cond_6

    const/4 v0, -0x1

    :cond_3
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v3, v2, v5

    or-int/2addr v0, v3

    aput v0, v2, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_1

    :cond_5
    and-int/lit8 v2, v7, 0x1f

    move v3, v2

    goto :goto_2

    :cond_6
    move v2, v0

    move v0, v1

    :goto_3
    if-gt v2, v3, :cond_3

    const/4 v9, 0x1

    shl-int/2addr v9, v2

    or-int/2addr v0, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public final toBytes(I[BII)V
    .locals 7

    const/4 v2, 0x0

    move v4, v2

    move v0, p1

    :goto_0
    if-ge v4, p4, :cond_2

    move v1, v2

    move v3, v0

    move v0, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    rsub-int/lit8 v6, v1, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int v1, p3, v4

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-ge v0, v1, :cond_2

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x58

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v0, v0

    iget-object v1, p1, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->a:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
