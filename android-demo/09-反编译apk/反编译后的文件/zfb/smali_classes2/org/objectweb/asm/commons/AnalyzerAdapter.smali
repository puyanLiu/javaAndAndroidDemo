.class public Lorg/objectweb/asm/commons/AnalyzerAdapter;
.super Lorg/objectweb/asm/MethodVisitor;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/objectweb/asm/Label;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field public locals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uninitializedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .locals 4

    invoke-direct {p0, p1, p6}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    iput-object p2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    const-string/jumbo v0, "<init>"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v1, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-static {p5}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_4
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .locals 7

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/commons/AnalyzerAdapter;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/objectweb/asm/commons/AnalyzerAdapter;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->c:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->c:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private a(IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_0

    iput-object v5, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    :pswitch_1
    iput-object v5, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_b
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_d
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "java/lang/Object"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(ILjava/lang/Object;)V

    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    :cond_3
    add-int/lit8 v0, p2, -0x1

    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(ILjava/lang/Object;)V

    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v0, v1, :cond_4

    sget-object v1, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    :cond_4
    add-int/lit8 v0, p2, -0x1

    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, v4}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    goto/16 :goto_1

    :pswitch_12
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    goto/16 :goto_1

    :pswitch_13
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    goto/16 :goto_1

    :pswitch_14
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_18
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_19
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1a
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1c
    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1e
    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1f
    invoke-direct {p0, v4}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_20
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_21
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_22
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_23
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_24
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_25
    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "JSR/RET are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_28
    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_29
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2a
    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_2b
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2c
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    packed-switch p2, :pswitch_data_1

    const-string/jumbo v0, "[J"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2d
    const-string/jumbo v0, "[Z"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2e
    const-string/jumbo v0, "[C"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2f
    const-string/jumbo v0, "[B"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_30
    const-string/jumbo v0, "[S"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_31
    const-string/jumbo v0, "[I"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_32
    const-string/jumbo v0, "[F"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_33
    const-string/jumbo v0, "[D"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_34
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_35
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    invoke-static {p3}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1b
        :pswitch_1f
        :pswitch_1b
        :pswitch_1f
        :pswitch_1b
        :pswitch_1f
        :pswitch_1b
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_1b
        :pswitch_1d
        :pswitch_c
        :pswitch_24
        :pswitch_21
        :pswitch_23
        :pswitch_1b
        :pswitch_a
        :pswitch_1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_25
        :pswitch_1b
        :pswitch_1b
        :pswitch_25
        :pswitch_25
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1
        :pswitch_26
        :pswitch_26
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_1
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_34
        :pswitch_24
        :pswitch_12
        :pswitch_35
        :pswitch_24
        :pswitch_12
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2d
        :pswitch_2e
        :pswitch_32
        :pswitch_33
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->c:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->c:I

    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_1

    iput-object v7, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p4}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(Ljava/lang/String;)V

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_6

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a()Ljava/lang/Object;

    move-result-object v2

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_6

    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->d:Ljava/lang/String;

    :goto_1
    move v1, v6

    :goto_2
    iget-object v3, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_6

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    invoke-direct {p0, p4}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    goto :goto_0
.end method

.method private static a(I[Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b:I

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_5
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x44 -> :sswitch_4
        0x46 -> :sswitch_2
        0x49 -> :sswitch_1
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
        0x56 -> :sswitch_0
        0x5a -> :sswitch_1
        0x5b -> :sswitch_5
    .end sparse-switch
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v2

    move v1, v0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x4a

    if-eq v1, v0, :cond_2

    const/16 v0, 0x44

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(I)V

    goto :goto_1
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-static {p2, p3, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(I[Ljava/lang/Object;Ljava/util/List;)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-static {p4, p5, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(I[Ljava/lang/Object;Ljava/util/List;)V

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b:I

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b:I

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    goto :goto_0
.end method

.method public visitIincInsn(II)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_0
    const/16 v0, 0x84

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    return-void
.end method

.method public visitInsn(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    const/16 v0, 0xac

    if-lt p1, v0, :cond_1

    const/16 v0, 0xb1

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    :cond_2
    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_1

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_1

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    :goto_1
    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "java/lang/String"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    :cond_7
    const-string/jumbo v0, "java/lang/Class"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "java/lang/invoke/MethodType"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    instance-of v0, p1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "java/lang/invoke/MethodHandle"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    :cond_0
    const/16 v0, 0xab

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    return-void
.end method

.method public visitMaxs(II)V
    .locals 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b:I

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->c:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->c:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    iget v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->b:I

    iget v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_0
    const/16 v0, 0xc5

    invoke-direct {p0, v0, p2, p1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    :cond_0
    const/16 v0, 0xaa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    iget-object v3, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->a(IILjava/lang/String;)V

    return-void
.end method
