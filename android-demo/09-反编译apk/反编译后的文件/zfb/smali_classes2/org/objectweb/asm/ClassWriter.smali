.class public Lorg/objectweb/asm/ClassWriter;
.super Lorg/objectweb/asm/ClassVisitor;


# static fields
.field static final ACC_SYNTHETIC_ATTRIBUTE:I = 0x40000

.field static final BSM:I = 0x21

.field static final CLASS:I = 0x7

.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final HANDLE:I = 0xf

.field static final HANDLE_BASE:I = 0x14

.field static final IINC_INSN:I = 0xd

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INDY:I = 0x12

.field static final INDYMETH_INSN:I = 0x8

.field static final INT:I = 0x3

.field static final ITFMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0xa

.field static final LABEL_INSN:I = 0x9

.field static final LDCW_INSN:I = 0xc

.field static final LDC_INSN:I = 0xb

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xf

.field static final MANA_INSN:I = 0x10

.field static final METH:I = 0xa

.field static final MTYPE:I = 0x10

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xe

.field static final TO_ACC_SYNTHETIC:I = 0x40

.field static final TYPE:[B

.field static final TYPE_INSN:I = 0x5

.field static final TYPE_MERGED:I = 0x20

.field static final TYPE_NORMAL:I = 0x1e

.field static final TYPE_UNINIT:I = 0x1f

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x11


# instance fields
.field private a:S

.field private b:I

.field bootstrapMethods:Lorg/objectweb/asm/ByteVector;

.field bootstrapMethodsCount:I

.field private c:I

.field cr:Lorg/objectweb/asm/ClassReader;

.field private d:I

.field private e:I

.field private f:I

.field firstField:Lorg/objectweb/asm/FieldWriter;

.field firstMethod:Lorg/objectweb/asm/MethodWriter;

.field private g:[I

.field private h:I

.field private i:Lorg/objectweb/asm/ByteVector;

.field index:I

.field invalidFrames:Z

.field items:[Lorg/objectweb/asm/Item;

.field private j:I

.field private k:I

.field final key:Lorg/objectweb/asm/Item;

.field final key2:Lorg/objectweb/asm/Item;

.field final key3:Lorg/objectweb/asm/Item;

.field final key4:Lorg/objectweb/asm/Item;

.field private l:Lorg/objectweb/asm/AnnotationWriter;

.field lastField:Lorg/objectweb/asm/FieldWriter;

.field lastMethod:Lorg/objectweb/asm/MethodWriter;

.field private m:Lorg/objectweb/asm/AnnotationWriter;

.field private n:Lorg/objectweb/asm/AnnotationWriter;

.field private o:Lorg/objectweb/asm/AnnotationWriter;

.field private p:Lorg/objectweb/asm/Attribute;

.field final pool:Lorg/objectweb/asm/ByteVector;

.field private q:I

.field private r:Lorg/objectweb/asm/ByteVector;

.field private s:Z

.field private t:Z

.field thisName:Ljava/lang/String;

.field threshold:I

.field typeTable:[Lorg/objectweb/asm/Item;

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xdc

    new-array v1, v4, [B

    const-string/jumbo v2, "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ"

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lorg/objectweb/asm/ClassWriter;->TYPE:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/objectweb/asm/Item;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    array-length v0, v0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->threshold:I

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0}, Lorg/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0}, Lorg/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0}, Lorg/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    new-instance v0, Lorg/objectweb/asm/Item;

    invoke-direct {v0}, Lorg/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key4:Lorg/objectweb/asm/Item;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/objectweb/asm/ClassWriter;->s:Z

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/objectweb/asm/ClassWriter;->t:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassReader;I)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/objectweb/asm/ClassWriter;-><init>(I)V

    invoke-virtual {p1, p0}, Lorg/objectweb/asm/ClassReader;->copyPool(Lorg/objectweb/asm/ClassWriter;)V

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->cr:Lorg/objectweb/asm/ClassReader;

    return-void
.end method

.method private a()Lorg/objectweb/asm/Item;
    .locals 5

    const/4 v4, 0x0

    iget-short v0, p0, Lorg/objectweb/asm/ClassWriter;->a:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/objectweb/asm/ClassWriter;->a:S

    new-instance v0, Lorg/objectweb/asm/Item;

    iget-short v1, p0, Lorg/objectweb/asm/ClassWriter;->a:S

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    if-nez v1, :cond_0

    const/16 v1, 0x10

    new-array v1, v1, [Lorg/objectweb/asm/Item;

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    :cond_0
    iget-short v1, p0, Lorg/objectweb/asm/ClassWriter;->a:S

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    iget-object v3, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    iget-short v2, p0, Lorg/objectweb/asm/ClassWriter;->a:S

    aput-object v0, v1, v2

    return-object v0
.end method

.method private a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    iget v1, p1, Lorg/objectweb/asm/Item;->hashCode:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/objectweb/asm/Item;->type:I

    iget v2, p1, Lorg/objectweb/asm/Item;->type:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Item;->isEqualTo(Lorg/objectweb/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, v0, Lorg/objectweb/asm/Item;->next:Lorg/objectweb/asm/Item;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method private a(III)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method private b(Lorg/objectweb/asm/Item;)V
    .locals 7

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-short v1, p0, Lorg/objectweb/asm/ClassWriter;->a:S

    add-int/2addr v0, v1

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->threshold:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    new-array v4, v3, [Lorg/objectweb/asm/Item;

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    aget-object v0, v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/objectweb/asm/Item;->hashCode:I

    rem-int v5, v1, v3

    iget-object v1, v0, Lorg/objectweb/asm/Item;->next:Lorg/objectweb/asm/Item;

    aget-object v6, v4, v5

    iput-object v6, v0, Lorg/objectweb/asm/Item;->next:Lorg/objectweb/asm/Item;

    aput-object v0, v4, v5

    move-object v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    int-to-double v0, v3

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->threshold:I

    :cond_2
    iget v0, p1, Lorg/objectweb/asm/Item;->hashCode:I

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    aget-object v1, v1, v0

    iput-object v1, p1, Lorg/objectweb/asm/Item;->next:Lorg/objectweb/asm/Item;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    aput-object p1, v1, v0

    return-void
.end method


# virtual methods
.method addType(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0}, Lorg/objectweb/asm/ClassWriter;->a()Lorg/objectweb/asm/Item;

    move-result-object v0

    :cond_0
    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method addUninitializedType(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    const/16 v1, 0x1f

    iput v1, v0, Lorg/objectweb/asm/Item;->type:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    iput p2, v0, Lorg/objectweb/asm/Item;->intVal:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    iput-object p1, v0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    const v1, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, p2

    and-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Item;->hashCode:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0}, Lorg/objectweb/asm/ClassWriter;->a()Lorg/objectweb/asm/Item;

    move-result-object v0

    :cond_0
    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/16 v0, 0x2f

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo p1, "java/lang/Object"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method getMergedType(II)I
    .locals 6

    const/16 v5, 0x20

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    iput v5, v0, Lorg/objectweb/asm/Item;->type:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    int-to-long v1, p1

    int-to-long v3, p2

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/objectweb/asm/Item;->longVal:J

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    const v1, 0x7fffffff

    add-int/lit8 v2, p1, 0x20

    add-int/2addr v2, p2

    and-int/2addr v1, v2

    iput v1, v0, Lorg/objectweb/asm/Item;->hashCode:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->typeTable:[Lorg/objectweb/asm/Item;

    aget-object v1, v1, p2

    iget-object v1, v1, Lorg/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lorg/objectweb/asm/Item;->intVal:I

    new-instance v0, Lorg/objectweb/asm/Item;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    iget v0, v0, Lorg/objectweb/asm/Item;->intVal:I

    return v0
.end method

.method public newClass(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method newClassItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x7

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method newConstItem(Ljava/lang/Object;)Lorg/objectweb/asm/Item;
    .locals 4

    const/4 v1, 0x0

    const/16 v2, 0x8

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newInteger(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newInteger(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newInteger(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newInteger(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newInteger(I)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newFloat(F)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassWriter;->newLong(J)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_8
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassWriter;->newDouble(D)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto :goto_0

    :cond_9
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xb

    if-ne v0, v1, :cond_c

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newMethodTypeItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/objectweb/asm/Handle;

    iget v0, p1, Lorg/objectweb/asm/Handle;->tag:I

    iget-object v1, p1, Lorg/objectweb/asm/Handle;->owner:Ljava/lang/String;

    iget-object v2, p1, Lorg/objectweb/asm/Handle;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/objectweb/asm/Handle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/objectweb/asm/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newDouble(D)Lorg/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/Item;->set(D)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    iget-wide v1, v1, Lorg/objectweb/asm/Item;->longVal:J

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->putLong(J)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, p2, p3}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lorg/objectweb/asm/ClassWriter;->a(III)V

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method newFloat(F)Lorg/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/Item;->set(F)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    iget v1, v1, Lorg/objectweb/asm/Item;->intVal:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key4:Lorg/objectweb/asm/Item;

    add-int/lit8 v1, p1, 0x14

    invoke-virtual {v0, v1, p2, p3, p4}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key4:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/ClassWriter;->a(II)V

    :goto_0
    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key4:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, p2, p3, p4, v0}, Lorg/objectweb/asm/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/ClassWriter;->a(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method newInteger(I)Lorg/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/Item;->set(I)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method varargs newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Item;
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    :cond_0
    iget v4, v0, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p3}, Lorg/objectweb/asm/Handle;->hashCode()I

    move-result v1

    iget v2, p3, Lorg/objectweb/asm/Handle;->tag:I

    iget-object v5, p3, Lorg/objectweb/asm/Handle;->owner:Ljava/lang/String;

    iget-object v6, p3, Lorg/objectweb/asm/Handle;->name:Ljava/lang/String;

    iget-object v7, p3, Lorg/objectweb/asm/Handle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v2, v5, v6, v7}, Lorg/objectweb/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    array-length v5, p4

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v2, v1

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, p4, v1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    xor-int/2addr v2, v7

    invoke-virtual {p0, v6}, Lorg/objectweb/asm/ClassWriter;->newConst(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v1, v5, 0x2

    shl-int/lit8 v5, v1, 0x1

    const v1, 0x7fffffff

    and-int v7, v2, v1

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->items:[Lorg/objectweb/asm/Item;

    array-length v2, v2

    rem-int v2, v7, v2

    aget-object v1, v1, v2

    :goto_1
    if-eqz v1, :cond_5

    iget v2, v1, Lorg/objectweb/asm/Item;->type:I

    const/16 v8, 0x21

    if-ne v2, v8, :cond_2

    iget v2, v1, Lorg/objectweb/asm/Item;->hashCode:I

    if-eq v2, v7, :cond_3

    :cond_2
    iget-object v1, v1, Lorg/objectweb/asm/Item;->next:Lorg/objectweb/asm/Item;

    goto :goto_1

    :cond_3
    iget v8, v1, Lorg/objectweb/asm/Item;->intVal:I

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_5

    add-int v9, v4, v2

    aget-byte v9, v6, v9

    add-int v10, v8, v2

    aget-byte v10, v6, v10

    if-eq v9, v10, :cond_4

    iget-object v1, v1, Lorg/objectweb/asm/Item;->next:Lorg/objectweb/asm/Item;

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    iget v1, v1, Lorg/objectweb/asm/Item;->index:I

    iput v4, v0, Lorg/objectweb/asm/ByteVector;->length:I

    move v0, v1

    :goto_3
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-virtual {v1, p1, p2, v0}, Lorg/objectweb/asm/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v1

    if-nez v1, :cond_7

    const/16 v1, 0x12

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lorg/objectweb/asm/ClassWriter;->a(III)V

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :goto_4
    return-object v0

    :cond_6
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethodsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethodsCount:I

    new-instance v1, Lorg/objectweb/asm/Item;

    invoke-direct {v1, v0}, Lorg/objectweb/asm/Item;-><init>(I)V

    invoke-virtual {v1, v4, v7}, Lorg/objectweb/asm/Item;->set(II)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method

.method newLong(J)Lorg/objectweb/asm/Item;
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/Item;->set(J)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->putLong(J)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Item;
    .locals 3

    if-eqz p4, :cond_0

    const/16 v0, 0xb

    :goto_0
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v1}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/ClassWriter;->a(III)V

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key3:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :goto_1
    return-object v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newMethodTypeItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method newMethodTypeItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x10

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Item;
    .locals 3

    const/16 v2, 0xc

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, v0, v1}, Lorg/objectweb/asm/ClassWriter;->a(III)V

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key2:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    return-object v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-virtual {v0, v1, p1, v2, v2}, Lorg/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->a(Lorg/objectweb/asm/Item;)Lorg/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/Item;

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/objectweb/asm/ClassWriter;->key:Lorg/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/Item;-><init>(ILorg/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassWriter;->b(Lorg/objectweb/asm/Item;)V

    :cond_0
    iget v0, v0, Lorg/objectweb/asm/Item;->index:I

    return v0
.end method

.method public toByteArray()[B
    .locals 12

    const/high16 v11, 0x40000

    const v10, 0xffff

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    if-le v0, v10, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Class file too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x18

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    move v9, v3

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v0}, Lorg/objectweb/asm/FieldWriter;->getSize()I

    move-result v6

    add-int/2addr v1, v6

    iget-object v0, v0, Lorg/objectweb/asm/FieldWriter;->fv:Lorg/objectweb/asm/FieldVisitor;

    check-cast v0, Lorg/objectweb/asm/FieldWriter;

    move v9, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    move v8, v3

    :goto_1
    if-eqz v0, :cond_2

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodWriter;->getSize()I

    move-result v6

    add-int/2addr v1, v6

    iget-object v0, v0, Lorg/objectweb/asm/MethodWriter;->mv:Lorg/objectweb/asm/MethodVisitor;

    check-cast v0, Lorg/objectweb/asm/MethodWriter;

    move v8, v5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string/jumbo v5, "BootstrapMethods"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :goto_2
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->d:I

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    const-string/jumbo v5, "Signature"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_3
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->h:I

    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x8

    const-string/jumbo v5, "SourceFile"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/ByteVector;

    if-eqz v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v1, v5

    const-string/jumbo v5, "SourceDebugExtension"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_5
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->j:I

    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0xa

    const-string/jumbo v5, "EnclosingMethod"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_6
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x6

    const-string/jumbo v5, "Deprecated"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_7
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_9

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v5, v10

    const/16 v6, 0x31

    if-lt v5, v6, :cond_8

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v5, v11

    if-eqz v5, :cond_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x6

    const-string/jumbo v5, "Synthetic"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_9
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    if-eqz v5, :cond_a

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string/jumbo v5, "InnerClasses"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_a
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v5, :cond_b

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string/jumbo v5, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_b
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v5, :cond_c

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string/jumbo v5, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_c
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v5, :cond_d

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string/jumbo v5, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_d
    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->o:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v5, :cond_e

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->o:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v5}, Lorg/objectweb/asm/AnnotationWriter;->getSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const-string/jumbo v5, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p0, v5}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    :cond_e
    move v6, v1

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->p:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->p:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v1}, Lorg/objectweb/asm/Attribute;->getCount()I

    move-result v1

    add-int v7, v0, v1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->p:Lorg/objectweb/asm/Attribute;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/Attribute;->getSize(Lorg/objectweb/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v6, v0

    move v1, v7

    :goto_3
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v6

    new-instance v6, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v6, v0}, Lorg/objectweb/asm/ByteVector;-><init>(I)V

    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->version:I

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->index:I

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    iget-object v5, v5, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v7, p0, Lorg/objectweb/asm/ClassWriter;->pool:Lorg/objectweb/asm/ByteVector;

    iget v7, v7, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v5, v3, v7}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    const/high16 v0, 0x60000

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x40

    or-int/2addr v0, v5

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v5

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->e:I

    invoke-virtual {v0, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v0, v3

    :goto_4
    iget v5, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    if-ge v0, v5, :cond_f

    iget-object v5, p0, Lorg/objectweb/asm/ClassWriter;->g:[I

    aget v5, v5, v0

    invoke-virtual {v6, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v6, v9}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    :goto_5
    if-eqz v0, :cond_10

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/FieldWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, v0, Lorg/objectweb/asm/FieldWriter;->fv:Lorg/objectweb/asm/FieldVisitor;

    check-cast v0, Lorg/objectweb/asm/FieldWriter;

    goto :goto_5

    :cond_10
    invoke-virtual {v6, v8}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    :goto_6
    if-eqz v0, :cond_11

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/MethodWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    iget-object v0, v0, Lorg/objectweb/asm/MethodWriter;->mv:Lorg/objectweb/asm/MethodVisitor;

    check-cast v0, Lorg/objectweb/asm/MethodWriter;

    goto :goto_6

    :cond_11
    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_12

    const-string/jumbo v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethodsCount:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v6, v0, v3, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_12
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->d:I

    if-eqz v0, :cond_13

    const-string/jumbo v0, "Signature"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->d:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_13
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->h:I

    if-eqz v0, :cond_14

    const-string/jumbo v0, "SourceFile"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->h:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_14
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    const-string/jumbo v1, "SourceDebugExtension"

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    invoke-virtual {v6, v1, v3, v0}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_15
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->j:I

    if-eqz v0, :cond_16

    const-string/jumbo v0, "EnclosingMethod"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->j:I

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :cond_16
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    const-string/jumbo v0, "Deprecated"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_17
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_19

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->version:I

    and-int/2addr v0, v10

    const/16 v1, 0x31

    if-lt v0, v1, :cond_18

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    and-int/2addr v0, v11

    if-eqz v0, :cond_19

    :cond_18
    const-string/jumbo v0, "Synthetic"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    :cond_19
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget-object v0, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v6, v0, v3, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    :cond_1a
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_1c
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_1d
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->o:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->o:Lorg/objectweb/asm/AnnotationWriter;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/AnnotationWriter;->put(Lorg/objectweb/asm/ByteVector;)V

    :cond_1e
    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->p:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->p:Lorg/objectweb/asm/Attribute;

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/Attribute;->put(Lorg/objectweb/asm/ClassWriter;[BIIILorg/objectweb/asm/ByteVector;)V

    :cond_1f
    iget-boolean v0, p0, Lorg/objectweb/asm/ClassWriter;->invalidFrames:Z

    if-eqz v0, :cond_20

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->p:Lorg/objectweb/asm/Attribute;

    iput v3, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iput v3, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethodsCount:I

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->bootstrapMethods:Lorg/objectweb/asm/ByteVector;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->firstField:Lorg/objectweb/asm/FieldWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->lastField:Lorg/objectweb/asm/FieldWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->firstMethod:Lorg/objectweb/asm/MethodWriter;

    iput-object v2, p0, Lorg/objectweb/asm/ClassWriter;->lastMethod:Lorg/objectweb/asm/MethodWriter;

    iput-boolean v3, p0, Lorg/objectweb/asm/ClassWriter;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/ClassWriter;->t:Z

    iput-boolean v3, p0, Lorg/objectweb/asm/ClassWriter;->invalidFrames:Z

    new-instance v0, Lorg/objectweb/asm/ClassReader;

    iget-object v1, v6, Lorg/objectweb/asm/ByteVector;->data:[B

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    invoke-virtual {p0}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    :goto_7
    return-object v0

    :cond_20
    iget-object v0, v6, Lorg/objectweb/asm/ByteVector;->data:[B

    goto :goto_7

    :cond_21
    move v1, v0

    goto/16 :goto_3

    :cond_22
    move v0, v3

    goto/16 :goto_2
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iput p1, p0, Lorg/objectweb/asm/ClassWriter;->version:I

    iput p2, p0, Lorg/objectweb/asm/ClassWriter;->b:I

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->c:I

    iput-object p3, p0, Lorg/objectweb/asm/ClassWriter;->thisName:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->d:I

    :cond_0
    if-nez p5, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->e:I

    if-eqz p6, :cond_2

    array-length v0, p6

    if-lez v0, :cond_2

    array-length v0, p6

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:[I

    :goto_1
    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->f:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->g:[I

    aget-object v2, p6, v1

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p5}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->l:Lorg/objectweb/asm/AnnotationWriter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->m:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public final visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->p:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->next:Lorg/objectweb/asm/Attribute;

    iput-object p1, p0, Lorg/objectweb/asm/ClassWriter;->p:Lorg/objectweb/asm/Attribute;

    return-void
.end method

.method public final visitEnd()V
    .locals 0

    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .locals 7

    new-instance v0, Lorg/objectweb/asm/FieldWriter;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/FieldWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/objectweb/asm/Item;

    move-result-object v2

    iget v0, v2, Lorg/objectweb/asm/Item;->intVal:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    iget v3, v2, Lorg/objectweb/asm/Item;->index:I

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v3, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    if-nez p3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget-object v0, p0, Lorg/objectweb/asm/ClassWriter;->r:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    iget v0, p0, Lorg/objectweb/asm/ClassWriter;->q:I

    iput v0, v2, Lorg/objectweb/asm/Item;->intVal:I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 9

    new-instance v0, Lorg/objectweb/asm/MethodWriter;

    iget-boolean v7, p0, Lorg/objectweb/asm/ClassWriter;->s:Z

    iget-boolean v8, p0, Lorg/objectweb/asm/ClassWriter;->t:Z

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lorg/objectweb/asm/MethodWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->j:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->k:I

    :cond_0
    return-void
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/ClassWriter;->h:I

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, p2, v1, v2}, Lorg/objectweb/asm/ByteVector;->encodeUTF8(Ljava/lang/String;II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->i:Lorg/objectweb/asm/ByteVector;

    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 6

    new-instance v3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    invoke-static {p1, p2, v3}, Lorg/objectweb/asm/AnnotationWriter;->putTarget(ILorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    const/4 v2, 0x1

    iget v1, v3, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v1, -0x2

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/ClassWriter;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/ByteVector;I)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->n:Lorg/objectweb/asm/AnnotationWriter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/ClassWriter;->o:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/objectweb/asm/AnnotationWriter;->next:Lorg/objectweb/asm/AnnotationWriter;

    iput-object v0, p0, Lorg/objectweb/asm/ClassWriter;->o:Lorg/objectweb/asm/AnnotationWriter;

    goto :goto_0
.end method
