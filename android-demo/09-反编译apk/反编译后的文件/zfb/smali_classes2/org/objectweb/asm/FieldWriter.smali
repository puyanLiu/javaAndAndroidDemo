.class final Lorg/objectweb/asm/FieldWriter;
.super Lorg/objectweb/asm/FieldVisitor;


# instance fields
.field private final a:Lorg/objectweb/asm/ClassWriter;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I

.field private f:I

.field private g:Lorg/objectweb/asm/AnnotationWriter;

.field private h:Lorg/objectweb/asm/AnnotationWriter;

.field private i:Lorg/objectweb/asm/AnnotationWriter;

.field private j:Lorg/objectweb/asm/AnnotationWriter;

.field private k:Lorg/objectweb/asm/Attribute;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/FieldVisitor;-><init>(I)V

    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    if-nez v0, :cond_2

    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    :goto_0
    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->lastField:Lorg/objectweb/asm/FieldWriter;

    iput-object p1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    iput p2, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/FieldWriter;->d:I

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/FieldWriter;->e:I

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p1, p6}, Lorg/objectweb/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    iput v0, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->lastField:Lorg/objectweb/asm/FieldWriter;

    iput-object p0, v0, Lorg/objectweb/asm/FieldWriter;->fv:Lorg/objectweb/asm/FieldVisitor;

    goto :goto_0
.end method


# virtual methods
.method final getSize()I
    .locals 7

    const/4 v4, -0x1

    const/16 v0, 0x8

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    const/16 v0, 0x10

    :cond_0
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    iget v1, v1, Lorg/objectweb/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_1

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "Synthetic"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_2
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "Deprecated"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_3
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->e:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "Signature"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_4
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v6, v0

    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->getSize(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v6, v0

    :cond_8
    return v6

    :cond_9
    move v6, v0

    goto :goto_0
.end method

.method final put(Lorg/objectweb/asm/ByteVector;)V
    .locals 8

    const/16 v7, 0x31

    const/4 v6, 0x2

    const/4 v4, -0x1

    const/high16 v5, 0x40000

    const/4 v3, 0x0

    const/high16 v0, 0x60000

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    and-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->c:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->d:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    iget v1, v1, Lorg/objectweb/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-lt v1, v7, :cond_0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->e:I

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v1}, Lorg/objectweb/asm/Attribute;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "ConstantValue"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->f:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_9
    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    iget v0, v0, Lorg/objectweb/asm/ClassWriter;->version:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-lt v0, v7, :cond_a

    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_b
    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->b:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_c
    iget v0, p0, Lorg/objectweb/asm/FieldWriter;->e:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v6}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/FieldWriter;->e:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_d
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_f
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    move v5, v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->put(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    :cond_12
    return-void

    :cond_13
    move v0, v3

    goto/16 :goto_0
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/FieldWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/FieldWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public final visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/FieldWriter;->k:Lorg/objectweb/asm/Attribute;

    return-void
.end method

.method public final visitEnd()V
    .locals 0

    return-void
.end method

.method public final visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->putTarget(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->a:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/FieldWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/FieldWriter;->j:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method
