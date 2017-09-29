.class Lorg/objectweb/asm/MethodWriter;
.super Lorg/objectweb/asm/MethodVisitor;


# static fields
.field static final ACC_CONSTRUCTOR:I = 0x80000

.field static final APPEND_FRAME:I = 0xfc

.field static final CHOP_FRAME:I = 0xf8

.field static final FULL_FRAME:I = 0xff

.field static final RESERVED:I = 0x80

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7


# instance fields
.field private A:Lorg/objectweb/asm/ByteVector;

.field private B:I

.field private C:Lorg/objectweb/asm/ByteVector;

.field private D:I

.field private E:Lorg/objectweb/asm/ByteVector;

.field private F:I

.field private G:Lorg/objectweb/asm/ByteVector;

.field private H:I

.field private I:Lorg/objectweb/asm/AnnotationWriter;

.field private J:Lorg/objectweb/asm/AnnotationWriter;

.field private K:Lorg/objectweb/asm/Attribute;

.field private L:Z

.field private M:I

.field private final N:I

.field private O:Lorg/objectweb/asm/Label;

.field private P:Lorg/objectweb/asm/Label;

.field private Q:Lorg/objectweb/asm/Label;

.field private R:I

.field private S:I

.field private a:I

.field private final b:I

.field private final c:I

.field classReaderLength:I

.field classReaderOffset:I

.field final cw:Lorg/objectweb/asm/ClassWriter;

.field private final d:Ljava/lang/String;

.field private e:Lorg/objectweb/asm/ByteVector;

.field exceptionCount:I

