.class public Lorg/luaj/vm2/luajc/BasicBlock;
.super Ljava/lang/Object;


# instance fields
.field islive:Z

.field next:[Lorg/luaj/vm2/luajc/BasicBlock;

.field pc0:I

.field pc1:I

.field prev:[Lorg/luaj/vm2/luajc/BasicBlock;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/Prototype;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    iput p2, p0, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    return-void
.end method

.method private static a([Lorg/luaj/vm2/luajc/BasicBlock;I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    array-length v3, p0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    if-lez v1, :cond_1

    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    aget-object v0, p0, v1

    iget v0, v0, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    aget-object v0, p0, v1

    iget v0, v0, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static findBasicBlocks(Lorg/luaj/vm2/Prototype;)[Lorg/luaj/vm2/luajc/BasicBlock;
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v1, v1

    new-array v2, v1, [Z

    new-array v3, v1, [Z

    aput-boolean v7, v2, v0

    new-instance v4, Lorg/luaj/vm2/luajc/BasicBlock$1;

    invoke-direct {v4, v2, v3}, Lorg/luaj/vm2/luajc/BasicBlock$1;-><init>([Z[Z)V

    invoke-static {p0, v4}, Lorg/luaj/vm2/luajc/BasicBlock;->visitBranches(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;)V

    invoke-static {p0, v4}, Lorg/luaj/vm2/luajc/BasicBlock;->visitBranches(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;)V

    new-array v4, v1, [Lorg/luaj/vm2/luajc/BasicBlock;

    :goto_0
    if-ge v0, v1, :cond_1

    aput-boolean v7, v2, v0

    new-instance v5, Lorg/luaj/vm2/luajc/BasicBlock;

    invoke-direct {v5, p0, v0}, Lorg/luaj/vm2/luajc/BasicBlock;-><init>(Lorg/luaj/vm2/Prototype;I)V

    aput-object v5, v4, v0

    :goto_1
    aget-boolean v6, v3, v0

    if-nez v6, :cond_0

    add-int/lit8 v6, v0, 0x1

    if-ge v6, v1, :cond_0

    add-int/lit8 v6, v0, 0x1

    aget-boolean v6, v2, v6

    if-nez v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    aput-object v5, v4, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    new-array v1, v1, [I

    new-instance v3, Lorg/luaj/vm2/luajc/BasicBlock$2;

    invoke-direct {v3, v2, v0, v1}, Lorg/luaj/vm2/luajc/BasicBlock$2;-><init>([Z[I[I)V

    invoke-static {p0, v3}, Lorg/luaj/vm2/luajc/BasicBlock;->visitBranches(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;)V

    new-instance v3, Lorg/luaj/vm2/luajc/BasicBlock$3;

    invoke-direct {v3, v2, v4, v0, v1}, Lorg/luaj/vm2/luajc/BasicBlock$3;-><init>([Z[Lorg/luaj/vm2/luajc/BasicBlock;[I[I)V

    invoke-static {p0, v3}, Lorg/luaj/vm2/luajc/BasicBlock;->visitBranches(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;)V

    return-object v4
.end method

.method public static findLiveBlocks([Lorg/luaj/vm2/luajc/BasicBlock;)[Lorg/luaj/vm2/luajc/BasicBlock;
    .locals 6

    const/4 v2, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aget-object v0, p0, v2

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/luajc/BasicBlock;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->removeElementAt(I)V

    iget-boolean v1, v0, Lorg/luaj/vm2/luajc/BasicBlock;->islive:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/luaj/vm2/luajc/BasicBlock;->islive:Z

    iget-object v1, v0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v1, v1

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v5, v0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lorg/luaj/vm2/luajc/BasicBlock;->islive:Z

    if-nez v5, :cond_1

    iget-object v5, v0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    aget-object v1, p0, v2

    iget-boolean v1, v1, Lorg/luaj/vm2/luajc/BasicBlock;->islive:Z

    if-eqz v1, :cond_4

    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    aget-object v1, p0, v2

    iget v1, v1, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lorg/luaj/vm2/luajc/BasicBlock;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public static visitBranches(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;)V
    .locals 6

    const/16 v5, 0x17

    iget-object v1, p0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget v3, v1, v0

    invoke-static {v3}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v2, :cond_1

    iget-object v3, p1, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->isbeg:[Z

    add-int/lit8 v4, v0, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->visitBranch(II)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-static {v3}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    invoke-static {v3}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "OP_LOADBOOL followed by jump at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0, v3}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->visitBranch(II)V

    goto :goto_1

    :sswitch_1
    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    invoke-static {v3}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v3

    if-eq v3, v5, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "test not followed by jump at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    invoke-static {v3}, Lorg/luaj/vm2/Lua;->GETARG_sBx(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0, v3}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->visitBranch(II)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->visitBranch(II)V

    goto :goto_1

    :sswitch_2
    invoke-static {v3}, Lorg/luaj/vm2/Lua;->GETARG_sBx(I)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0, v3}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->visitBranch(II)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->visitBranch(II)V

    goto :goto_1

    :sswitch_3
    invoke-static {v3}, Lorg/luaj/vm2/Lua;->GETARG_sBx(I)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0, v3}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->visitBranch(II)V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;->visitReturn(I)V

    goto/16 :goto_1

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x17 -> :sswitch_3
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
        0x1e -> :sswitch_4
        0x1f -> :sswitch_4
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
        0x23 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "  prv: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/luaj/vm2/luajc/BasicBlock;->a([Lorg/luaj/vm2/luajc/BasicBlock;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "  nxt: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/luaj/vm2/luajc/BasicBlock;->a([Lorg/luaj/vm2/luajc/BasicBlock;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
