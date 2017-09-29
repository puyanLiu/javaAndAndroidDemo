.class public Lorg/objectweb/asm/tree/AnnotationNode;
.super Lorg/objectweb/asm/AnnotationVisitor;


# instance fields
.field public desc:Ljava/lang/String;

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    iput-object p2, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/objectweb/asm/tree/AnnotationNode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    return-void
.end method

.method static accept(Lorg/objectweb/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p2, [Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p2, [Ljava/lang/String;

    aget-object v0, p2, v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p2, Lorg/objectweb/asm/tree/AnnotationNode;

    if-eqz v1, :cond_2

    check-cast p2, Lorg/objectweb/asm/tree/AnnotationNode;

    iget-object v0, p2, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    goto :goto_0

    :cond_2
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    check-cast p2, Ljava/util/List;

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/AnnotationVisitor;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_1
    return-void
.end method

.method public check(I)V
    .locals 0

    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v1, v0}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/AnnotationNode;->values:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
