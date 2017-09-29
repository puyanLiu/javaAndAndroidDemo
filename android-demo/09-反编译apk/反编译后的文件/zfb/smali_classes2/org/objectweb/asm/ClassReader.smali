.class public Lorg/objectweb/asm/ClassReader;
.super Ljava/lang/Object;


# static fields
.field static final ANNOTATIONS:Z = true

.field public static final EXPAND_FRAMES:I = 0x8

.field static final FRAMES:Z = true

.field static final RESIZE:Z = true

.field static final SIGNATURES:Z = true

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4

.field static final WRITER:Z = true


# instance fields
.field private final a:[I

.field public final b:[B

.field private final c:[Ljava/lang/String;

.field private final d:I

.field public final header:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/objectweb/asm/ClassReader;->a(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/objectweb/asm/ClassReader;->a(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v0, p2, 0x6

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v0

    const/16 v1, 0x34

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v0, p2, 0xa

    const/4 v1, 0x1

    move v3, v0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v5, v3, 0x1

    aput v5, v0, v1

    aget-byte v0, p1, v3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x3

    :cond_1
    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-le v0, v2, :cond_1

    move v2, v0

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    iput v2, p0, Lorg/objectweb/asm/ClassReader;->d:I

    iput v3, p0, Lorg/objectweb/asm/ClassReader;->header:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a()I
    .locals 4

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v0, v1, 0x8

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_1
    if-lez v0, :cond_0

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move v2, v0

    :goto_2
    if-lez v2, :cond_3

    add-int/lit8 v0, v1, 0x8

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_3
    if-lez v0, :cond_2

    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x2

    return v0
.end method

.method private a(IZZLorg/objectweb/asm/Context;)I
    .locals 10

    iget-object v4, p4, Lorg/objectweb/asm/Context;->buffer:[C

    iget-object v5, p4, Lorg/objectweb/asm/Context;->labels:[Lorg/objectweb/asm/Label;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    :goto_0
    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->localDiff:I

    const/16 v0, 0x40

    if-ge v6, v0, :cond_1

    const/4 v0, 0x3

    iput v0, p4, Lorg/objectweb/asm/Context;->mode:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->stackCount:I

    :goto_1
    iget v0, p4, Lorg/objectweb/asm/Context;->offset:I

    add-int/lit8 v1, v6, 0x1

    add-int/2addr v0, v1

    iput v0, p4, Lorg/objectweb/asm/Context;->offset:I

    iget v0, p4, Lorg/objectweb/asm/Context;->offset:I

    invoke-virtual {p0, v0, v5}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    return v3

    :cond_0
    const/16 v0, 0xff

    const/4 v1, -0x1

    iput v1, p4, Lorg/objectweb/asm/Context;->offset:I

    move v6, v0

    move v3, p1

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    if-ge v6, v0, :cond_2

    add-int/lit8 v6, v6, -0x40

    iget-object v1, p4, Lorg/objectweb/asm/Context;->stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    const/4 v0, 0x4

    iput v0, p4, Lorg/objectweb/asm/Context;->mode:I

    const/4 v0, 0x1

    iput v0, p4, Lorg/objectweb/asm/Context;->stackCount:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v3, v3, 0x2

    const/16 v0, 0xf7

    if-ne v6, v0, :cond_3

    iget-object v1, p4, Lorg/objectweb/asm/Context;->stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    const/4 v0, 0x4

    iput v0, p4, Lorg/objectweb/asm/Context;->mode:I

    const/4 v0, 0x1

    iput v0, p4, Lorg/objectweb/asm/Context;->stackCount:I

    move v6, v7

    goto :goto_1

    :cond_3
    const/16 v0, 0xf8

    if-lt v6, v0, :cond_4

    const/16 v0, 0xfb

    if-ge v6, v0, :cond_4

    const/4 v0, 0x2

    iput v0, p4, Lorg/objectweb/asm/Context;->mode:I

    rsub-int v0, v6, 0xfb

    iput v0, p4, Lorg/objectweb/asm/Context;->localDiff:I

    iget v0, p4, Lorg/objectweb/asm/Context;->localCount:I

    iget v1, p4, Lorg/objectweb/asm/Context;->localDiff:I

    sub-int/2addr v0, v1

    iput v0, p4, Lorg/objectweb/asm/Context;->localCount:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->stackCount:I

    move v6, v7

    goto :goto_1

    :cond_4
    const/16 v0, 0xfb

    if-ne v6, v0, :cond_5

    const/4 v0, 0x3

    iput v0, p4, Lorg/objectweb/asm/Context;->mode:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->stackCount:I

    move v6, v7

    goto :goto_1

    :cond_5
    const/16 v0, 0xff

    if-ge v6, v0, :cond_8

    if-eqz p3, :cond_6

    iget v0, p4, Lorg/objectweb/asm/Context;->localCount:I

    :goto_2
    add-int/lit16 v1, v6, -0xfb

    move v8, v1

    move v2, v0

    :goto_3
    if-lez v8, :cond_7

    iget-object v1, p4, Lorg/objectweb/asm/Context;->local:[Ljava/lang/Object;

    add-int/lit8 v9, v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v8, -0x1

    move v8, v0

    move v2, v9

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    iput v0, p4, Lorg/objectweb/asm/Context;->mode:I

    add-int/lit16 v0, v6, -0xfb

    iput v0, p4, Lorg/objectweb/asm/Context;->localDiff:I

    iget v0, p4, Lorg/objectweb/asm/Context;->localCount:I

    iget v1, p4, Lorg/objectweb/asm/Context;->localDiff:I

    add-int/2addr v0, v1

    iput v0, p4, Lorg/objectweb/asm/Context;->localCount:I

    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->stackCount:I

    move v6, v7

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    iput v0, p4, Lorg/objectweb/asm/Context;->mode:I

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    iput v0, p4, Lorg/objectweb/asm/Context;->localDiff:I

    iput v0, p4, Lorg/objectweb/asm/Context;->localCount:I

    const/4 v2, 0x0

    move v8, v0

    :goto_4
    if-lez v8, :cond_9

    iget-object v1, p4, Lorg/objectweb/asm/Context;->local:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v8, -0x1

    move v2, v6

    move v8, v0

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    iput v0, p4, Lorg/objectweb/asm/Context;->stackCount:I

    const/4 v2, 0x0

    move v8, v0

    :goto_5
    if-lez v8, :cond_a

    iget-object v1, p4, Lorg/objectweb/asm/Context;->stack:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/ClassReader;->a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I

    move-result v3

    add-int/lit8 v0, v8, -0x1

    move v2, v6

    move v8, v0

    goto :goto_5

    :cond_a
    move v6, v7

    goto/16 :goto_1
.end method

.method private a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v0, p1, 0x3

    :goto_0
    return v0

    :sswitch_0
    add-int/lit8 v0, p1, 0x5

    goto :goto_0

    :sswitch_1
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2, v1, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, v2, v3}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_1

    move v0, v3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :sswitch_4
    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_6
    new-instance v0, Ljava/lang/Short;

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-short v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto :goto_0

    :sswitch_7
    new-instance v0, Ljava/lang/Character;

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    int-to-char v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p0, v3, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0, v3, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p3, v0, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0, v3, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    goto/16 :goto_0

    :sswitch_b
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v3, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p3, v2}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x2

    if-nez v5, :cond_2

    add-int/lit8 v0, v3, -0x2

    invoke-virtual {p4, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v2, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    sparse-switch v3, :sswitch_data_2

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p4, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v0, p2, v2, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    new-array v1, v5, [B

    :goto_2
    if-ge v2, v5, :cond_3

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_e
    new-array v6, v5, [Z

    move v3, v2

    move v4, v0

    :goto_3
    if-ge v3, v5, :cond_5

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    aput-boolean v0, v6, v3

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    invoke-virtual {p4, p3, v6}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v4, -0x1

    goto/16 :goto_0

    :sswitch_f
    new-array v1, v5, [S

    :goto_5
    if-ge v2, v5, :cond_6

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_10
    new-array v1, v5, [C

    :goto_6
    if-ge v2, v5, :cond_7

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_11
    new-array v1, v5, [I

    :goto_7
    if-ge v2, v5, :cond_8

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_12
    new-array v1, v5, [J

    :goto_8
    if-ge v2, v5, :cond_9

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_13
    new-array v1, v5, [F

    :goto_9
    if-ge v2, v5, :cond_a

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_14
    new-array v1, v5, [D

    :goto_a
    if-ge v2, v5, :cond_b

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    invoke-virtual {p4, p3, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x5b -> :sswitch_2
        0x65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_b
        0x42 -> :sswitch_4
        0x43 -> :sswitch_7
        0x44 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x53 -> :sswitch_6
        0x5a -> :sswitch_5
        0x5b -> :sswitch_c
        0x63 -> :sswitch_a
        0x65 -> :sswitch_9
        0x73 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x42 -> :sswitch_d
        0x43 -> :sswitch_10
        0x44 -> :sswitch_14
        0x46 -> :sswitch_13
        0x49 -> :sswitch_11
        0x4a -> :sswitch_12
        0x53 -> :sswitch_f
        0x5a -> :sswitch_e
    .end sparse-switch
.end method

.method private a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    if-eqz p3, :cond_2

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p2, v0, p4}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :goto_1
    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v2, p4}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    move-result v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_1
    return v0

    :cond_2
    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method private a(Lorg/objectweb/asm/Context;I)I
    .locals 9

    const/high16 v0, -0x1000000

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    ushr-int/lit8 v2, v1, 0x18

    sparse-switch v2, :sswitch_data_0

    ushr-int/lit8 v2, v1, 0x18

    const/16 v3, 0x43

    if-ge v2, v3, :cond_0

    const/16 v0, -0x100

    :cond_0
    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v2

    iput v0, p1, Lorg/objectweb/asm/Context;->typeRef:I

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p1, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    return v0

    :sswitch_0
    const/high16 v0, -0x10000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    goto :goto_0

    :sswitch_1
    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    goto :goto_0

    :sswitch_2
    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v1, v4, [Lorg/objectweb/asm/Label;

    iput-object v1, p1, Lorg/objectweb/asm/Context;->start:[Lorg/objectweb/asm/Label;

    new-array v1, v4, [Lorg/objectweb/asm/Label;

    iput-object v1, p1, Lorg/objectweb/asm/Context;->end:[Lorg/objectweb/asm/Label;

    new-array v1, v4, [I

    iput-object v1, p1, Lorg/objectweb/asm/Context;->index:[I

    add-int/lit8 v2, p2, 0x3

    const/4 v1, 0x0

    move v8, v1

    move v1, v2

    move v2, v8

    :goto_2
    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    iget-object v6, p1, Lorg/objectweb/asm/Context;->start:[Lorg/objectweb/asm/Label;

    iget-object v7, p1, Lorg/objectweb/asm/Context;->labels:[Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v3, v7}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v6, p1, Lorg/objectweb/asm/Context;->end:[Lorg/objectweb/asm/Label;

    add-int/2addr v3, v5

    iget-object v5, p1, Lorg/objectweb/asm/Context;->labels:[Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v3, v5}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v3

    aput-object v3, v6, v2

    iget-object v3, p1, Lorg/objectweb/asm/Context;->index:[I

    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v3, v1, 0x6

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :sswitch_3
    const v0, -0xffff01

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/objectweb/asm/TypePath;

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    invoke-direct {v0, v3, v1}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x47 -> :sswitch_3
        0x48 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private a([Ljava/lang/Object;II[C[Lorg/objectweb/asm/Label;)I
    .locals 2

    iget-object v1, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v0, p3, 0x1

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    invoke-virtual {p0, v1, p5}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_1
    sget-object v1, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_3
    sget-object v1, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_4
    sget-object v1, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_5
    sget-object v1, Lorg/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_6
    sget-object v1, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v1, p1, p2

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(II[C)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    add-int v7, p1, p2

    iget-object v8, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    move v0, v3

    move v1, v3

    move v4, v3

    :goto_0
    if-ge p1, v7, :cond_2

    add-int/lit8 v6, p1, 0x1

    aget-byte v5, v8, p1

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v6

    goto :goto_0

    :pswitch_0
    and-int/lit16 v9, v5, 0xff

    const/16 v5, 0x80

    if-ge v9, v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    int-to-char v9, v9

    aput-char v9, p3, v4

    move v4, v5

    move p1, v6

    goto :goto_0

    :cond_0
    const/16 v0, 0xe0

    if-ge v9, v0, :cond_1

    const/16 v0, 0xbf

    if-le v9, v0, :cond_1

    and-int/lit8 v0, v9, 0x1f

    int-to-char v0, v0

    move v1, v2

    move p1, v6

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v9, 0xf

    int-to-char v0, v0

    const/4 v1, 0x2

    move p1, v6

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, v4, 0x1

    shl-int/lit8 v9, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v9

    int-to-char v5, v5

    aput-char v5, p3, v4

    move v4, v1

    move p1, v6

    move v1, v3

    goto :goto_0

    :pswitch_2
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v5, 0x3f

    or-int/2addr v0, v1

    int-to-char v0, v0

    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[C)Lorg/objectweb/asm/Attribute;
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    iget-object v1, v1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v0, p1, v0

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/objectweb/asm/Attribute;

    invoke-direct {v0, p2}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, v6

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;Z)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Class not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    move v2, v0

    :goto_0
    array-length v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    array-length v0, v1

    if-ge v2, v0, :cond_7

    new-array v0, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    add-int/2addr v2, v0

    :try_start_1
    array-length v0, v1

    if-ne v2, v0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-gez v4, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    :try_start_2
    array-length v0, v1

    add-int/lit16 v0, v0, 0x3e8

    new-array v3, v0, [B

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x1

    int-to-byte v1, v4

    aput-byte v1, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    :goto_3
    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I
    .locals 10

    iget-object v3, p2, Lorg/objectweb/asm/Context;->buffer:[C

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v4, v0, [I

    add-int/lit8 v1, p3, 0x2

    const/4 v0, 0x0

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    aput v1, v4, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v5

    ushr-int/lit8 v2, v5, 0x18

    sparse-switch v2, :sswitch_data_0

    add-int/lit8 v1, v1, 0x3

    :goto_1
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v6

    ushr-int/lit8 v2, v5, 0x18

    const/16 v7, 0x42

    if-ne v2, v7, :cond_2

    if-nez v6, :cond_1

    const/4 v2, 0x0

    :goto_2
    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    add-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v2, v1, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {p0, v6, v3, v7, v1}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_4
    if-lez v1, :cond_0

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v7, v2, 0x5

    invoke-virtual {p0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    iget-object v8, p2, Lorg/objectweb/asm/Context;->labels:[Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v6, v8}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/2addr v6, v7

    iget-object v7, p2, Lorg/objectweb/asm/Context;->labels:[Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v6, v7}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_0
    add-int/lit8 v1, v2, 0x3

    goto :goto_1

    :sswitch_3
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/objectweb/asm/TypePath;

    iget-object v7, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    invoke-direct {v2, v7, v1}, Lorg/objectweb/asm/TypePath;-><init>([BI)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v6, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v2, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v1

    goto :goto_3

    :cond_3
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x47 -> :sswitch_3
        0x48 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private b(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    aget-byte v0, v0, p3

    and-int/lit16 v3, v0, 0xff

    iget-object v0, p2, Lorg/objectweb/asm/Context;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v0, v0

    sub-int v4, v0, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    const-string/jumbo v5, "Ljava/lang/Synthetic;"

    invoke-virtual {p1, v0, v5, v2}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p2, Lorg/objectweb/asm/Context;->buffer:[C

    move v2, v0

    :goto_1
    add-int v0, v3, v4

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    :goto_2
    if-lez v0, :cond_2

    invoke-virtual {p0, v1, v5}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v6, p4}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    add-int/lit8 v1, v1, 0x2

    const/4 v7, 0x1

    invoke-direct {p0, v1, v5, v7, v6}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/objectweb/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V

    return-void
.end method

.method public accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V
    .locals 41

    move-object/from16 v0, p0

    iget v4, v0, Lorg/objectweb/asm/ClassReader;->header:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v9, v5, [C

    new-instance v28, Lorg/objectweb/asm/Context;

    invoke-direct/range {v28 .. v28}, Lorg/objectweb/asm/Context;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    iput-object v0, v1, Lorg/objectweb/asm/Context;->attrs:[Lorg/objectweb/asm/Attribute;

    move/from16 v0, p3

    move-object/from16 v1, v28

    iput v0, v1, Lorg/objectweb/asm/Context;->flags:I

    move-object/from16 v0, v28

    iput-object v9, v0, Lorg/objectweb/asm/Context;->buffer:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    add-int/lit8 v5, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v5, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v5, v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v16, v0

    add-int/lit8 v5, v4, 0x8

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v4, v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v16, v4

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/objectweb/asm/ClassReader;->a()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move/from16 v29, v4

    move/from16 v30, v5

    :goto_1
    if-lez v29, :cond_e

    add-int/lit8 v4, v30, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "SourceFile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v30, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v18, v4

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v4, v17

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v17, v26

    :goto_2
    add-int/lit8 v21, v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x6

    add-int v22, v30, v21

    add-int/lit8 v21, v29, -0x1

    move/from16 v29, v21

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v14

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move/from16 v30, v22

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v21, v8

    move-object/from16 v14, v19

    move/from16 v12, v20

    move/from16 v22, v10

    move/from16 v19, v6

    move/from16 v20, v7

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "InnerClasses"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v30, 0x8

    move v5, v4

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v18, v27

    move-object/from16 v4, v17

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v17, v26

    goto :goto_2

    :cond_2
    const-string/jumbo v4, "EnclosingMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v30, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v30, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    if-eqz v4, :cond_92

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v5, v5, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v4, v7, v4

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object v11, v4

    move-object/from16 v4, v17

    move/from16 v20, v12

    move-object v12, v5

    move-object/from16 v17, v26

    move/from16 v5, v18

    move-object/from16 v18, v27

    move-object/from16 v40, v6

    move/from16 v6, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v40

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v30, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move v10, v4

    move-object/from16 v11, v23

    move-object/from16 v4, v17

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v17, v26

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v18

    move/from16 v6, v19

    move v7, v4

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move-object/from16 v4, v17

    move-object/from16 v17, v26

    move-object/from16 v14, v25

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v4, 0x20000

    or-int/2addr v12, v4

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x41000

    or-int/2addr v12, v4

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v4, "SourceDebugExtension"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v30, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v5, v30, 0x8

    new-array v6, v4, [C

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v6}, Lorg/objectweb/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v4

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v40, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v40

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move v8, v4

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v4, v17

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v17, v26

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v18

    move v6, v4

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v19, v14

    move-object/from16 v14, v25

    move-object/from16 v18, v27

    move-object/from16 v4, v17

    move/from16 v20, v12

    move-object/from16 v17, v26

    move-object/from16 v12, v24

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v4, "BootstrapMethods"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v4, v30, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v6, v4, [I

    const/4 v5, 0x0

    add-int/lit8 v4, v30, 0xa

    :goto_4
    array-length v7, v6

    if-ge v5, v7, :cond_c

    aput v4, v6, v5

    add-int/lit8 v7, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, v28

    iput-object v6, v0, Lorg/objectweb/asm/Context;->bootstrapMethods:[I

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v7, v30, 0x8

    add-int/lit8 v4, v30, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v9}, Lorg/objectweb/asm/ClassReader;->a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[C)Lorg/objectweb/asm/Attribute;

    move-result-object v4

    if-eqz v4, :cond_91

    move-object/from16 v0, v17

    iput-object v0, v4, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v11

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_10

    if-nez v27, :cond_f

    if-eqz v26, :cond_10

    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v25, :cond_11

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v22, 0x2

    :goto_5
    if-lez v5, :cond_12

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_12
    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v21, 0x2

    :goto_6
    if-lez v5, :cond_13

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_13
    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v20, 0x2

    :goto_7
    if-lez v5, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, v28

    iget v8, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v10, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v4, v11}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_14
    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v19, 0x2

    :goto_8
    if-lez v5, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, v28

    iget v8, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v10, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v4, v11}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_15
    :goto_9
    if-eqz v17, :cond_16

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iput-object v5, v0, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object/from16 v17, v4

    goto :goto_9

    :cond_16
    if-eqz v18, :cond_17

    add-int/lit8 v5, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    :goto_a
    if-lez v4, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v10, v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v10}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, v16

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    add-int/lit8 v4, v5, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move/from16 v21, v4

    move v4, v5

    :goto_b
    if-lez v21, :cond_28

    move-object/from16 v0, v28

    iget-object v9, v0, Lorg/objectweb/asm/Context;->buffer:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    add-int/lit8 v5, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v5, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v5, v4, 0x6

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move v10, v4

    move/from16 v22, v5

    :goto_c
    if-lez v10, :cond_21

    add-int/lit8 v4, v22, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "ConstantValue"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    add-int/lit8 v4, v22, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    if-nez v4, :cond_18

    const/4 v15, 0x0

    :goto_d
    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    :goto_e
    add-int/lit8 v16, v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x6

    add-int v16, v16, v22

    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v22, v16

    move-object/from16 v16, v4

    goto :goto_c

    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v15

    goto :goto_d

    :cond_19
    const-string/jumbo v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    add-int/lit8 v4, v22, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    goto :goto_e

    :cond_1a
    const-string/jumbo v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/high16 v4, 0x20000

    or-int/2addr v11, v4

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    goto :goto_e

    :cond_1b
    const-string/jumbo v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const v4, 0x41000

    or-int/2addr v11, v4

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    goto :goto_e

    :cond_1c
    const-string/jumbo v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    add-int/lit8 v4, v22, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v4

    move-object/from16 v4, v16

    goto/16 :goto_e

    :cond_1d
    const-string/jumbo v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    add-int/lit8 v4, v22, 0x8

    move/from16 v5, v17

    move v6, v4

    move/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v4, v16

    goto/16 :goto_e

    :cond_1e
    const-string/jumbo v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    add-int/lit8 v4, v22, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move v7, v4

    move/from16 v8, v20

    move-object/from16 v4, v16

    goto/16 :goto_e

    :cond_1f
    const-string/jumbo v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    add-int/lit8 v4, v22, 0x8

    move v5, v4

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v4, v16

    goto/16 :goto_e

    :cond_20
    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/objectweb/asm/Context;->attrs:[Lorg/objectweb/asm/Attribute;

    add-int/lit8 v7, v22, 0x8

    add-int/lit8 v4, v22, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/objectweb/asm/ClassReader;->a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[C)Lorg/objectweb/asm/Attribute;

    move-result-object v4

    if-eqz v4, :cond_90

    move-object/from16 v0, v16

    iput-object v0, v4, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    goto/16 :goto_e

    :cond_21
    add-int/lit8 v4, v22, 0x2

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v7

    if-nez v7, :cond_22

    :goto_f
    add-int/lit8 v5, v21, -0x1

    move/from16 v21, v5

    goto/16 :goto_b

    :cond_22
    if-eqz v20, :cond_23

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v20, 0x2

    :goto_10
    if-lez v6, :cond_23

    add-int/lit8 v8, v5, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    invoke-virtual {v7, v5, v11}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_10

    :cond_23
    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v19, 0x2

    :goto_11
    if-lez v6, :cond_24

    add-int/lit8 v8, v5, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v7, v5, v11}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_11

    :cond_24
    if-eqz v18, :cond_25

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v18, 0x2

    :goto_12
    if-lez v6, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v5

    add-int/lit8 v8, v5, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, v28

    iget v11, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v12, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    invoke-virtual {v7, v11, v12, v5, v13}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_12

    :cond_25
    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v5, v17, 0x2

    :goto_13
    if-lez v6, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v5

    add-int/lit8 v8, v5, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, v28

    iget v11, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v12, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v5, v13}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v5}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_13

    :cond_26
    :goto_14
    if-eqz v16, :cond_27

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    iput-object v6, v0, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/objectweb/asm/FieldVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object/from16 v16, v5

    goto :goto_14

    :cond_27
    invoke-virtual {v7}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    goto/16 :goto_f

    :cond_28
    add-int/lit8 v5, v4, 0x2

    add-int/lit8 v4, v5, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move/from16 v29, v4

    move v4, v5

    :goto_15
    if-lez v29, :cond_8a

    move-object/from16 v0, v28

    iget-object v9, v0, Lorg/objectweb/asm/Context;->buffer:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, v28

    iput v5, v0, Lorg/objectweb/asm/Context;->access:I

    add-int/lit8 v5, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    iput-object v5, v0, Lorg/objectweb/asm/Context;->name:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    iput-object v5, v0, Lorg/objectweb/asm/Context;->desc:Ljava/lang/String;

    add-int/lit8 v31, v4, 0x6

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move/from16 v27, v4

    move/from16 v30, v31

    :goto_16
    if-lez v27, :cond_37

    add-int/lit8 v4, v30, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "Code"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_8f

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v17, v4

    move-object/from16 v4, v16

    move/from16 v16, v25

    :goto_17
    add-int/lit8 v18, v30, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x6

    add-int v19, v30, v18

    add-int/lit8 v18, v27, -0x1

    move/from16 v27, v18

    move/from16 v20, v8

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v16

    move/from16 v26, v17

    move/from16 v30, v19

    move-object/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    goto :goto_16

    :cond_29
    const-string/jumbo v4, "Exceptions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    add-int/lit8 v4, v30, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v15, v4, [Ljava/lang/String;

    add-int/lit8 v5, v30, 0xa

    const/4 v4, 0x0

    move/from16 v40, v4

    move v4, v5

    move/from16 v5, v40

    :goto_18
    array-length v6, v15

    if-ge v5, v6, :cond_2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto :goto_18

    :cond_2a
    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v17, v26

    move/from16 v40, v4

    move-object/from16 v4, v16

    move/from16 v16, v40

    goto :goto_17

    :cond_2b
    const-string/jumbo v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    add-int/lit8 v4, v30, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v16, v25

    move/from16 v17, v26

    goto/16 :goto_17

    :cond_2c
    const-string/jumbo v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->access:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    move-object/from16 v0, v28

    iput v4, v0, Lorg/objectweb/asm/Context;->access:I

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v16, v25

    move/from16 v17, v26

    goto/16 :goto_17

    :cond_2d
    const-string/jumbo v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move v12, v4

    move/from16 v13, v24

    move-object/from16 v4, v16

    move/from16 v17, v26

    move/from16 v16, v25

    goto/16 :goto_17

    :cond_2e
    const-string/jumbo v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move v10, v4

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move-object/from16 v4, v16

    move/from16 v17, v26

    move/from16 v16, v25

    goto/16 :goto_17

    :cond_2f
    const-string/jumbo v4, "AnnotationDefault"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move v7, v4

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move-object/from16 v4, v16

    move/from16 v17, v26

    move/from16 v16, v25

    goto/16 :goto_17

    :cond_30
    const-string/jumbo v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->access:I

    const v5, 0x41000

    or-int/2addr v4, v5

    move-object/from16 v0, v28

    iput v4, v0, Lorg/objectweb/asm/Context;->access:I

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v16, v25

    move/from16 v17, v26

    goto/16 :goto_17

    :cond_31
    const-string/jumbo v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move v11, v4

    move/from16 v12, v23

    move/from16 v13, v24

    move-object/from16 v4, v16

    move/from16 v17, v26

    move/from16 v16, v25

    goto/16 :goto_17

    :cond_32
    const-string/jumbo v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v4

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move-object/from16 v4, v16

    move/from16 v17, v26

    move/from16 v16, v25

    goto/16 :goto_17

    :cond_33
    const-string/jumbo v4, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v17

    move v6, v4

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move-object/from16 v4, v16

    move/from16 v17, v26

    move/from16 v16, v25

    goto/16 :goto_17

    :cond_34
    const-string/jumbo v4, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    add-int/lit8 v4, v30, 0x8

    move v5, v4

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v17, v26

    move-object/from16 v4, v16

    move/from16 v16, v25

    goto/16 :goto_17

    :cond_35
    const-string/jumbo v4, "MethodParameters"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    add-int/lit8 v4, v30, 0x8

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move v13, v4

    move-object/from16 v4, v16

    move/from16 v17, v26

    move/from16 v16, v25

    goto/16 :goto_17

    :cond_36
    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/objectweb/asm/Context;->attrs:[Lorg/objectweb/asm/Attribute;

    add-int/lit8 v7, v30, 0x8

    add-int/lit8 v4, v30, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v8

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/objectweb/asm/ClassReader;->a([Lorg/objectweb/asm/Attribute;Ljava/lang/String;II[C)Lorg/objectweb/asm/Attribute;

    move-result-object v4

    if-eqz v4, :cond_8f

    move-object/from16 v0, v16

    iput-object v0, v4, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v16, v25

    move/from16 v17, v26

    goto/16 :goto_17

    :cond_37
    add-int/lit8 v27, v30, 0x2

    move-object/from16 v0, v28

    iget v11, v0, Lorg/objectweb/asm/Context;->access:I

    move-object/from16 v0, v28

    iget-object v12, v0, Lorg/objectweb/asm/Context;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v13, v0, Lorg/objectweb/asm/Context;->desc:Ljava/lang/String;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v11

    if-nez v11, :cond_38

    move/from16 v4, v27

    :goto_19
    add-int/lit8 v5, v29, -0x1

    move/from16 v29, v5

    goto/16 :goto_15

    :cond_38
    instance-of v4, v11, Lorg/objectweb/asm/MethodWriter;

    if-eqz v4, :cond_3d

    move-object v4, v11

    check-cast v4, Lorg/objectweb/asm/MethodWriter;

    iget-object v5, v4, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v5, v5, Lorg/objectweb/asm/ClassWriter;->cr:Lorg/objectweb/asm/ClassReader;

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_3d

    iget-object v5, v4, Lorg/objectweb/asm/MethodWriter;->signature:Ljava/lang/String;

    if-ne v14, v5, :cond_3d

    const/4 v5, 0x0

    if-nez v15, :cond_3b

    iget v5, v4, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    if-nez v5, :cond_3a

    const/4 v5, 0x1

    :cond_39
    :goto_1a
    if-eqz v5, :cond_3d

    move/from16 v0, v31

    iput v0, v4, Lorg/objectweb/asm/MethodWriter;->classReaderOffset:I

    sub-int v5, v27, v31

    iput v5, v4, Lorg/objectweb/asm/MethodWriter;->classReaderLength:I

    move/from16 v4, v27

    goto :goto_19

    :cond_3a
    const/4 v5, 0x0

    goto :goto_1a

    :cond_3b
    array-length v6, v15

    iget v7, v4, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    if-ne v6, v7, :cond_39

    const/4 v5, 0x1

    array-length v6, v15

    add-int/lit8 v6, v6, -0x1

    :goto_1b
    if-ltz v6, :cond_39

    add-int/lit8 v25, v25, -0x2

    iget-object v7, v4, Lorg/objectweb/asm/MethodWriter;->exceptions:[I

    aget v7, v7, v6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    if-eq v7, v8, :cond_3c

    const/4 v5, 0x0

    goto :goto_1a

    :cond_3c
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b

    :cond_3d
    if-eqz v24, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v4, v4, v24

    and-int/lit16 v5, v4, 0xff

    add-int/lit8 v4, v24, 0x1

    :goto_1c
    if-lez v5, :cond_3e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    invoke-virtual {v11, v6, v7}, Lorg/objectweb/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_1c

    :cond_3e
    if-eqz v19, :cond_3f

    invoke-virtual {v11}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v9, v5, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CLjava/lang/String;Lorg/objectweb/asm/AnnotationVisitor;)I

    if-eqz v4, :cond_3f

    invoke-virtual {v4}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_3f
    if-eqz v23, :cond_40

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v23, 0x2

    :goto_1d
    if-lez v5, :cond_40

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v11, v4, v8}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    :cond_40
    if-eqz v22, :cond_41

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v22, 0x2

    :goto_1e
    if-lez v5, :cond_41

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v11, v4, v8}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    :cond_41
    if-eqz v21, :cond_42

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v21, 0x2

    :goto_1f
    if-lez v5, :cond_42

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, v28

    iget v8, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v10, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v10, v4, v12}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_1f

    :cond_42
    if-eqz v20, :cond_43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v20, 0x2

    :goto_20
    if-lez v5, :cond_43

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, v28

    iget v8, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v10, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v10, v4, v12}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    move-result v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_20

    :cond_43
    if-eqz v18, :cond_44

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2, v4}, Lorg/objectweb/asm/ClassReader;->b(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V

    :cond_44
    if-eqz v17, :cond_45

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v17

    invoke-direct {v0, v11, v1, v2, v4}, Lorg/objectweb/asm/ClassReader;->b(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)V

    :cond_45
    :goto_21
    if-eqz v16, :cond_46

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    iput-object v5, v0, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object/from16 v16, v4

    goto :goto_21

    :cond_46
    if-eqz v26, :cond_89

    invoke-virtual {v11}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/objectweb/asm/ClassReader;->b:[B

    move-object/from16 v34, v0

    move-object/from16 v0, v28

    iget-object v8, v0, Lorg/objectweb/asm/Context;->buffer:[C

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v35

    add-int/lit8 v4, v26, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v36

    add-int/lit8 v4, v26, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v37

    add-int/lit8 v32, v26, 0x8

    add-int v38, v32, v37

    add-int/lit8 v4, v37, 0x2

    new-array v10, v4, [Lorg/objectweb/asm/Label;

    move-object/from16 v0, v28

    iput-object v10, v0, Lorg/objectweb/asm/Context;->labels:[Lorg/objectweb/asm/Label;

    add-int/lit8 v4, v37, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move/from16 v5, v32

    :goto_22
    move/from16 v0, v38

    if-ge v5, v0, :cond_4a

    sub-int v6, v5, v32

    aget-byte v4, v34, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v7, Lorg/objectweb/asm/ClassWriter;->TYPE:[B

    aget-byte v4, v7, v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v5, v5, 0x4

    goto :goto_22

    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :pswitch_2
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v4

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x3

    goto :goto_22

    :pswitch_3
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x5

    goto :goto_22

    :pswitch_4
    add-int/lit8 v4, v5, 0x1

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x84

    if-ne v4, v6, :cond_47

    add-int/lit8 v5, v5, 0x6

    goto :goto_22

    :cond_47
    add-int/lit8 v5, v5, 0x4

    goto :goto_22

    :pswitch_5
    add-int/lit8 v4, v5, 0x4

    and-int/lit8 v5, v6, 0x3

    sub-int v5, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v4, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v7, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x1

    :goto_23
    if-lez v4, :cond_48

    add-int/lit8 v7, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    :cond_48
    add-int/lit8 v5, v5, 0xc

    goto/16 :goto_22

    :pswitch_6
    add-int/lit8 v4, v5, 0x4

    and-int/lit8 v5, v6, 0x3

    sub-int v5, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v4, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v4

    :goto_24
    if-lez v4, :cond_49

    add-int/lit8 v7, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/2addr v7, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    :cond_49
    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_22

    :pswitch_7
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_22

    :pswitch_8
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_22

    :pswitch_9
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_22

    :cond_4a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    :goto_25
    if-lez v4, :cond_4b

    add-int/lit8 v6, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v6

    add-int/lit8 v7, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v7

    add-int/lit8 v9, v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v13, v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    aget v12, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v7, v9, v12}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    :cond_4b
    add-int/lit8 v31, v5, 0x2

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v30, 0x0

    const/16 v26, 0x0

    const/16 v21, -0x1

    const/16 v16, -0x1

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    move/from16 v17, v4

    :goto_26
    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/16 v25, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move/from16 v33, v4

    :goto_27
    if-lez v33, :cond_5e

    add-int/lit8 v4, v31, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v4, "LocalVariableTable"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8e

    add-int/lit8 v4, v31, 0x8

    add-int/lit8 v6, v31, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    move v7, v6

    move/from16 v6, v31

    :goto_28
    if-lez v7, :cond_4f

    add-int/lit8 v9, v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget-object v12, v10, v9

    if-nez v12, :cond_4c

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v12

    iget v0, v12, Lorg/objectweb/asm/Label;->status:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v12, Lorg/objectweb/asm/Label;->status:I

    :cond_4c
    add-int/lit8 v12, v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    add-int/2addr v9, v12

    aget-object v12, v10, v9

    if-nez v12, :cond_4d

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v9

    iget v12, v9, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v9, Lorg/objectweb/asm/Label;->status:I

    :cond_4d
    add-int/lit8 v6, v6, 0xa

    add-int/lit8 v7, v7, -0x1

    goto :goto_28

    :cond_4e
    const/4 v4, 0x0

    move/from16 v17, v4

    goto :goto_26

    :cond_4f
    move v6, v14

    move v7, v15

    move/from16 v9, v18

    move/from16 v12, v19

    move/from16 v14, v16

    move/from16 v15, v21

    move-object/from16 v18, v23

    move-object/from16 v16, v22

    move/from16 v40, v13

    move v13, v4

    move-object v4, v5

    move/from16 v5, v40

    :goto_29
    add-int/lit8 v19, v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x6

    add-int v31, v31, v19

    add-int/lit8 v19, v33, -0x1

    move/from16 v33, v19

    move/from16 v20, v13

    move/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v23, v18

    move/from16 v18, v9

    move/from16 v19, v12

    move/from16 v16, v14

    move v13, v5

    move v15, v7

    move v14, v6

    move-object v5, v4

    goto/16 :goto_27

    :cond_50
    const-string/jumbo v4, "LocalVariableTypeTable"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    add-int/lit8 v4, v31, 0x8

    move v6, v14

    move v7, v15

    move/from16 v9, v18

    move v12, v4

    move-object v4, v5

    move/from16 v14, v16

    move/from16 v15, v21

    move-object/from16 v18, v23

    move-object/from16 v16, v22

    move v5, v13

    move/from16 v13, v20

    goto :goto_29

    :cond_51
    const-string/jumbo v4, "LineNumberTable"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8e

    add-int/lit8 v4, v31, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move v6, v4

    move/from16 v4, v31

    :goto_2a
    if-lez v6, :cond_53

    add-int/lit8 v7, v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget-object v9, v10, v7

    if-nez v9, :cond_52

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v9

    iget v12, v9, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v9, Lorg/objectweb/asm/Label;->status:I

    :cond_52
    aget-object v7, v10, v7

    add-int/lit8 v9, v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    iput v9, v7, Lorg/objectweb/asm/Label;->line:I

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v6, -0x1

    goto :goto_2a

    :cond_53
    move-object v4, v5

    move v6, v14

    move v7, v15

    move/from16 v9, v18

    move/from16 v12, v19

    move v5, v13

    move/from16 v14, v16

    move/from16 v15, v21

    move-object/from16 v18, v23

    move-object/from16 v16, v22

    move/from16 v13, v20

    goto/16 :goto_29

    :cond_54
    const-string/jumbo v4, "RuntimeVisibleTypeAnnotations"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    add-int/lit8 v4, v31, 0x8

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v11, v1, v4, v6}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I

    move-result-object v6

    array-length v4, v6

    if-eqz v4, :cond_55

    const/4 v4, 0x0

    aget v4, v6, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v4

    const/16 v7, 0x43

    if-ge v4, v7, :cond_56

    :cond_55
    const/4 v4, -0x1

    :goto_2b
    move v7, v15

    move/from16 v9, v18

    move/from16 v12, v19

    move v15, v4

    move-object/from16 v18, v6

    move v6, v14

    move-object v4, v5

    move/from16 v14, v16

    move v5, v13

    move-object/from16 v16, v22

    move/from16 v13, v20

    goto/16 :goto_29

    :cond_56
    const/4 v4, 0x0

    aget v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    goto :goto_2b

    :cond_57
    const-string/jumbo v4, "RuntimeInvisibleTypeAnnotations"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    add-int/lit8 v4, v31, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v11, v1, v4, v6}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/MethodVisitor;Lorg/objectweb/asm/Context;IZ)[I

    move-result-object v6

    array-length v4, v6

    if-eqz v4, :cond_58

    const/4 v4, 0x0

    aget v4, v6, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v4

    const/16 v7, 0x43

    if-ge v4, v7, :cond_59

    :cond_58
    const/4 v4, -0x1

    :goto_2c
    move v7, v15

    move/from16 v9, v18

    move/from16 v12, v19

    move-object/from16 v16, v6

    move v6, v14

    move/from16 v15, v21

    move-object/from16 v18, v23

    move v14, v4

    move-object v4, v5

    move v5, v13

    move/from16 v13, v20

    goto/16 :goto_29

    :cond_59
    const/4 v4, 0x0

    aget v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    goto :goto_2c

    :cond_5a
    const-string/jumbo v4, "StackMapTable"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_8e

    add-int/lit8 v7, v31, 0xa

    add-int/lit8 v4, v31, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v4, v31, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move/from16 v9, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v16

    move/from16 v15, v21

    move-object/from16 v16, v22

    move-object/from16 v18, v23

    move/from16 v40, v4

    move-object v4, v5

    move/from16 v5, v40

    goto/16 :goto_29

    :cond_5b
    const-string/jumbo v4, "StackMap"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_8e

    const/4 v9, 0x0

    add-int/lit8 v7, v31, 0xa

    add-int/lit8 v4, v31, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v4, v31, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v16

    move/from16 v15, v21

    move-object/from16 v18, v23

    move-object/from16 v16, v22

    move/from16 v40, v4

    move-object v4, v5

    move/from16 v5, v40

    goto/16 :goto_29

    :cond_5c
    const/4 v4, 0x0

    move/from16 v24, v4

    move-object v12, v5

    :goto_2d
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/objectweb/asm/Context;->attrs:[Lorg/objectweb/asm/Attribute;

    array-length v4, v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_8d

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/objectweb/asm/Context;->attrs:[Lorg/objectweb/asm/Attribute;

    aget-object v4, v4, v24

    iget-object v4, v4, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/objectweb/asm/Context;->attrs:[Lorg/objectweb/asm/Attribute;

    aget-object v4, v4, v24

    add-int/lit8 v6, v31, 0x8

    add-int/lit8 v5, v31, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v9, v32, -0x8

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v10}, Lorg/objectweb/asm/Attribute;->read(Lorg/objectweb/asm/ClassReader;II[CI[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Attribute;

    move-result-object v4

    if-eqz v4, :cond_5d

    iput-object v12, v4, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    move-object v12, v4

    :cond_5d
    add-int/lit8 v4, v24, 0x1

    move/from16 v24, v4

    goto :goto_2d

    :cond_5e
    if-eqz v15, :cond_8c

    const/4 v4, -0x1

    move-object/from16 v0, v28

    iput v4, v0, Lorg/objectweb/asm/Context;->offset:I

    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput v4, v0, Lorg/objectweb/asm/Context;->mode:I

    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput v4, v0, Lorg/objectweb/asm/Context;->localCount:I

    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput v4, v0, Lorg/objectweb/asm/Context;->localDiff:I

    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput v4, v0, Lorg/objectweb/asm/Context;->stackCount:I

    move/from16 v0, v36

    new-array v4, v0, [Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/objectweb/asm/Context;->local:[Ljava/lang/Object;

    move/from16 v0, v35

    new-array v4, v0, [Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/objectweb/asm/Context;->stack:[Ljava/lang/Object;

    if-eqz v17, :cond_60

    move-object/from16 v0, v28

    iget-object v12, v0, Lorg/objectweb/asm/Context;->desc:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/objectweb/asm/Context;->local:[Ljava/lang/Object;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    move-object/from16 v0, v28

    iget v6, v0, Lorg/objectweb/asm/Context;->access:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_5f

    const-string/jumbo v4, "<init>"

    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/objectweb/asm/Context;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    const/4 v6, 0x0

    const/4 v4, 0x1

    sget-object v7, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v7, v24, v6

    :cond_5f
    :goto_2e
    const/4 v6, 0x1

    move v7, v6

    :goto_2f
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    move-object/from16 v0, v28

    iput v4, v0, Lorg/objectweb/asm/Context;->localCount:I

    :cond_60
    move v4, v15

    :goto_30
    add-int v6, v15, v14

    add-int/lit8 v6, v6, -0x2

    if-ge v4, v6, :cond_67

    aget-byte v6, v34, v4

    const/16 v7, 0x8

    if-ne v6, v7, :cond_61

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    if-ltz v6, :cond_61

    move/from16 v0, v37

    if-ge v6, v0, :cond_61

    add-int v7, v32, v6

    aget-byte v7, v34, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v9, 0xbb

    if-ne v7, v9, :cond_61

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lorg/objectweb/asm/ClassReader;->readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_62
    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, v28

    iget-object v9, v0, Lorg/objectweb/asm/Context;->buffer:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v24, v6

    goto :goto_2e

    :sswitch_0
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v7, v24, v4

    move v4, v6

    move v7, v9

    goto :goto_2f

    :sswitch_1
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v7, v24, v4

    move v4, v6

    move v7, v9

    goto :goto_2f

    :sswitch_2
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v7, v24, v4

    move v4, v6

    move v7, v9

    goto :goto_2f

    :sswitch_3
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v7, v24, v4

    move v4, v6

    move v7, v9

    goto :goto_2f

    :goto_31
    :sswitch_4
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v25, 0x5b

    move/from16 v0, v25

    if-ne v6, v0, :cond_63

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_63
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v25, 0x4c

    move/from16 v0, v25

    if-ne v6, v0, :cond_65

    add-int/lit8 v6, v9, 0x1

    :goto_32
    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v25, 0x3b

    move/from16 v0, v25

    if-eq v9, v0, :cond_64

    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_64
    move v9, v6

    :cond_65
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v12, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v24, v4

    move v4, v6

    move v7, v9

    goto/16 :goto_2f

    :goto_33
    :sswitch_5
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v25, 0x3b

    move/from16 v0, v25

    if-eq v6, v0, :cond_66

    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_66
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v25, v7, 0x1

    add-int/lit8 v7, v9, 0x1

    move/from16 v0, v25

    invoke-virtual {v12, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v24, v4

    move v4, v6

    goto/16 :goto_2f

    :cond_67
    move-object/from16 v4, v28

    :goto_34
    move v6, v13

    move v7, v15

    move/from16 v24, v16

    move/from16 v25, v21

    move/from16 v31, v32

    :goto_35
    move/from16 v0, v31

    move/from16 v1, v38

    if-ge v0, v1, :cond_7e

    sub-int v33, v31, v32

    aget-object v9, v10, v33

    if-eqz v9, :cond_68

    invoke-virtual {v11, v9}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    move-object/from16 v0, v28

    iget v12, v0, Lorg/objectweb/asm/Context;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_68

    iget v12, v9, Lorg/objectweb/asm/Label;->line:I

    if-lez v12, :cond_68

    iget v12, v9, Lorg/objectweb/asm/Label;->line:I

    invoke-virtual {v11, v12, v9}, Lorg/objectweb/asm/MethodVisitor;->visitLineNumber(ILorg/objectweb/asm/Label;)V

    :cond_68
    move v9, v6

    move/from16 v21, v7

    move-object v7, v4

    :goto_36
    if-eqz v7, :cond_6e

    iget v4, v7, Lorg/objectweb/asm/Context;->offset:I

    move/from16 v0, v33

    if-eq v4, v0, :cond_69

    iget v4, v7, Lorg/objectweb/asm/Context;->offset:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_6e

    :cond_69
    iget v4, v7, Lorg/objectweb/asm/Context;->offset:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6b

    if-eqz v18, :cond_6a

    if-eqz v17, :cond_6c

    :cond_6a
    const/4 v12, -0x1

    iget v13, v7, Lorg/objectweb/asm/Context;->localCount:I

    iget-object v14, v7, Lorg/objectweb/asm/Context;->local:[Ljava/lang/Object;

    iget v15, v7, Lorg/objectweb/asm/Context;->stackCount:I

    iget-object v0, v7, Lorg/objectweb/asm/Context;->stack:[Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_6b
    :goto_37
    if-lez v9, :cond_6d

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/objectweb/asm/ClassReader;->a(IZZLorg/objectweb/asm/Context;)I

    move-result v6

    add-int/lit8 v4, v9, -0x1

    move v9, v4

    move/from16 v21, v6

    goto :goto_36

    :cond_6c
    iget v12, v7, Lorg/objectweb/asm/Context;->mode:I

    iget v13, v7, Lorg/objectweb/asm/Context;->localDiff:I

    iget-object v14, v7, Lorg/objectweb/asm/Context;->local:[Ljava/lang/Object;

    iget v15, v7, Lorg/objectweb/asm/Context;->stackCount:I

    iget-object v0, v7, Lorg/objectweb/asm/Context;->stack:[Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_37

    :cond_6d
    const/4 v4, 0x0

    move-object v7, v4

    goto :goto_36

    :cond_6e
    aget-byte v4, v34, v31

    and-int/lit16 v12, v4, 0xff

    sget-object v4, Lorg/objectweb/asm/ClassWriter;->TYPE:[B

    aget-byte v4, v4, v12

    packed-switch v4, :pswitch_data_1

    :pswitch_a
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v31, 0x3

    aget-byte v6, v34, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v11, v4, v6}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    add-int/lit8 v13, v31, 0x4

    move/from16 v6, v25

    move/from16 v12, v30

    :goto_38
    if-eqz v23, :cond_8b

    move-object/from16 v0, v23

    array-length v4, v0

    if-ge v12, v4, :cond_8b

    move/from16 v0, v33

    if-gt v6, v0, :cond_8b

    move/from16 v0, v33

    if-ne v6, v0, :cond_6f

    aget v4, v23, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v4

    add-int/lit8 v6, v4, 0x2

    const/4 v14, 0x1

    move-object/from16 v0, v28

    iget v15, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v11, v15, v0, v4, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v14, v4}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_6f
    add-int/lit8 v30, v12, 0x1

    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_70

    aget v4, v23, v30

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v4

    const/16 v6, 0x43

    if-ge v4, v6, :cond_79

    :cond_70
    const/4 v4, -0x1

    :goto_39
    move v6, v4

    move/from16 v12, v30

    goto :goto_38

    :pswitch_b
    invoke-virtual {v11, v12}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v13, v31, 0x1

    move/from16 v6, v25

    move/from16 v12, v30

    goto :goto_38

    :pswitch_c
    const/16 v4, 0x36

    if-le v12, v4, :cond_71

    add-int/lit8 v4, v12, -0x3b

    shr-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x36

    and-int/lit8 v4, v4, 0x3

    invoke-virtual {v11, v6, v4}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_3a
    add-int/lit8 v13, v31, 0x1

    move/from16 v6, v25

    move/from16 v12, v30

    goto :goto_38

    :cond_71
    add-int/lit8 v4, v12, -0x1a

    shr-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x15

    and-int/lit8 v4, v4, 0x3

    invoke-virtual {v11, v6, v4}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_3a

    :pswitch_d
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v4

    add-int v4, v4, v33

    aget-object v4, v10, v4

    invoke-virtual {v11, v12, v4}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v13, v31, 0x3

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_e
    add-int/lit8 v4, v12, -0x21

    add-int/lit8 v6, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int v6, v6, v33

    aget-object v6, v10, v6

    invoke-virtual {v11, v4, v6}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v13, v31, 0x5

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_f
    add-int/lit8 v4, v31, 0x1

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x84

    if-ne v4, v6, :cond_72

    add-int/lit8 v4, v31, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v6, v31, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v6

    invoke-virtual {v11, v4, v6}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v13, v31, 0x6

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :cond_72
    add-int/lit8 v6, v31, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {v11, v4, v6}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v13, v31, 0x4

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_10
    add-int/lit8 v4, v31, 0x4

    and-int/lit8 v6, v33, 0x3

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int v12, v33, v6

    add-int/lit8 v6, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v13

    add-int/lit8 v6, v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v14

    sub-int v6, v14, v13

    add-int/lit8 v6, v6, 0x1

    new-array v15, v6, [Lorg/objectweb/asm/Label;

    add-int/lit8 v6, v4, 0xc

    const/4 v4, 0x0

    :goto_3b
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_73

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    add-int v16, v16, v33

    aget-object v16, v10, v16

    aput-object v16, v15, v4

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_73
    aget-object v4, v10, v12

    invoke-virtual {v11, v13, v14, v4, v15}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    move/from16 v12, v30

    move v13, v6

    move/from16 v6, v25

    goto/16 :goto_38

    :pswitch_11
    add-int/lit8 v4, v31, 0x4

    and-int/lit8 v6, v33, 0x3

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int v6, v6, v33

    add-int/lit8 v12, v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v12

    new-array v14, v12, [I

    new-array v15, v12, [Lorg/objectweb/asm/Label;

    add-int/lit8 v13, v4, 0x8

    const/4 v4, 0x0

    :goto_3c
    if-ge v4, v12, :cond_74

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    aput v16, v14, v4

    add-int/lit8 v16, v13, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v16

    add-int v16, v16, v33

    aget-object v16, v10, v16

    aput-object v16, v15, v4

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_74
    aget-object v4, v10, v6

    invoke-virtual {v11, v4, v14, v15}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_12
    add-int/lit8 v4, v31, 0x1

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v11, v12, v4}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v13, v31, 0x2

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_13
    add-int/lit8 v4, v31, 0x1

    aget-byte v4, v34, v4

    invoke-virtual {v11, v12, v4}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    add-int/lit8 v13, v31, 0x2

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_14
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readShort(I)S

    move-result v4

    invoke-virtual {v11, v12, v4}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    add-int/lit8 v13, v31, 0x3

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_15
    add-int/lit8 v4, v31, 0x1

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    add-int/lit8 v13, v31, 0x2

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_16
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    add-int/lit8 v13, v31, 0x3

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v6, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v4, v4, v6

    add-int/lit8 v6, v4, -0x1

    aget-byte v6, v34, v6

    const/16 v13, 0xb

    if-ne v6, v13, :cond_75

    const/16 v16, 0x1

    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v4, v6, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    const/16 v4, 0xb6

    if-ge v12, v4, :cond_76

    invoke-virtual {v11, v12, v13, v14, v15}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    const/16 v4, 0xb9

    if-ne v12, v4, :cond_77

    add-int/lit8 v13, v31, 0x5

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :cond_75
    const/16 v16, 0x0

    goto :goto_3d

    :cond_76
    invoke-virtual/range {v11 .. v16}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3e

    :cond_77
    add-int/lit8 v13, v31, 0x3

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v6, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v13, v4, v6

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/objectweb/asm/Context;->bootstrapMethods:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v6, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/Handle;

    add-int/lit8 v12, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    new-array v15, v14, [Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x4

    const/4 v12, 0x0

    :goto_3f
    if-ge v12, v14, :cond_78

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v15, v12

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    :cond_78
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v12, v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    aget v6, v6, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v12, v6, v4, v15}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    add-int/lit8 v13, v31, 0x5

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_19
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v12, v4}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    add-int/lit8 v13, v31, 0x3

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :pswitch_1a
    add-int/lit8 v4, v31, 0x1

    aget-byte v4, v34, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v31, 0x2

    aget-byte v6, v34, v6

    invoke-virtual {v11, v4, v6}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    add-int/lit8 v13, v31, 0x3

    move/from16 v6, v25

    move/from16 v12, v30

    goto/16 :goto_38

    :cond_79
    aget v4, v23, v30

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    goto/16 :goto_39

    :goto_40
    if-eqz v22, :cond_7d

    move-object/from16 v0, v22

    array-length v14, v0

    if-ge v4, v14, :cond_7d

    move/from16 v0, v16

    move/from16 v1, v33

    if-gt v0, v1, :cond_7d

    move/from16 v0, v16

    move/from16 v1, v33

    if-ne v0, v1, :cond_7a

    aget v14, v22, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v14}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v14

    add-int/lit8 v15, v14, 0x2

    const/16 v16, 0x1

    move-object/from16 v0, v28

    iget v0, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move/from16 v24, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    const/16 v26, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v14, v2}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v8, v1, v14}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_7a
    add-int/lit8 v26, v4, 0x1

    move-object/from16 v0, v22

    array-length v4, v0

    move/from16 v0, v26

    if-ge v0, v4, :cond_7b

    aget v4, v22, v26

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v4

    const/16 v14, 0x43

    if-ge v4, v14, :cond_7c

    :cond_7b
    const/4 v4, -0x1

    :goto_41
    move/from16 v16, v4

    move/from16 v4, v26

    goto :goto_40

    :cond_7c
    aget v4, v22, v26

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    goto :goto_41

    :cond_7d
    move/from16 v24, v16

    move/from16 v25, v6

    move/from16 v26, v4

    move/from16 v30, v12

    move/from16 v31, v13

    move-object v4, v7

    move v6, v9

    move/from16 v7, v21

    goto/16 :goto_35

    :cond_7e
    aget-object v4, v10, v37

    if-eqz v4, :cond_7f

    aget-object v4, v10, v37

    invoke-virtual {v11, v4}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_7f
    move-object/from16 v0, v28

    iget v4, v0, Lorg/objectweb/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_83

    if-eqz v20, :cond_83

    const/4 v4, 0x0

    if-eqz v19, :cond_80

    add-int/lit8 v7, v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    new-array v4, v4, [I

    array-length v6, v4

    :goto_42
    if-lez v6, :cond_80

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v9, v7, 0x6

    aput v9, v4, v6

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v9, v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aput v9, v4, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aput v9, v4, v6

    add-int/lit8 v7, v7, 0xa

    goto :goto_42

    :cond_80
    add-int/lit8 v7, v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    move v9, v7

    move v7, v6

    :goto_43
    if-lez v7, :cond_83

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v16

    add-int/lit8 v6, v9, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v18

    add-int/lit8 v6, v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    const/4 v14, 0x0

    if-eqz v4, :cond_81

    const/4 v6, 0x0

    :goto_44
    array-length v12, v4

    if-ge v6, v12, :cond_81

    aget v12, v4, v6

    move/from16 v0, v16

    if-ne v12, v0, :cond_82

    add-int/lit8 v12, v6, 0x1

    aget v12, v4, v12

    move/from16 v0, v17

    if-ne v12, v0, :cond_82

    add-int/lit8 v6, v6, 0x2

    aget v6, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    :cond_81
    add-int/lit8 v6, v9, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v6, v9, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    aget-object v15, v10, v16

    add-int v6, v16, v18

    aget-object v16, v10, v6

    invoke-virtual/range {v11 .. v17}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    add-int/lit8 v9, v9, 0xa

    add-int/lit8 v6, v7, -0x1

    move v7, v6

    goto :goto_43

    :cond_82
    add-int/lit8 v6, v6, 0x3

    goto :goto_44

    :cond_83
    if-eqz v23, :cond_85

    const/4 v4, 0x0

    :goto_45
    move-object/from16 v0, v23

    array-length v6, v0

    if-ge v4, v6, :cond_85

    aget v6, v23, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    const/16 v7, 0x20

    if-ne v6, v7, :cond_84

    aget v6, v23, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v6}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v6

    add-int/lit8 v7, v6, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, v28

    iget v12, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v13, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, v28

    iget-object v14, v0, Lorg/objectweb/asm/Context;->start:[Lorg/objectweb/asm/Label;

    move-object/from16 v0, v28

    iget-object v15, v0, Lorg/objectweb/asm/Context;->end:[Lorg/objectweb/asm/Label;

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/objectweb/asm/Context;->index:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v6}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_85
    if-eqz v22, :cond_87

    const/4 v4, 0x0

    :goto_46
    move-object/from16 v0, v22

    array-length v6, v0

    if-ge v4, v6, :cond_87

    aget v6, v22, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    const/16 v7, 0x20

    if-ne v6, v7, :cond_86

    aget v6, v22, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v6}, Lorg/objectweb/asm/ClassReader;->a(Lorg/objectweb/asm/Context;I)I

    move-result v6

    add-int/lit8 v7, v6, 0x2

    const/4 v9, 0x1

    move-object/from16 v0, v28

    iget v12, v0, Lorg/objectweb/asm/Context;->typeRef:I

    move-object/from16 v0, v28

    iget-object v13, v0, Lorg/objectweb/asm/Context;->typePath:Lorg/objectweb/asm/TypePath;

    move-object/from16 v0, v28

    iget-object v14, v0, Lorg/objectweb/asm/Context;->start:[Lorg/objectweb/asm/Label;

    move-object/from16 v0, v28

    iget-object v15, v0, Lorg/objectweb/asm/Context;->end:[Lorg/objectweb/asm/Label;

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/objectweb/asm/Context;->index:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v6}, Lorg/objectweb/asm/ClassReader;->a(I[CZLorg/objectweb/asm/AnnotationVisitor;)I

    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_87
    :goto_47
    if-eqz v5, :cond_88

    iget-object v4, v5, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v11, v5}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    move-object v5, v4

    goto :goto_47

    :cond_88
    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v11, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    :cond_89
    invoke-virtual {v11}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    move/from16 v4, v27

    goto/16 :goto_19

    :cond_8a
    invoke-virtual/range {p1 .. p1}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void

    :cond_8b
    move/from16 v16, v24

    move/from16 v4, v26

    goto/16 :goto_40

    :cond_8c
    move-object/from16 v4, v25

    goto/16 :goto_34

    :cond_8d
    move-object v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v9, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v16

    move/from16 v15, v21

    move-object/from16 v18, v23

    move-object/from16 v16, v22

    goto/16 :goto_29

    :cond_8e
    move-object v4, v5

    move v6, v14

    move v7, v15

    move/from16 v9, v18

    move/from16 v12, v19

    move v5, v13

    move/from16 v14, v16

    move/from16 v15, v21

    move-object/from16 v18, v23

    move-object/from16 v16, v22

    move/from16 v13, v20

    goto/16 :goto_29

    :cond_8f
    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v16, v25

    move/from16 v17, v26

    goto/16 :goto_17

    :cond_90
    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    goto/16 :goto_e

    :cond_91
    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v17, v26

    move-object/from16 v18, v27

    move-object/from16 v19, v14

    move/from16 v20, v12

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    goto/16 :goto_2

    :cond_92
    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_3
        0x46 -> :sswitch_1
        0x49 -> :sswitch_0
        0x4a -> :sswitch_2
        0x4c -> :sswitch_5
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_c
        :pswitch_19
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_10
        :pswitch_11
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method copyPool(Lorg/objectweb/asm/ClassWriter;)V
    .locals 14

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v6, v0, [C

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    array-length v7, v0

    new-array v8, v7, [Lorg/objectweb/asm/Item;

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v7, :cond_6

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v9, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v2, v9, -0x1

    aget-byte v2, v0, v2

    new-instance v10, Lorg/objectweb/asm/Item;

    invoke-direct {v10, v1}, Lorg/objectweb/asm/Item;-><init>(I)V

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v9, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v0, v3, v4}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget v1, v10, Lorg/objectweb/asm/Item;->hashCode:I

    rem-int/2addr v1, v7

    aget-object v2, v8, v1

    iput-object v2, v10, Lorg/objectweb/asm/Item;->next:Lorg/objectweb/asm/Item;

    aput-object v10, v8, v1

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v3, v9, 0x2

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v0, v0, v3

    invoke-virtual {p0, v9, v6}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v3, v4, v0}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v9}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lorg/objectweb/asm/Item;->set(I)V

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v9}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v10, v0}, Lorg/objectweb/asm/Item;->set(F)V

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v9, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v9, 0x2

    invoke-virtual {p0, v3, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v0, v3, v4}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v9}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lorg/objectweb/asm/Item;->set(J)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v9}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lorg/objectweb/asm/Item;->set(D)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v0, v0, v1

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, v4, v0, v6}, Lorg/objectweb/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v0, v3, v4}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v9}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {p0, v0, v6}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v0, v4, v2}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/objectweb/asm/ClassReader;->a()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move v5, v3

    :goto_2
    if-lez v2, :cond_1

    add-int/lit8 v3, v5, 0x2

    invoke-virtual {p0, v3, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BootstrapMethods"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_5

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    const/4 v0, 0x0

    add-int/lit8 v3, v5, 0xa

    move v4, v0

    :goto_3
    if-ge v4, v11, :cond_4

    sub-int v0, v3, v5

    add-int/lit8 v12, v0, -0xa

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_4
    if-lez v0, :cond_3

    add-int/lit8 v13, v3, 0x4

    invoke-virtual {p0, v13}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    invoke-virtual {p0, v13, v6}, Lorg/objectweb/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v13

    xor-int/2addr v2, v13

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v5, 0x4

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    move v5, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x4

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0, v4}, Lorg/objectweb/asm/Item;-><init>(I)V

    const v13, 0x7fffffff

    and-int/2addr v2, v13

    invoke-virtual {v0, v12, v2}, Lorg/objectweb/asm/Item;->set(II)V

    iget v2, v0, Lorg/objectweb/asm/Item;->hashCode:I

    rem-int/2addr v2, v7

    aget-object v12, v8, v2

    iput-object v12, v0, Lorg/objectweb/asm/Item;->next:Lorg/objectweb/asm/Item;

    aput-object v0, v8, v2

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    new-instance v2, Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v3, v0, 0x3e

    invoke-direct {v2, v3}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    iget-object v3, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v4, v5, 0xa

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v3, v4, v0}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iput v11, p1, Lorg/objectweb/asm/ClassWriter;->bootstrapMethodsCount:I

    iput-object v2, p1, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v2, v9, 0x2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v0, v0, v2

    invoke-virtual {p0, v0, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v6}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {v10, v2, v0, v3}, Lorg/objectweb/asm/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p1, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    iget v3, p0, Lorg/objectweb/asm/ClassReader;->header:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iput-object v8, p1, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    int-to-double v2, v7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p1, Lorg/objectweb/asm/ClassWriter;->threshold:I

    iput v7, p1, Lorg/objectweb/asm/ClassWriter;->index:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getAccess()I
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x6

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    if-lez v2, :cond_0

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v4, v0, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, v4}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getItem(I)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v0, v0, p1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->d:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/objectweb/asm/ClassReader;->d:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v1, v0, p1

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    add-int/lit8 v2, v1, -0x1

    aget-byte v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readByte(I)I

    move-result v2

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v1, v0, v1

    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lorg/objectweb/asm/Handle;

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/objectweb/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassReader;->readLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v1, p2}, Lorg/objectweb/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getMethodType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public readInt(I)I
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method protected readLabel(I[Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;
    .locals 1

    aget-object v0, p2, p1

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    aput-object v0, p2, p1

    :cond_0
    aget-object v0, p2, p1

    return-object v0
.end method

.method public readLong(I)J
    .locals 6

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort(I)S
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->a:[I

    aget v0, v0, v1

    iget-object v2, p0, Lorg/objectweb/asm/ClassReader;->c:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-direct {p0, v3, v0, p2}, Lorg/objectweb/asm/ClassReader;->a(II[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0
.end method

.method public readUnsignedShort(I)I
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassReader;->b:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method
