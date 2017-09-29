.class final Lorg/luaj/vm2/luajc/BasicBlock$2;
.super Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;


# instance fields
.field private final a:[I

.field private final b:[I


# direct methods
.method constructor <init>([Z[I[I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;-><init>([Z)V

    iput-object p2, p0, Lorg/luaj/vm2/luajc/BasicBlock$2;->a:[I

    iput-object p3, p0, Lorg/luaj/vm2/luajc/BasicBlock$2;->b:[I

    return-void
.end method


# virtual methods
.method public final visitBranch(II)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$2;->a:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$2;->b:[I

    aget v1, v0, p2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p2

    return-void
.end method
