.class public Lorg/objectweb/asm/ByteVector;
.super Ljava/lang/Object;


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v1, p1

    if-le v0, v1, :cond_0

    :goto_0
    new-array v0, v0, [B

    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget v2, p0, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method encodeUTF8(Ljava/lang/String;II)Lorg/objectweb/asm/ByteVector;
    .locals 8

    const/16 v7, 0x7ff

    const/16 v6, 0x7f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, p2

    move v0, p2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lez v3, :cond_0

    if-gt v3, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-le v3, v7, :cond_1

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    if-le v0, p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lorg/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    iget-object v3, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    iget-object v3, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v4, v0

    aput-byte v4, v3, v1

    :cond_4
    iget v1, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    iget-object v3, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v1, v3, :cond_5

    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_5
    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    move v1, v0

    :goto_2
    if-ge p2, v2, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lez v3, :cond_6

    if-gt v3, v6, :cond_6

    iget-object v4, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v0, v1, 0x1

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    :goto_3
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    if-le v3, v7, :cond_7

    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    iget-object v4, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto :goto_3

    :cond_8
    iput v1, p0, Lorg/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method put11(II)Lorg/objectweb/asm/ByteVector;
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method put12(II)Lorg/objectweb/asm/ByteVector;
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v0

    iput v2, p0, Lorg/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByte(I)Lorg/objectweb/asm/ByteVector;
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    iput v2, p0, Lorg/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByteArray([BII)Lorg/objectweb/asm/ByteVector;
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p3}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget v1, p0, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putInt(I)Lorg/objectweb/asm/ByteVector;
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putLong(J)Lorg/objectweb/asm/ByteVector;
    .locals 5

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    long-to-int v2, p1

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putShort(I)Lorg/objectweb/asm/ByteVector;
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lorg/objectweb/asm/ByteVector;
    .locals 7

    const v6, 0xffff

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v3

    iget-object v2, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    add-int/lit8 v1, v3, 0x2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ByteVector;->a(I)V

    :cond_1
    iget-object v4, p0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v1, v2, 0x1

    int-to-byte v0, v3

    aput-byte v0, v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lez v5, :cond_2

    const/16 v2, 0x7f

    if-gt v5, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    iput v1, p0, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p0, p1, v0, v6}, Lorg/objectweb/asm/ByteVector;->encodeUTF8(Ljava/lang/String;II)Lorg/objectweb/asm/ByteVector;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    iput v1, p0, Lorg/objectweb/asm/ByteVector;->length:I

    goto :goto_1
.end method
