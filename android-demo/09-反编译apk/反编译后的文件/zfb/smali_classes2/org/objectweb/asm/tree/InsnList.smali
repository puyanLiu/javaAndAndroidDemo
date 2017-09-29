.class public Lorg/objectweb/asm/tree/InsnList;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field private c:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method public add(Lorg/objectweb/asm/tree/InsnList;)V
    .locals 2

    iget v0, p1, Lorg/objectweb/asm/tree/InsnList;->a:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget v1, p1, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    return-void
.end method

.method public contains(Lorg/objectweb/asm/tree/AbstractInsnNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFirst()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_0
    iget v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void

    :cond_0
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/InsnList;)V
    .locals 3

    iget v0, p2, Lorg/objectweb/asm/tree/InsnList;->a:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget v1, p2, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p2, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p2, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v2, :cond_1

    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_1
    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_0

    :cond_1
    iput-object v1, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_1
.end method

.method public insert(Lorg/objectweb/asm/tree/InsnList;)V
    .locals 2

    iget v0, p1, Lorg/objectweb/asm/tree/InsnList;->a:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget v1, p1, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_1
.end method

.method public insertBefore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void

    :cond_0
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method public insertBefore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/InsnList;)V
    .locals 3

    iget v0, p2, Lorg/objectweb/asm/tree/InsnList;->a:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget v1, p2, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p2, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p2, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v2, :cond_1

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_1
    iput-object v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_0

    :cond_1
    iput-object v0, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_1
.end method

.method public iterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/InsnList;->iterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;

    invoke-direct {v0, p0, p1}, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;-><init>(Lorg/objectweb/asm/tree/InsnList;I)V

    return-object v0
.end method

.method public remove(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, -0x1

    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    :cond_0
    iput-object v2, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_2
    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method removeAll(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v2, -0x1

    iput v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iput-object v3, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v3, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    iput-object v3, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v3, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v3, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method public resetLabels()V
    .locals 2

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->resetLabel()V

    :cond_0
    iget-object v1, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public set(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    aput-object p2, v1, v0

    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    :goto_2
    const/4 v0, -0x1

    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->prev:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    :cond_0
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->c:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    goto :goto_2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    return v0
.end method

.method public toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->b:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget v2, p0, Lorg/objectweb/asm/tree/InsnList;->a:I

    new-array v3, v2, [Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz v0, :cond_0

    aput-object v0, v3, v1

    add-int/lit8 v2, v1, 0x1

    iput v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->next:Lorg/objectweb/asm/tree/AbstractInsnNode;

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method