.field exceptions:[I

.field private f:Lorg/objectweb/asm/AnnotationWriter;

.field private g:Lorg/objectweb/asm/AnnotationWriter;

.field private h:Lorg/objectweb/asm/AnnotationWriter;

.field private i:Lorg/objectweb/asm/AnnotationWriter;

.field private j:[Lorg/objectweb/asm/AnnotationWriter;

.field private k:[Lorg/objectweb/asm/AnnotationWriter;

.field private l:I

.field private m:Lorg/objectweb/asm/Attribute;

.field private n:Lorg/objectweb/asm/ByteVector;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lorg/objectweb/asm/ByteVector;

.field signature:Ljava/lang/String;

.field private t:I

.field private u:[I

.field private v:[I

.field private w:I

.field private x:Lorg/objectweb/asm/Handler;

.field private y:Lorg/objectweb/asm/Handler;

.field private z:I


# direct methods
.method constructor <init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    if-nez v0, :cond_1

    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    :goto_0
    iput-object p0, p1, Lorg/objectweb/asm/ClassWriter;->lastMethod:Lorg/objectweb/asm/MethodWriter;

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    const-string/jumbo v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    :cond_0
    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->b:I

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    iput-object p4, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/objectweb/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz p6, :cond_2

    array-length v0, p6

    if-lez v0, :cond_2

    array-length v0, p6

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->exceptions:[I

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->exceptions:[I

    aget-object v3, p6, v0

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/objectweb/asm/ClassWriter;->lastMethod:Lorg/objectweb/asm/MethodWriter;

    iput-object p0, v0, Lorg/objectweb/asm/MethodWriter;->mv:Lorg/objectweb/asm/MethodVisitor;

    goto :goto_0

    :cond_2
    if-eqz p8, :cond_6

    :goto_2
    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez p7, :cond_3

    if-eqz p8, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->q:I

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/objectweb/asm/Label;->status:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_5
    return-void

    :cond_6
    if-eqz p7, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    goto :goto_2
.end method

.method private a(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v0, 0x3

    return v0
.end method

.method private a()V
    .locals 3

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    new-instance v1, Lorg/objectweb/asm/Frame;

    invoke-direct {v1}, Lorg/objectweb/asm/Frame;-><init>()V

    iput-object v1, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v1, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iput-object v0, v1, Lorg/objectweb/asm/Frame;->owner:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->data:[B

    invoke-virtual {v0, p0, v1, v2}, Lorg/objectweb/asm/Label;->resolve(Lorg/objectweb/asm/MethodWriter;I[B)Z

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iput-object v0, v1, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    iput v1, v0, Lorg/objectweb/asm/Label;->outputStackMax:I

    goto :goto_0
.end method

.method private a(II)V
    .locals 7

    const/high16 v6, 0xff00000

    const v5, 0xfffff

    const/4 v4, 0x7

    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    aget v2, v0, p1

    const/high16 v0, -0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    and-int v0, v2, v5

    and-int v1, v2, v6

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, v3, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    aget-object v0, v3, v0

    iget-object v0, v0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, v2, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    aget-object v0, v2, v0

    iget v0, v0, Lorg/objectweb/asm/Item;->intVal:I

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    shr-int/lit8 v0, v0, 0x1c

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_2

    :cond_1
    and-int v0, v2, v6

    const/high16 v1, 0x1700000

    if-ne v0, v1, :cond_2

    const/16 v0, 0x4c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v0, v0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    and-int v1, v2, v5

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v2, 0xf

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x4a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_3
    const/16 v0, 0x44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x5a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_5
    const/16 v0, 0x42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_6
    const/16 v0, 0x43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_7
    const/16 v0, 0x53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1700000 -> :sswitch_0
        0x1800000 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(ILorg/objectweb/asm/Label;)V
    .locals 2

    new-instance v0, Lorg/objectweb/asm/Edge;

    invoke-direct {v0}, Lorg/objectweb/asm/Edge;-><init>()V

    iput p1, v0, Lorg/objectweb/asm/Edge;->info:I

    iput-object p2, v0, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iput-object v1, v0, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iput-object v0, v1, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lorg/objectweb/asm/Label;

    iget v1, p1, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_0
.end method

.method private a(Lorg/objectweb/asm/Frame;)V
    .locals 11

    const v10, 0x1000004

    const v9, 0x1000003

    const/4 v1, 0x0

    iget-object v5, p1, Lorg/objectweb/asm/Frame;->inputLocals:[I

    iget-object v6, p1, Lorg/objectweb/asm/Frame;->inputStack:[I

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    array-length v4, v5

    if-ge v3, v4, :cond_3

    aget v4, v5, v3

    const/high16 v7, 0x1000000

    if-ne v4, v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-eq v4, v10, :cond_0

    if-ne v4, v9, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    move v3, v1

    :goto_2
    array-length v4, v6

    if-ge v3, v4, :cond_6

    aget v4, v6, v3

    add-int/lit8 v2, v2, 0x1

    if-eq v4, v10, :cond_4

    if-ne v4, v9, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p1, Lorg/objectweb/asm/Frame;->owner:Lorg/objectweb/asm/Label;

    iget v3, v3, Lorg/objectweb/asm/Label;->position:I

    invoke-direct {p0, v3, v0, v2}, Lorg/objectweb/asm/MethodWriter;->a(III)I

    move-result v2

    move v3, v0

    move v0, v1

    :goto_3
    if-lez v3, :cond_9

    aget v7, v5, v0

    iget-object v8, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v4, v2, 0x1

    aput v7, v8, v2

    if-eq v7, v10, :cond_7

    if-ne v7, v9, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move v0, v2

    move v2, v4

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    array-length v2, v6

    if-ge v1, v2, :cond_c

    aget v3, v6, v1

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v2, v0, 0x1

    aput v3, v4, v0

    if-eq v3, v10, :cond_a

    if-ne v3, v9, :cond_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->b()V

    return-void
.end method

.method private a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    const/16 v2, 0xab

    invoke-virtual {v0, v2, v1, v3, v3}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    invoke-direct {p0, v1, p1}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    invoke-virtual {p1}, Lorg/objectweb/asm/Label;->getFirst()Lorg/objectweb/asm/Label;

    move-result-object v0

    iget v2, v0, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lorg/objectweb/asm/Label;->status:I

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/Label;->getFirst()Lorg/objectweb/asm/Label;

    move-result-object v2

    iget v3, v2, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lorg/objectweb/asm/Label;->status:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_1

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    aget-object v2, p2, v1

    invoke-direct {p0, v0, v2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->a()V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 12

    const/16 v0, 0x40

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/16 v2, 0xff

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->u:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    if-nez v3, :cond_0

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v3, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    aget v7, v3, v10

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    const/4 v5, 0x2

    aget v9, v3, v5

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget v3, v3, Lorg/objectweb/asm/ClassWriter;->version:I

    const v5, 0xffff

    and-int/2addr v3, v5

    const/16 v5, 0x32

    if-ge v3, v5, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v7, 0x3

    invoke-direct {p0, v4, v0}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v7, 0x3

    add-int/lit8 v1, v7, 0x3

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    :goto_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->r:I

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->u:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    return-void

    :cond_2
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->u:[I

    aget v5, v3, v10

    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->r:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    aget v3, v3, v1

    move v8, v3

    :goto_1
    if-nez v9, :cond_6

    sub-int v3, v7, v5

    packed-switch v3, :pswitch_data_0

    move v0, v2

    :goto_2
    move v6, v5

    move v5, v3

    :goto_3
    if-eq v0, v2, :cond_3

    move v3, v4

    :goto_4
    if-ge v1, v6, :cond_3

    iget-object v10, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    aget v10, v10, v3

    iget-object v11, p0, Lorg/objectweb/asm/MethodWriter;->u:[I

    aget v11, v11, v3

    if-eq v10, v11, :cond_8

    move v0, v2

    :cond_3
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v7, 0x3

    invoke-direct {p0, v4, v0}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v9}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v7, 0x3

    add-int/lit8 v1, v7, 0x3

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    aget v3, v3, v1

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->u:[I

    aget v6, v6, v1

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    move v8, v3

    goto :goto_1

    :pswitch_0
    const/16 v0, 0xf8

    move v5, v3

    move v6, v7

    goto :goto_3

    :pswitch_1
    if-ge v8, v0, :cond_5

    move v0, v1

    :goto_5
    move v6, v5

    move v5, v3

    goto :goto_3

    :cond_5
    const/16 v0, 0xfb

    goto :goto_5

    :pswitch_2
    const/16 v0, 0xfc

    goto :goto_2

    :cond_6
    if-ne v7, v5, :cond_9

    if-ne v9, v10, :cond_9

    const/16 v3, 0x3f

    if-ge v8, v3, :cond_7

    :goto_6
    move v6, v5

    move v5, v1

    goto :goto_3

    :cond_7
    const/16 v0, 0xf7

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :sswitch_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v8, 0x40

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v7, 0x3

    add-int/lit8 v1, v7, 0x4

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v7, 0x3

    add-int/lit8 v1, v7, 0x4

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    add-int/lit16 v1, v5, 0xfb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    add-int/lit16 v1, v5, 0xfb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, v7, 0x3

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/MethodWriter;->a(II)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    move v6, v5

    move v5, v1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0xf7 -> :sswitch_2
        0xf8 -> :sswitch_4
        0xfb -> :sswitch_3
        0xfc -> :sswitch_5
    .end sparse-switch
.end method

.method static getNewOffset([I[III)I
    .locals 3

    sub-int v1, p3, p2

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget v2, p0, v0

    if-ge p2, v2, :cond_1

    aget v2, p0, v0

    if-gt v2, p3, :cond_1

    aget v2, p1, v0

    add-int/2addr v1, v2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v2, p0, v0

    if-ge p3, v2, :cond_0

    aget v2, p0, v0

    if-gt v2, p2, :cond_0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_2
    return v1
.end method

.method static getNewOffset([I[ILorg/objectweb/asm/Label;)V
    .locals 2

    iget v0, p2, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget v1, p2, Lorg/objectweb/asm/Label;->position:I

    invoke-static {p0, p1, v0, v1}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v0

    iput v0, p2, Lorg/objectweb/asm/Label;->position:I

    iget v0, p2, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Lorg/objectweb/asm/Label;->status:I

    :cond_0
    return-void
.end method

.method static readInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static readShort([BI)S
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static readUnsignedShort([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static writeShort([BII)V
    .locals 2

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method final getSize()I
    .locals 10

    const v9, 0xffff

    const/4 v8, -0x1

    const/4 v6, 0x0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->classReaderOffset:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->classReaderLength:I

    add-int/lit8 v7, v0, 0x6

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/16 v7, 0x8

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Method code too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Code"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x12

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget v1, v1, Lorg/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v1, v9

    const/16 v2, 0x32

    if-lt v1, v2, :cond_14

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    if-eqz v1, :cond_15

    const-string/jumbo v1, "StackMapTable"

    :goto_2
    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v7, v0

    :goto_3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->getSize(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v7, v0

    :cond_8
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    :cond_9
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget v0, v0, Lorg/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v0, v9

    const/16 v1, 0x31

    if-lt v0, v1, :cond_a

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x6

    :cond_b
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x6

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x8

    :cond_d
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v7, v0

    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v7, v0

    :cond_f
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->f:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->f:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    :cond_12
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    :cond_13
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->l:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    add-int v1, v7, v0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->l:I

    if-lt v0, v2, :cond_18

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, v0

    if-nez v2, :cond_16

    move v2, v6

    :goto_5
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_14
    move v1, v6

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v1, "StackMap"

    goto/16 :goto_2

    :cond_16
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v2

    goto :goto_5

    :cond_17
    move v1, v7

    :cond_18
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->l:I

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->l:I

    if-lt v0, v2, :cond_1a

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, v0

    if-nez v2, :cond_19

    move v2, v6

    :goto_7
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_19
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v2

    goto :goto_7

    :cond_1a
    move v7, v1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    move v3, v6

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->getSize(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v7, v0

    goto/16 :goto_0

    :cond_1b
    move v7, v0

    goto/16 :goto_3
.end method

.method final put(Lorg/objectweb/asm/ByteVector;)V
    .locals 12

    const/4 v11, -0x1

    const/high16 v10, 0x40000

    const v9, 0xffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v0, 0xe0000

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    and-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x40

    or-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->b:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->c:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->classReaderOffset:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v0, v0, Lorg/objectweb/asm/ClassWriter;->cr:Lorg/objectweb/asm/ClassReader;

    iget-object v0, v0, Lorg/objectweb/asm/ClassReader;->b:[B

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->classReaderOffset:I

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->classReaderLength:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_35

    move v0, v6

    :goto_1
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    if-lez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget v1, v1, Lorg/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v1, v9

    const/16 v2, 0x31

    if-lt v1, v2, :cond_3

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    and-int/2addr v1, v10

    if-eqz v1, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->f:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v1}, Lorg/objectweb/asm/Attribute;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_23

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v8, v0

    :goto_2
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->getSize(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v8, v0

    :cond_15
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Code"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v7, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    if-lez v0, :cond_16

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->x:Lorg/objectweb/asm/Handler;

    :goto_3
    if-eqz v0, :cond_16

    iget-object v1, v0, Lorg/objectweb/asm/Handler;->start:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    iget v2, v2, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lorg/objectweb/asm/Handler;->handler:Lorg/objectweb/asm/Label;

    iget v2, v2, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/objectweb/asm/Handler;->type:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    goto :goto_3

    :cond_16
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_33

    move v0, v6

    :goto_4
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    :cond_17
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_18
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    :cond_1a
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_1b

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v1}, Lorg/objectweb/asm/Attribute;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->B:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1d
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->D:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->F:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1f
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget v0, v0, Lorg/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v0, v9

    const/16 v1, 0x32

    if-lt v0, v1, :cond_24

    :goto_5
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    if-eqz v6, :cond_25

    const-string/jumbo v0, "StackMapTable"

    :goto_6
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->r:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_20
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_21
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_22
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->put(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    :cond_23
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    if-lez v0, :cond_26

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v0, v7

    :goto_7
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->exceptionCount:I

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->exceptions:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    move v6, v7

    goto/16 :goto_5

    :cond_25
    const-string/jumbo v0, "StackMap"

    goto/16 :goto_6

    :cond_26
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget v0, v0, Lorg/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v0, v9

    const/16 v1, 0x31

    if-lt v0, v1, :cond_27

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_28

    :cond_27
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_28
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_29
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_2a
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->z:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_2b
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v7, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_2c
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->f:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->f:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_2d
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_2e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_2f
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_30
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->l:I

    invoke-static {v0, v1, p1}, Lorg/objectweb/asm/AnnotationWriter;->put([Lorg/objectweb/asm/AnnotationWriter;ILorg/objectweb/asm/ByteVector;)V

    :cond_31
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->l:I

    invoke-static {v0, v1, p1}, Lorg/objectweb/asm/AnnotationWriter;->put([Lorg/objectweb/asm/AnnotationWriter;ILorg/objectweb/asm/ByteVector;)V

    :cond_32
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/Attribute;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x0

    move v3, v7

    move v4, v11

    move v5, v11

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->put(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    goto/16 :goto_0

    :cond_33
    move v0, v7

    goto/16 :goto_4

    :cond_34
    move v8, v0

    goto/16 :goto_2

    :cond_35
    move v0, v7

    goto/16 :goto_1
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->f:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->f:Lorg/objectweb/asm/AnnotationWriter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->g:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->e:Lorg/objectweb/asm/ByteVector;

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    invoke-virtual {p1}, Lorg/objectweb/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->m:Lorg/objectweb/asm/Attribute;

    goto :goto_0
.end method

.method public visitCode()V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/16 v6, 0x4a

    const/16 v5, 0x44

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v3, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v3

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v4, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v3, Lorg/objectweb/asm/Item;->index:I

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_1
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-eq v4, v5, :cond_2

    if-ne v4, v6, :cond_3

    :cond_2
    const/4 v1, -0x3

    :cond_3
    add-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-le v0, v1, :cond_4

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    :cond_4
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-eq v4, v5, :cond_5

    if-ne v4, v6, :cond_6

    :cond_5
    const/4 v0, 0x2

    :cond_6
    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-eq v4, v5, :cond_7

    if-ne v4, v6, :cond_8

    :cond_7
    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    :pswitch_2
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    if-eq v4, v5, :cond_9

    if-ne v4, v6, :cond_a

    :cond_9
    :goto_3
    add-int/2addr v0, v1

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->u:[I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/MethodWriter;->a(III)I

    move-result v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    const/4 v2, 0x3

    add-int/lit8 v0, v0, 0x1

    const/high16 v3, 0x1700000

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v5, v5, Lorg/objectweb/asm/ClassWriter;->thisName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v3, v4

    aput v3, v1, v2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    :goto_2
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    const/4 v1, 0x1

    add-int/lit8 v2, v2, -0x3

    aput v2, v0, v1

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->b()V

    :cond_3
    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->q:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, v0, p2, p4}, Lorg/objectweb/asm/MethodWriter;->a(III)I

    move-result v2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, p2, :cond_a

    aget-object v0, p3, v3

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v1, v2, 0x1

    const/high16 v5, 0x1700000

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    aput v0, v4, v2

    move v0, v1

    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v2, v0

    move v3, v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    const/4 v2, 0x3

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x6

    aput v3, v1, v2

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x1

    aput v4, v3, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x2

    aput v4, v3, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x4

    aput v4, v3, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :sswitch_3
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x3

    aput v4, v3, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :goto_5
    :sswitch_4
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    :goto_6
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v3, v2, 0x1

    const/high16 v5, 0x1700000

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v7, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    aput v0, v4, v2

    move v0, v1

    move v2, v3

    goto/16 :goto_2

    :goto_7
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3b

    if-eq v1, v4, :cond_7

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    :cond_7
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v1, v2, 0x1

    const/high16 v5, 0x1700000

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v7, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    add-int/lit8 v8, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v3, v5

    aput v3, v4, v2

    move v2, v1

    goto/16 :goto_2

    :cond_8
    aget-object v0, p3, v3

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v1, v2, 0x1

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v2

    move v0, v1

    goto/16 :goto_4

    :cond_9
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v1, v2, 0x1

    const/high16 v5, 0x1800000

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v7, ""

    aget-object v0, p3, v3

    check-cast v0, Lorg/objectweb/asm/Label;

    iget v0, v0, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v6, v7, v0}, Lorg/objectweb/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v5

    aput v0, v4, v2

    move v0, v1

    goto/16 :goto_4

    :cond_a
    const/4 v0, 0x0

    move v3, v0

    :goto_8
    if-ge v3, p4, :cond_d

    aget-object v0, p5, v3

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v1, v2, 0x1

    const/high16 v5, 0x1700000

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    aget-object v0, p5, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v5

    aput v0, v4, v2

    move v0, v1

    :goto_9
    add-int/lit8 v1, v3, 0x1

    move v2, v0

    move v3, v1

    goto :goto_8

    :cond_b
    aget-object v0, p5, v3

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v1, v2, 0x1

    aget-object v0, p5, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v2

    move v0, v1

    goto :goto_9

    :cond_c
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    add-int/lit8 v1, v2, 0x1

    const/high16 v5, 0x1800000

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v7, ""

    aget-object v0, p5, v3

    check-cast v0, Lorg/objectweb/asm/Label;

    iget v0, v0, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v6, v7, v0}, Lorg/objectweb/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v0

    or-int/2addr v0, v5

    aput v0, v4, v2

    move v0, v1

    goto :goto_9

    :cond_d
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->b()V

    :goto_a
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->q:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_11

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    :cond_f
    packed-switch p1, :pswitch_data_0

    :cond_10
    :goto_b
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->r:I

    goto :goto_a

    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->t:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->q:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_12

    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_12
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p4, :cond_10

    aget-object v1, p5, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :pswitch_1
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->q:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->q:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    add-int/lit16 v2, p2, 0xfb

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p2, :cond_10

    aget-object v1, p3, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/MethodWriter;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :pswitch_2
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->q:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->q:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    rsub-int v2, p2, 0xfb

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_b

    :pswitch_3
    const/16 v1, 0x40

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_b

    :cond_13
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xfb

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto/16 :goto_b

    :pswitch_4
    const/16 v1, 0x40

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_f
    const/4 v0, 0x0

    aget-object v0, p5, v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodWriter;->a(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_14
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->s:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xf7

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_f

    :sswitch_5
    move v3, v1

    goto/16 :goto_7

    nop

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x84

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_2

    const/16 v0, -0x80

    if-ge p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_0
.end method

.method public visitInsn(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :goto_0
    const/16 v0, 0xac

    if-lt p1, v0, :cond_0

    const/16 v0, 0xb1

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->a()V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    sget-object v1, Lorg/objectweb/asm/Frame;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-le v0, v1, :cond_4

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    :cond_4
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    goto :goto_0
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const v0, -0xffff01

    and-int/2addr v0, p1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {v0, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->putTarget(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitIntInsn(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    :goto_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    :cond_2
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 6

    const/16 v5, 0xba

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v1

    iget v0, v1, Lorg/objectweb/asm/Item;->intVal:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, v5, v4, v2, v1}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/Item;->index:I

    invoke-virtual {v0, v5, v1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/objectweb/asm/Item;->intVal:I

    :cond_2
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    shr-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    and-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-le v0, v2, :cond_3

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    :cond_3
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    goto :goto_0
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 7

    const/16 v6, 0xc8

    const/16 v5, 0xa8

    const/4 v0, 0x0

    const/16 v4, 0xa7

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v1, p1, v3, v0, v0}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    invoke-virtual {p2}, Lorg/objectweb/asm/Label;->getFirst()Lorg/objectweb/asm/Label;

    move-result-object v1

    iget v2, v1, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/objectweb/asm/Label;->status:I

    invoke-direct {p0, v3, p2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    if-eq p1, v4, :cond_0

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    :cond_0
    :goto_0
    iget v1, p2, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    iget v1, p2, Lorg/objectweb/asm/Label;->position:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v1, v2

    const/16 v2, -0x8000

    if-ge v1, v2, :cond_a

    if-ne p1, v4, :cond_6

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v6}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_1
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p2, p0, v1, v2, v3}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    :goto_2
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_1
    if-ne p1, v4, :cond_2

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->a()V

    :cond_2
    return-void

    :cond_3
    if-ne p1, v5, :cond_5

    iget v0, p2, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_4

    iget v0, p2, Lorg/objectweb/asm/Label;->status:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p2, Lorg/objectweb/asm/Label;->status:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    :cond_4
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->status:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lorg/objectweb/asm/Label;->status:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    sget-object v2, Lorg/objectweb/asm/Frame;->SIZE:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    invoke-direct {p0, v1, p2}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    goto :goto_0

    :cond_6
    if-ne p1, v5, :cond_7

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    iget v1, v0, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/objectweb/asm/Label;->status:I

    :cond_8
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_9

    add-int/lit8 v1, p1, 0x1

    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v6}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_9
    xor-int/lit8 v1, p1, 0x1

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, p0, v1, v2, v3}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    goto/16 :goto_2
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->L:Z

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v2, v2, Lorg/objectweb/asm/ByteVector;->data:[B

    invoke-virtual {p1, p0, v1, v2}, Lorg/objectweb/asm/Label;->resolve(Lorg/objectweb/asm/MethodWriter;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->L:Z

    iget v0, p1, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_3

    iget v0, p1, Lorg/objectweb/asm/Label;->position:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->position:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->status:I

    iget v2, p1, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Label;->status:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iput-object v0, p1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, p1}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    :cond_3
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, p1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    if-nez v0, :cond_4

    new-instance v0, Lorg/objectweb/asm/Frame;

    invoke-direct {v0}, Lorg/objectweb/asm/Frame;-><init>()V

    iput-object v0, p1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v0, p1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iput-object p1, v0, Lorg/objectweb/asm/Frame;->owner:Lorg/objectweb/asm/Label;

    :cond_4
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_6

    iget v0, p1, Lorg/objectweb/asm/Label;->position:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->position:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->status:I

    iget v2, p1, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Label;->status:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iput-object v0, p1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iput-object p1, v0, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    :cond_6
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    goto :goto_0

    :cond_7
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    iput v1, v0, Lorg/objectweb/asm/Label;->outputStackMax:I

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/MethodWriter;->a(ILorg/objectweb/asm/Label;)V

    :cond_8
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    iput-object p1, v0, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    :cond_9
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->P:Lorg/objectweb/asm/Label;

    goto/16 :goto_0
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 7

    const/16 v6, 0x12

    const/4 v5, 0x6

    const/4 v4, 0x5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, v6, v2, v3, v1}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    :goto_0
    iget v0, v1, Lorg/objectweb/asm/Item;->index:I

    iget v2, v1, Lorg/objectweb/asm/Item;->type:I

    if-eq v2, v4, :cond_1

    iget v1, v1, Lorg/objectweb/asm/Item;->type:I

    if-ne v1, v5, :cond_6

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    :goto_1
    return-void

    :cond_2
    iget v0, v1, Lorg/objectweb/asm/Item;->type:I

    if-eq v0, v4, :cond_3

    iget v0, v1, Lorg/objectweb/asm/Item;->type:I

    if-ne v0, v5, :cond_5

    :cond_3
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    add-int/lit8 v0, v0, 0x2

    :goto_2
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-le v0, v2, :cond_4

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    :cond_4
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/16 v1, 0x100

    if-lt v0, v1, :cond_7

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v6, v0}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->F:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v1, p2, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 4

    const/4 v0, 0x2

    if-eqz p3, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    if-nez v1, :cond_0

    new-instance v1, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v1}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->D:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->D:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    iget v2, p4, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/objectweb/asm/Label;->position:I

    iget v3, p4, Lorg/objectweb/asm/Label;->position:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    if-nez v1, :cond_2

    new-instance v1, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v1}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    :cond_2
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->B:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    iget v2, p4, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/objectweb/asm/Label;->position:I

    iget v3, p4, Lorg/objectweb/asm/Label;->position:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-eq v1, v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x44

    if-ne v1, v2, :cond_5

    :cond_3
    :goto_0
    add-int/2addr v0, p6

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    if-le v0, v1, :cond_4

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    array-length v2, p3

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v0, v1

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    aget-object v2, p3, v0

    iget v2, v2, Lorg/objectweb/asm/Label;->position:I

    invoke-virtual {v3, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    aget-object v4, p4, v0

    iget v4, v4, Lorg/objectweb/asm/Label;->position:I

    aget-object v5, p3, v0

    iget v5, v5, Lorg/objectweb/asm/Label;->position:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    aget v4, p5, v0

    invoke-virtual {v2, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v3, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p6}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p7, :cond_2

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    :goto_2
    return-object v0

    :cond_1
    iget-object v0, p2, Lorg/objectweb/asm/TypePath;->b:[B

    iget v2, p2, Lorg/objectweb/asm/TypePath;->offset:I

    aget-byte v0, v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p2, Lorg/objectweb/asm/TypePath;->b:[B

    iget v4, p2, Lorg/objectweb/asm/TypePath;->offset:I

    invoke-virtual {v3, v2, v4, v0}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_2
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, p0, v2, v1, v5}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    aget-object v2, p3, v0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, p0, v3, v1, v5}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/objectweb/asm/MethodWriter;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 13

    iget-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->L:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v7, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    const/4 v0, 0x0

    new-array v2, v0, [I

    const/4 v0, 0x0

    new-array v1, v0, [I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    new-array v8, v0, [Z

    const/4 v0, 0x3

    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 v3, 0x0

    move-object v12, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v12

    :cond_1
    :goto_1
    array-length v4, v7

    if-ge v3, v4, :cond_c

    aget-byte v4, v7, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v6, 0x0

    sget-object v5, Lorg/objectweb/asm/ClassWriter;->TYPE:[B

    aget-byte v5, v5, v4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v3, v3, 0x4

    :goto_2
    if-eqz v6, :cond_1

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v5, v4, [I

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    aput v3, v5, v1

    array-length v0, v0

    aput v6, v4, v0

    if-lez v6, :cond_43

    const/4 v2, 0x3

    move-object v0, v4

    move-object v1, v5

    goto :goto_1

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_2
    const/16 v5, 0xc9

    if-le v4, v5, :cond_5

    const/16 v5, 0xda

    if-ge v4, v5, :cond_4

    add-int/lit8 v4, v4, -0x31

    :goto_3
    add-int/lit8 v5, v3, 0x1

    invoke-static {v7, v5}, Lorg/objectweb/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v5

    add-int/2addr v5, v3

    :goto_4
    invoke-static {v1, v0, v3, v5}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v5

    const/16 v9, -0x8000

    if-lt v5, v9, :cond_2

    const/16 v9, 0x7fff

    if-le v5, v9, :cond_44

    :cond_2
    aget-boolean v5, v8, v3

    if-nez v5, :cond_44

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_6

    :cond_3
    const/4 v4, 0x2

    :goto_5
    const/4 v5, 0x1

    aput-boolean v5, v8, v3

    :goto_6
    add-int/lit8 v3, v3, 0x3

    move v6, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, -0x14

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v3, 0x1

    invoke-static {v7, v5}, Lorg/objectweb/asm/MethodWriter;->readShort([BI)S

    move-result v5

    add-int/2addr v5, v3

    goto :goto_4

    :cond_6
    const/4 v4, 0x5

    goto :goto_5

    :pswitch_3
    add-int/lit8 v3, v3, 0x5

    goto :goto_2

    :pswitch_4
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v3}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    neg-int v6, v4

    :cond_7
    :goto_7
    add-int/lit8 v4, v3, 0x4

    and-int/lit8 v3, v3, 0x3

    sub-int v3, v4, v3

    add-int/lit8 v4, v3, 0x8

    invoke-static {v7, v4}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v4

    add-int/lit8 v5, v3, 0x4

    invoke-static {v7, v5}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    goto/16 :goto_2

    :cond_8
    aget-boolean v4, v8, v3

    if-nez v4, :cond_7

    and-int/lit8 v6, v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    goto :goto_7

    :pswitch_5
    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v3}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    neg-int v6, v4

    :cond_9
    :goto_8
    add-int/lit8 v4, v3, 0x4

    and-int/lit8 v3, v3, 0x3

    sub-int v3, v4, v3

    add-int/lit8 v4, v3, 0x4

    invoke-static {v7, v4}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    goto/16 :goto_2

    :cond_a
    aget-boolean v4, v8, v3

    if-nez v4, :cond_9

    and-int/lit8 v6, v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v8, v3

    goto :goto_8

    :pswitch_6
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x84

    if-ne v4, v5, :cond_b

    add-int/lit8 v3, v3, 0x6

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_2

    :pswitch_7
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_2

    :pswitch_8
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_2

    :pswitch_9
    add-int/lit8 v3, v3, 0x5

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x3

    if-ge v2, v3, :cond_d

    add-int/lit8 v2, v2, -0x1

    :cond_d
    if-nez v2, :cond_42

    new-instance v6, Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-direct {v6, v2}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    const/4 v2, 0x0

    :goto_9
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    if-ge v2, v3, :cond_15

    aget-byte v3, v7, v2

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lorg/objectweb/asm/ClassWriter;->TYPE:[B

    aget-byte v4, v4, v3

    packed-switch v4, :pswitch_data_1

    :pswitch_a
    const/4 v3, 0x4

    invoke-virtual {v6, v7, v2, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x4

    goto :goto_9

    :pswitch_b
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :pswitch_c
    const/16 v4, 0xc9

    if-le v3, v4, :cond_f

    const/16 v4, 0xda

    if-ge v3, v4, :cond_e

    add-int/lit8 v3, v3, -0x31

    :goto_a
    add-int/lit8 v4, v2, 0x1

    invoke-static {v7, v4}, Lorg/objectweb/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v4

    add-int/2addr v4, v2

    :goto_b
    invoke-static {v1, v0, v2, v4}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v4

    aget-boolean v5, v8, v2

    if-eqz v5, :cond_13

    const/16 v5, 0xa7

    if-ne v3, v5, :cond_10

    const/16 v3, 0xc8

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move v3, v4

    :goto_c
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_d
    add-int/lit8 v2, v2, 0x3

    goto :goto_9

    :cond_e
    add-int/lit8 v3, v3, -0x14

    goto :goto_a

    :cond_f
    add-int/lit8 v4, v2, 0x1

    invoke-static {v7, v4}, Lorg/objectweb/asm/MethodWriter;->readShort([BI)S

    move-result v4

    add-int/2addr v4, v2

    goto :goto_b

    :cond_10
    const/16 v5, 0xa8

    if-ne v3, v5, :cond_11

    const/16 v3, 0xc9

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move v3, v4

    goto :goto_c

    :cond_11
    const/16 v5, 0xa6

    if-gt v3, v5, :cond_12

    add-int/lit8 v3, v3, 0x1

    xor-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_e
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0xc8

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v3, v4, -0x3

    goto :goto_c

    :cond_12
    xor-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_13
    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_d

    :pswitch_d
    add-int/lit8 v4, v2, 0x1

    invoke-static {v7, v4}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v1, v0, v2, v4}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v4

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_9

    :pswitch_e
    add-int/lit8 v3, v2, 0x4

    and-int/lit8 v4, v2, 0x3

    sub-int/2addr v3, v4

    const/16 v4, 0xaa

    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v9, v6, Lorg/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    rem-int/lit8 v9, v9, 0x4

    invoke-virtual {v6, v4, v5, v9}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    invoke-static {v7, v3}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x4

    invoke-static {v1, v0, v2, v4}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v4

    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v7, v3}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v4

    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v7, v5}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v5, 0x4

    add-int/lit8 v5, v4, -0x4

    invoke-static {v7, v5}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v5

    invoke-virtual {v6, v5}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move v12, v3

    move v3, v4

    move v4, v12

    :goto_f
    if-lez v4, :cond_41

    invoke-static {v7, v3}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v5

    add-int v9, v2, v5

    add-int/lit8 v5, v3, 0x4

    invoke-static {v1, v0, v2, v9}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v3

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v5

    goto :goto_f

    :pswitch_f
    add-int/lit8 v3, v2, 0x4

    and-int/lit8 v4, v2, 0x3

    sub-int/2addr v3, v4

    const/16 v4, 0xab

    invoke-virtual {v6, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v9, v6, Lorg/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    rem-int/lit8 v9, v9, 0x4

    invoke-virtual {v6, v4, v5, v9}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    invoke-static {v7, v3}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, 0x4

    invoke-static {v1, v0, v2, v4}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v3

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    invoke-static {v7, v5}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v3

    add-int/lit8 v4, v5, 0x4

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move v12, v3

    move v3, v4

    move v4, v12

    :goto_10
    if-lez v4, :cond_41

    invoke-static {v7, v3}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v5

    invoke-virtual {v6, v5}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v3, v3, 0x4

    invoke-static {v7, v3}, Lorg/objectweb/asm/MethodWriter;->readInt([BI)I

    move-result v5

    add-int v9, v2, v5

    add-int/lit8 v5, v3, 0x4

    invoke-static {v1, v0, v2, v9}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v3

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move v3, v5

    goto :goto_10

    :pswitch_10
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x84

    if-ne v3, v4, :cond_14

    const/4 v3, 0x6

    invoke-virtual {v6, v7, v2, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_9

    :cond_14
    const/4 v3, 0x4

    invoke-virtual {v6, v7, v2, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_9

    :pswitch_11
    const/4 v3, 0x2

    invoke-virtual {v6, v7, v2, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_9

    :pswitch_12
    const/4 v3, 0x3

    invoke-virtual {v6, v7, v2, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_9

    :pswitch_13
    const/4 v3, 0x5

    invoke-virtual {v6, v7, v2, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_9

    :cond_15
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v2, :cond_19

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    :goto_11
    if-eqz v2, :cond_17

    iget v3, v2, Lorg/objectweb/asm/Label;->position:I

    add-int/lit8 v3, v3, -0x3

    if-ltz v3, :cond_16

    aget-boolean v3, v8, v3

    if-eqz v3, :cond_16

    iget v3, v2, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lorg/objectweb/asm/Label;->status:I

    :cond_16
    invoke-static {v1, v0, v2}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[ILorg/objectweb/asm/Label;)V

    iget-object v2, v2, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    goto :goto_11

    :cond_17
    const/4 v2, 0x0

    :goto_12
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, v3, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v3, v3, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    aget-object v3, v3, v2

    if-eqz v3, :cond_18

    iget v4, v3, Lorg/objectweb/asm/Item;->type:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_18

    const/4 v4, 0x0

    iget v5, v3, Lorg/objectweb/asm/Item;->intVal:I

    invoke-static {v1, v0, v4, v5}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v4

    iput v4, v3, Lorg/objectweb/asm/Item;->intVal:I

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_19
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->r:I

    if-lez v2, :cond_1a

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/objectweb/asm/ClassWriter;->invalidFrames:Z

    :cond_1a
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->x:Lorg/objectweb/asm/Handler;

    :goto_13
    if-eqz v2, :cond_1b

    iget-object v3, v2, Lorg/objectweb/asm/Handler;->start:Lorg/objectweb/asm/Label;

    invoke-static {v1, v0, v3}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[ILorg/objectweb/asm/Label;)V

    iget-object v3, v2, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    invoke-static {v1, v0, v3}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[ILorg/objectweb/asm/Label;)V

    iget-object v3, v2, Lorg/objectweb/asm/Handler;->handler:Lorg/objectweb/asm/Label;

    invoke-static {v1, v0, v3}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[ILorg/objectweb/asm/Label;)V

    iget-object v2, v2, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    move v4, v2

    :goto_14
    const/4 v2, 0x2

    if-ge v4, v2, :cond_1e

    if-nez v4, :cond_1c

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->C:Lorg/objectweb/asm/ByteVector;

    move-object v3, v2

    :goto_15
    if-eqz v3, :cond_1d

    iget-object v5, v3, Lorg/objectweb/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    :goto_16
    iget v7, v3, Lorg/objectweb/asm/ByteVector;->length:I

    if-ge v2, v7, :cond_1d

    invoke-static {v5, v2}, Lorg/objectweb/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v1, v0, v8, v7}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v8

    invoke-static {v5, v2, v8}, Lorg/objectweb/asm/MethodWriter;->writeShort([BII)V

    add-int/lit8 v9, v2, 0x2

    invoke-static {v5, v9}, Lorg/objectweb/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v9

    add-int/2addr v7, v9

    const/4 v9, 0x0

    invoke-static {v1, v0, v9, v7}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v7

    sub-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x2

    invoke-static {v5, v8, v7}, Lorg/objectweb/asm/MethodWriter;->writeShort([BII)V

    add-int/lit8 v2, v2, 0xa

    goto :goto_16

    :cond_1c
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->E:Lorg/objectweb/asm/ByteVector;

    move-object v3, v2

    goto :goto_15

    :cond_1d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_14

    :cond_1e
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget-object v3, v2, Lorg/objectweb/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    :goto_17
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->G:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    if-ge v2, v4, :cond_1f

    const/4 v4, 0x0

    invoke-static {v3, v2}, Lorg/objectweb/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v5

    invoke-static {v1, v0, v4, v5}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v4

    invoke-static {v3, v2, v4}, Lorg/objectweb/asm/MethodWriter;->writeShort([BII)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_17

    :cond_1f
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->K:Lorg/objectweb/asm/Attribute;

    move-object v3, v2

    :goto_18
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lorg/objectweb/asm/Attribute;->getLabels()[Lorg/objectweb/asm/Label;

    move-result-object v4

    if-eqz v4, :cond_20

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    :goto_19
    if-ltz v2, :cond_20

    aget-object v5, v4, v2

    invoke-static {v1, v0, v5}, Lorg/objectweb/asm/MethodWriter;->getNewOffset([I[ILorg/objectweb/asm/Label;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_20
    iget-object v2, v3, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    move-object v3, v2

    goto :goto_18

    :cond_21
    iput-object v6, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    :cond_22
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_2f

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->x:Lorg/objectweb/asm/Handler;

    move-object v2, v0

    :goto_1a
    if-eqz v2, :cond_25

    iget-object v0, v2, Lorg/objectweb/asm/Handler;->start:Lorg/objectweb/asm/Label;

    invoke-virtual {v0}, Lorg/objectweb/asm/Label;->getFirst()Lorg/objectweb/asm/Label;

    move-result-object v1

    iget-object v0, v2, Lorg/objectweb/asm/Handler;->handler:Lorg/objectweb/asm/Label;

    invoke-virtual {v0}, Lorg/objectweb/asm/Label;->getFirst()Lorg/objectweb/asm/Label;

    move-result-object v3

    iget-object v0, v2, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    invoke-virtual {v0}, Lorg/objectweb/asm/Label;->getFirst()Lorg/objectweb/asm/Label;

    move-result-object v4

    iget-object v0, v2, Lorg/objectweb/asm/Handler;->desc:Ljava/lang/String;

    if-nez v0, :cond_23

    const-string/jumbo v0, "java/lang/Throwable"

    :goto_1b
    const/high16 v5, 0x1700000

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v5, v0

    iget v0, v3, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v3, Lorg/objectweb/asm/Label;->status:I

    move-object v0, v1

    :goto_1c
    if-eq v0, v4, :cond_24

    new-instance v1, Lorg/objectweb/asm/Edge;

    invoke-direct {v1}, Lorg/objectweb/asm/Edge;-><init>()V

    iput v5, v1, Lorg/objectweb/asm/Edge;->info:I

    iput-object v3, v1, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iget-object v6, v0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iput-object v6, v1, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iput-object v1, v0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    goto :goto_1c

    :cond_23
    iget-object v0, v2, Lorg/objectweb/asm/Handler;->desc:Ljava/lang/String;

    goto :goto_1b

    :cond_24
    iget-object v0, v2, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    move-object v2, v0

    goto :goto_1a

    :cond_25
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->a:I

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/objectweb/asm/Frame;->initInputFrame(Lorg/objectweb/asm/ClassWriter;I[Lorg/objectweb/asm/Type;I)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodWriter;->a(Lorg/objectweb/asm/Frame;)V

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    move-object v3, v1

    move v1, v2

    :goto_1d
    if-eqz v3, :cond_28

    iget-object v4, v3, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    const/4 v0, 0x0

    iput-object v0, v3, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    iget-object v5, v3, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget v0, v3, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_26

    iget v0, v3, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v3, Lorg/objectweb/asm/Label;->status:I

    :cond_26
    iget v0, v3, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v3, Lorg/objectweb/asm/Label;->status:I

    iget-object v0, v5, Lorg/objectweb/asm/Frame;->inputStack:[I

    array-length v0, v0

    iget v2, v3, Lorg/objectweb/asm/Label;->outputStackMax:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_3f

    move v2, v0

    :goto_1e
    iget-object v0, v3, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    move-object v1, v4

    move-object v3, v0

    :goto_1f
    if-eqz v3, :cond_27

    iget-object v0, v3, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    invoke-virtual {v0}, Lorg/objectweb/asm/Label;->getFirst()Lorg/objectweb/asm/Label;

    move-result-object v0

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    iget-object v6, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget v7, v3, Lorg/objectweb/asm/Edge;->info:I

    invoke-virtual {v5, v4, v6, v7}, Lorg/objectweb/asm/Frame;->merge(Lorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Frame;I)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, v0, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    if-nez v4, :cond_40

    iput-object v1, v0, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    :goto_20
    iget-object v1, v3, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    move-object v3, v1

    move-object v1, v0

    goto :goto_1f

    :cond_27
    move-object v3, v1

    move v1, v2

    goto :goto_1d

    :cond_28
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    move-object v2, v0

    move v0, v1

    :goto_21
    if-eqz v2, :cond_2d

    iget-object v1, v2, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget v3, v2, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_29

    invoke-direct {p0, v1}, Lorg/objectweb/asm/MethodWriter;->a(Lorg/objectweb/asm/Frame;)V

    :cond_29
    iget v1, v2, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_2c

    iget-object v4, v2, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    iget v3, v2, Lorg/objectweb/asm/Label;->position:I

    if-nez v4, :cond_2a

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    :goto_22
    add-int/lit8 v5, v1, -0x1

    if-lt v5, v3, :cond_2c

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v3

    :goto_23
    if-ge v1, v5, :cond_2b

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v6, v6, Lorg/objectweb/asm/ByteVector;->data:[B

    const/4 v7, 0x0

    aput-byte v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2a
    iget v1, v4, Lorg/objectweb/asm/Label;->position:I

    goto :goto_22

    :cond_2b
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    const/16 v6, -0x41

    aput-byte v6, v1, v5

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v3, v1, v5}, Lorg/objectweb/asm/MethodWriter;->a(III)I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->v:[I

    const/4 v3, 0x3

    const/high16 v5, 0x1700000

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const-string/jumbo v7, "java/lang/Throwable"

    invoke-virtual {v6, v7}, Lorg/objectweb/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    aput v5, v1, v3

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->b()V

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->x:Lorg/objectweb/asm/Handler;

    invoke-static {v1, v2, v4}, Lorg/objectweb/asm/Handler;->remove(Lorg/objectweb/asm/Handler;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Handler;

    move-result-object v1

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->x:Lorg/objectweb/asm/Handler;

    :cond_2c
    iget-object v1, v2, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    move-object v2, v1

    goto :goto_21

    :cond_2d
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->x:Lorg/objectweb/asm/Handler;

    const/4 v2, 0x0

    iput v2, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    :goto_24
    if-eqz v1, :cond_2e

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    iget-object v1, v1, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    goto :goto_24

    :cond_2e
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    :goto_25
    return-void

    :cond_2f
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->x:Lorg/objectweb/asm/Handler;

    move-object v1, v0

    :goto_26
    if-eqz v1, :cond_32

    iget-object v0, v1, Lorg/objectweb/asm/Handler;->start:Lorg/objectweb/asm/Label;

    iget-object v2, v1, Lorg/objectweb/asm/Handler;->handler:Lorg/objectweb/asm/Label;

    iget-object v3, v1, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    :goto_27
    if-eq v0, v3, :cond_31

    new-instance v4, Lorg/objectweb/asm/Edge;

    invoke-direct {v4}, Lorg/objectweb/asm/Edge;-><init>()V

    const v5, 0x7fffffff

    iput v5, v4, Lorg/objectweb/asm/Edge;->info:I

    iput-object v2, v4, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iget v5, v0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_30

    iget-object v5, v0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iput-object v5, v4, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iput-object v4, v0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    :goto_28
    iget-object v0, v0, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    goto :goto_27

    :cond_30
    iget-object v5, v0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iget-object v5, v5, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iget-object v5, v5, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iput-object v5, v4, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iget-object v5, v0, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iget-object v5, v5, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iput-object v4, v5, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    goto :goto_28

    :cond_31
    iget-object v0, v1, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    move-object v1, v0

    goto :goto_26

    :cond_32
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    if-lez v0, :cond_37

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/objectweb/asm/Label;->visitSubroutine(Lorg/objectweb/asm/Label;JI)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    :goto_29
    if-eqz v1, :cond_34

    iget v2, v1, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_33

    iget-object v2, v1, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iget-object v2, v2, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iget-object v2, v2, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iget v3, v2, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_33

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    int-to-long v4, v0

    const-wide/16 v6, 0x20

    div-long/2addr v4, v6

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x1

    rem-int/lit8 v8, v0, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    iget v6, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/objectweb/asm/Label;->visitSubroutine(Lorg/objectweb/asm/Label;JI)V

    :cond_33
    iget-object v1, v1, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    goto :goto_29

    :cond_34
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    move-object v1, v0

    :goto_2a
    if-eqz v1, :cond_37

    iget v0, v1, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_36

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    :goto_2b
    if-eqz v0, :cond_35

    iget v2, v0, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v0, Lorg/objectweb/asm/Label;->status:I

    iget-object v0, v0, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    goto :goto_2b

    :cond_35
    iget-object v0, v1, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iget-object v0, v0, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    iget-object v0, v0, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    const-wide/16 v2, 0x0

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->M:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/Label;->visitSubroutine(Lorg/objectweb/asm/Label;JI)V

    :cond_36
    iget-object v0, v1, Lorg/objectweb/asm/Label;->successor:Lorg/objectweb/asm/Label;

    move-object v1, v0

    goto :goto_2a

    :cond_37
    const/4 v1, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->O:Lorg/objectweb/asm/Label;

    move-object v2, v3

    :goto_2c
    if-eqz v2, :cond_3a

    iget-object v3, v2, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    iget v5, v2, Lorg/objectweb/asm/Label;->inputStackTop:I

    iget v0, v2, Lorg/objectweb/asm/Label;->outputStackMax:I

    add-int/2addr v0, v5

    if-le v0, v1, :cond_3e

    :goto_2d
    iget-object v1, v2, Lorg/objectweb/asm/Label;->successors:Lorg/objectweb/asm/Edge;

    iget v2, v2, Lorg/objectweb/asm/Label;->status:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3d

    iget-object v1, v1, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    move-object v4, v1

    :goto_2e
    if-eqz v4, :cond_39

    iget-object v2, v4, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    iget v1, v2, Lorg/objectweb/asm/Label;->status:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3c

    iget v1, v4, Lorg/objectweb/asm/Edge;->info:I

    const v6, 0x7fffffff

    if-ne v1, v6, :cond_38

    const/4 v1, 0x1

    :goto_2f
    iput v1, v2, Lorg/objectweb/asm/Label;->inputStackTop:I

    iget v1, v2, Lorg/objectweb/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v2, Lorg/objectweb/asm/Label;->status:I

    iput-object v3, v2, Lorg/objectweb/asm/Label;->next:Lorg/objectweb/asm/Label;

    move-object v1, v2

    :goto_30
    iget-object v2, v4, Lorg/objectweb/asm/Edge;->next:Lorg/objectweb/asm/Edge;

    move-object v4, v2

    move-object v3, v1

    goto :goto_2e

    :cond_38
    iget v1, v4, Lorg/objectweb/asm/Edge;->info:I

    add-int/2addr v1, v5

    goto :goto_2f

    :cond_39
    move-object v2, v3

    move v1, v0

    goto :goto_2c

    :cond_3a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    goto/16 :goto_25

    :cond_3b
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->o:I

    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    goto/16 :goto_25

    :cond_3c
    move-object v1, v3

    goto :goto_30

    :cond_3d
    move-object v4, v1

    goto :goto_2e

    :cond_3e
    move v0, v1

    goto :goto_2d

    :cond_3f
    move v2, v1

    goto/16 :goto_1e

    :cond_40
    move-object v0, v1

    goto/16 :goto_20

    :cond_41
    move v2, v3

    goto/16 :goto_9

    :cond_42
    move-object v12, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_0

    :cond_43
    move-object v0, v4

    move-object v1, v5

    goto/16 :goto_1

    :cond_44
    move v4, v6

    goto/16 :goto_6

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
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_b
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_c
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/16 v5, 0xb9

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/objectweb/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Item;

    move-result-object v2

    iget v0, v2, Lorg/objectweb/asm/Item;->intVal:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1, v4, v3, v2}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    :goto_0
    if-ne p1, v5, :cond_5

    if-nez v0, :cond_1

    invoke-static {p4}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lorg/objectweb/asm/Item;->intVal:I

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/Item;->index:I

    invoke-virtual {v1, v5, v2}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0, v4}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    :goto_1
    return-void

    :cond_2
    if-nez v0, :cond_6

    invoke-static {p4}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lorg/objectweb/asm/Item;->intVal:I

    :goto_2
    const/16 v0, 0xb8

    if-ne p1, v0, :cond_4

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    shr-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v3

    and-int/lit8 v3, v1, 0x3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    :goto_3
    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-le v0, v3, :cond_3

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    :cond_3
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    move v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    shr-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v3

    and-int/lit8 v3, v1, 0x3

    add-int/2addr v0, v3

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v2, Lorg/objectweb/asm/Item;->index:I

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 4

    const/16 v3, 0xc5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, v3, p2, v2, v0}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    invoke-virtual {v1, v3, v0}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_1
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    rsub-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    goto :goto_0
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->z:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->A:Lorg/objectweb/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const-string/jumbo v0, "Ljava/lang/Synthetic;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->l:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->l:I

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p3, :cond_2

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v1, v1, p1

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->j:[Lorg/objectweb/asm/AnnotationWriter;

    aput-object v0, v1, p1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->d:Ljava/lang/String;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    :cond_3
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    aget-object v1, v1, p1

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->k:[Lorg/objectweb/asm/AnnotationWriter;

    aput-object v0, v1, p1

    goto :goto_0
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0xaa

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p3, p0, v2, v1, v5}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, p1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    aget-object v2, p4, v0

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, p0, v3, v1, v5}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/MethodWriter;Lorg/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/objectweb/asm/MethodWriter;->a(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->putTarget(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->I:Lorg/objectweb/asm/AnnotationWriter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->J:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    new-instance v1, Lorg/objectweb/asm/Handler;

    invoke-direct {v1}, Lorg/objectweb/asm/Handler;-><init>()V

    iput-object p1, v1, Lorg/objectweb/asm/Handler;->start:Lorg/objectweb/asm/Label;

    iput-object p2, v1, Lorg/objectweb/asm/Handler;->end:Lorg/objectweb/asm/Label;

    iput-object p3, v1, Lorg/objectweb/asm/Handler;->handler:Lorg/objectweb/asm/Label;

    iput-object p4, v1, Lorg/objectweb/asm/Handler;->desc:Ljava/lang/String;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p4}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, v1, Lorg/objectweb/asm/Handler;->type:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->y:Lorg/objectweb/asm/Handler;

    if-nez v0, :cond_1

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->x:Lorg/objectweb/asm/Handler;

    :goto_1
    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->y:Lorg/objectweb/asm/Handler;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->y:Lorg/objectweb/asm/Handler;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->next:Lorg/objectweb/asm/Handler;

    goto :goto_1
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->putTarget(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->h:Lorg/objectweb/asm/AnnotationWriter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->i:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    invoke-virtual {v1, p1, v0}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    return-void

    :cond_1
    const/16 v1, 0xbb

    if-ne p1, v1, :cond_0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-le v1, v2, :cond_2

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    :cond_2
    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    goto :goto_0
.end method

.method public visitVarInsn(II)V
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0xa9

    const/16 v2, 0x36

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->H:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/ClassWriter;Lorg/objectweb/asm/Item;)V

    :cond_0
    :goto_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x39

    if-ne p1, v0, :cond_7

    :cond_1
    add-int/lit8 v0, p2, 0x2

    :goto_1
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->p:I

    :cond_2
    const/4 v0, 0x4

    if-ge p2, v0, :cond_9

    if-eq p1, v3, :cond_9

    if-ge p1, v2, :cond_8

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    :goto_2
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_3
    if-lt p1, v2, :cond_3

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->N:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->w:I

    if-lez v0, :cond_3

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_3
    return-void

    :cond_4
    if-ne p1, v3, :cond_5

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->status:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/objectweb/asm/Label;->status:I

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->Q:Lorg/objectweb/asm/Label;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    iput v1, v0, Lorg/objectweb/asm/Label;->inputStackTop:I

    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->a()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    sget-object v1, Lorg/objectweb/asm/Frame;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    if-le v0, v1, :cond_6

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->S:I

    :cond_6
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->R:I

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    goto :goto_2

    :cond_9
    const/16 v0, 0x100

    if-lt p2, v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->n:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_3
.end method
