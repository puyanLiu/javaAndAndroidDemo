.class public Lorg/objectweb/asm/TypePath;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY_ELEMENT:I = 0x0

.field public static final INNER_TYPE:I = 0x1

.field public static final TYPE_ARGUMENT:I = 0x3

.field public static final WILDCARD_BOUND:I = 0x2


# instance fields
.field b:[B

.field offset:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/TypePath;->b:[B

    iput p2, p0, Lorg/objectweb/asm/TypePath;->offset:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/objectweb/asm/TypePath;
    .locals 8

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v4, v3}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    invoke-virtual {v4, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_7

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x5b

    if-ne v1, v5, :cond_2

    invoke-virtual {v4, v2, v2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v4, v1, v2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    move v1, v0

    goto :goto_1

    :cond_3
    const/16 v5, 0x2a

    if-ne v1, v5, :cond_4

    const/4 v1, 0x2

    invoke-virtual {v4, v1, v2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    move v1, v0

    goto :goto_1

    :cond_4
    if-lt v1, v6, :cond_6

    if-gt v1, v7, :cond_6

    add-int/lit8 v1, v1, -0x30

    :goto_2
    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_5

    if-gt v5, v7, :cond_5

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    :cond_6
    move v1, v0

    goto :goto_1

    :cond_7
    iget-object v0, v4, Lorg/objectweb/asm/ByteVector;->data:[B

    iget v1, v4, Lorg/objectweb/asm/ByteVector;->length:I

    div-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    new-instance v0, Lorg/objectweb/asm/TypePath;

    iget-object v1, v4, Lorg/objectweb/asm/ByteVector;->data:[B

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/TypePath;->b:[B

    iget v1, p0, Lorg/objectweb/asm/TypePath;->offset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStep(I)I
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/TypePath;->b:[B

    iget v1, p0, Lorg/objectweb/asm/TypePath;->offset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStepArgument(I)I
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/TypePath;->b:[B

    iget v1, p0, Lorg/objectweb/asm/TypePath;->offset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/objectweb/asm/TypePath;->getLength()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/TypePath;->getStep(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/TypePath;->getStepArgument(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
