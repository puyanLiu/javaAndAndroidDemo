.class final Lorg/luaj/vm2/luajc/BasicBlock$3;
.super Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;


# instance fields
.field private final a:[Lorg/luaj/vm2/luajc/BasicBlock;

.field private final b:[I

.field private final c:[I


# direct methods
.method constructor <init>([Z[Lorg/luaj/vm2/luajc/BasicBlock;[I[I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;-><init>([Z)V

    iput-object p2, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    iput-object p3, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->b:[I

    iput-object p4, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->c:[I

    return-void
.end method


# virtual methods
.method public final visitBranch(II)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->b:[I

    aget v1, v1, p1

    new-array v1, v1, [Lorg/luaj/vm2/luajc/BasicBlock;

    iput-object v1, v0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v0, v0, p2

    iget-object v0, v0, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v0, v0, p2

    iget-object v1, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->c:[I

    aget v1, v1, p2

    new-array v1, v1, [Lorg/luaj/vm2/luajc/BasicBlock;

    iput-object v1, v0, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->b:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    iget-object v1, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v1, v1, p2

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v0, v0, p2

    iget-object v0, v0, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->c:[I

    aget v2, v1, p2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p2

    iget-object v1, p0, Lorg/luaj/vm2/luajc/BasicBlock$3;->a:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v1, v1, p1

    aput-object v1, v0, v2

    return-void
.end method
