.class final Lorg/luaj/vm2/luajc/BasicBlock$1;
.super Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;


# instance fields
.field private final a:[Z


# direct methods
.method constructor <init>([Z[Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;-><init>([Z)V

    iput-object p2, p0, Lorg/luaj/vm2/luajc/BasicBlock$1;->a:[Z

    return-void
.end method


# virtual methods
.method public final visitBranch(II)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$1;->a:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$1;->isbeg:[Z

    aput-boolean v1, v0, p2

    return-void
.end method

.method public final visitReturn(I)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$1;->a:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
