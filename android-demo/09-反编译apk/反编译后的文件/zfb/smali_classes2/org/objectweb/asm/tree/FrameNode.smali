.class public Lorg/objectweb/asm/tree/FrameNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;


# instance fields
.field public local:Ljava/util/List;
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

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    iput p1, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p2, p3}, Lorg/objectweb/asm/tree/FrameNode;->a(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {p4, p5}, Lorg/objectweb/asm/tree/FrameNode;->a(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    goto :goto_0

    :pswitch_2
    invoke-static {p2, p3}, Lorg/objectweb/asm/tree/FrameNode;->a(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    goto :goto_0

    :pswitch_3
    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    invoke-static {v0, p5}, Lorg/objectweb/asm/tree/FrameNode;->a(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static a(I[Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v0

    :cond_0
    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v1, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {v0}, Lorg/objectweb/asm/tree/FrameNode;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-static {v0}, Lorg/objectweb/asm/tree/FrameNode;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {v0}, Lorg/objectweb/asm/tree/FrameNode;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move-object v0, p1

    move-object v3, v5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget v3, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    move-object v2, p1

    move v6, v4

    move-object v7, v5

    invoke-virtual/range {v2 .. v7}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget v3, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-static {v0}, Lorg/objectweb/asm/tree/FrameNode;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;)",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Lorg/objectweb/asm/tree/FrameNode;

    invoke-direct {v3}, Lorg/objectweb/asm/tree/FrameNode;-><init>()V

    iget v0, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    iput v0, v3, Lorg/objectweb/asm/tree/FrameNode;->type:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v4, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    iget-object v4, v3, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    :goto_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    iget-object v2, v3, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
