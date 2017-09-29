.class public Lorg/luaj/vm2/luajc/ProtoInfo;
.super Ljava/lang/Object;


# instance fields
.field public final blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

.field public final blocks:[Lorg/luaj/vm2/luajc/BasicBlock;

.field public final name:Ljava/lang/String;

.field public final openups:[[Lorg/luaj/vm2/luajc/UpvalInfo;

.field public final params:[Lorg/luaj/vm2/luajc/VarInfo;

.field public final prototype:Lorg/luaj/vm2/Prototype;

.field public final subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

.field public final upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

.field public final vars:[[Lorg/luaj/vm2/luajc/VarInfo;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/Prototype;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/luaj/vm2/luajc/ProtoInfo;-><init>(Lorg/luaj/vm2/Prototype;Ljava/lang/String;[Lorg/luaj/vm2/luajc/UpvalInfo;)V

    return-void
.end method

.method private constructor <init>(Lorg/luaj/vm2/Prototype;Ljava/lang/String;[Lorg/luaj/vm2/luajc/UpvalInfo;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    array-length v0, v0

    new-array v0, v0, [Lorg/luaj/vm2/luajc/ProtoInfo;

    :goto_1
    iput-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-static {p1}, Lorg/luaj/vm2/luajc/BasicBlock;->findBasicBlocks(Lorg/luaj/vm2/Prototype;)[Lorg/luaj/vm2/luajc/BasicBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocks:[Lorg/luaj/vm2/luajc/BasicBlock;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocks:[Lorg/luaj/vm2/luajc/BasicBlock;

    invoke-static {v0}, Lorg/luaj/vm2/luajc/BasicBlock;->findLiveBlocks([Lorg/luaj/vm2/luajc/BasicBlock;)[Lorg/luaj/vm2/luajc/BasicBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    iget v0, p1, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    new-array v0, v0, [Lorg/luaj/vm2/luajc/VarInfo;

    iput-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    move v0, v1

    :goto_2
    iget v1, p1, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    if-ge v0, v1, :cond_2

    invoke-static {v0}, Lorg/luaj/vm2/luajc/VarInfo;->PARAM(I)Lorg/luaj/vm2/luajc/VarInfo;

    move-result-object v1

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    new-array p3, v0, [Lorg/luaj/vm2/luajc/UpvalInfo;

    new-instance v0, Lorg/luaj/vm2/luajc/UpvalInfo;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/luajc/UpvalInfo;-><init>(Lorg/luaj/vm2/luajc/ProtoInfo;)V

    aput-object v0, p3, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/luaj/vm2/luajc/ProtoInfo;->a()[[Lorg/luaj/vm2/luajc/VarInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {p0}, Lorg/luaj/vm2/luajc/ProtoInfo;->b()V

    iget v0, p1, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    new-array v0, v0, [[Lorg/luaj/vm2/luajc/UpvalInfo;

    iput-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->openups:[[Lorg/luaj/vm2/luajc/UpvalInfo;

    invoke-direct {p0}, Lorg/luaj/vm2/luajc/ProtoInfo;->c()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)Lorg/luaj/vm2/luajc/UpvalInfo;
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->openups:[[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->openups:[[Lorg/luaj/vm2/luajc/UpvalInfo;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v1, v1, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v1, v1

    new-array v1, v1, [Lorg/luaj/vm2/luajc/UpvalInfo;

    aput-object v1, v0, p2

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->openups:[[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->openups:[[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lorg/luaj/vm2/luajc/UpvalInfo;

    invoke-direct {v0, p0, p1, p2}, Lorg/luaj/vm2/luajc/UpvalInfo;-><init>(Lorg/luaj/vm2/luajc/ProtoInfo;II)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v2, v2, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v3, v3, p2

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v3, v3, p2

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-ne v3, v0, :cond_3

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->openups:[[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v3, v3, p2

    aput-object v0, v3, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuffer;I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget v1, v1, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    if-ge v0, v1, :cond_2

    if-gez p2, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v1, v1, v0

    :goto_1
    if-eqz v1, :cond_0

    iget v2, v1, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    if-ne v2, p2, :cond_0

    iget-boolean v2, v1, Lorg/luaj/vm2/luajc/VarInfo;->allocupvalue:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "    open: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v1, v1, v0

    aget-object v1, v1, p2

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a()[[Lorg/luaj/vm2/luajc/VarInfo;
    .locals 12

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v2, v0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget v7, v0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    new-array v8, v7, [[Lorg/luaj/vm2/luajc/VarInfo;

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_0

    new-array v3, v2, [Lorg/luaj/vm2/luajc/VarInfo;

    aput-object v3, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v0, v0

    if-ge v3, v0, :cond_1a

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v9, v0, v3

    iget-object v0, v9, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-eqz v0, :cond_3

    iget-object v0, v9, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v0, v0

    :goto_2
    move v6, v1

    :goto_3
    if-ge v6, v7, :cond_7

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v2, v2, v6

    :cond_1
    :goto_4
    if-nez v2, :cond_2

    iget v2, v9, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    invoke-static {p0, v6, v2}, Lorg/luaj/vm2/luajc/VarInfo;->PHI(Lorg/luaj/vm2/luajc/ProtoInfo;II)Lorg/luaj/vm2/luajc/VarInfo;

    move-result-object v2

    :cond_2
    aget-object v5, v8, v6

    iget v10, v9, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    aput-object v2, v5, v10

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    if-ne v0, v4, :cond_5

    aget-object v2, v8, v6

    iget-object v5, v9, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v5, v5, v1

    iget v5, v5, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    aget-object v2, v2, v5

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_5
    if-ge v5, v0, :cond_1

    iget-object v10, v9, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v10, v10, v5

    aget-object v11, v8, v6

    iget v10, v10, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    aget-object v10, v11, v10

    sget-object v11, Lorg/luaj/vm2/luajc/VarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    if-ne v10, v11, :cond_6

    sget-object v2, Lorg/luaj/vm2/luajc/VarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    iget v0, v9, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    :goto_6
    iget v2, v9, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    if-gt v0, v2, :cond_19

    iget v2, v9, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    if-le v0, v2, :cond_8

    add-int/lit8 v5, v0, -0x1

    move v2, v1

    :goto_7
    if-ge v2, v7, :cond_8

    aget-object v6, v8, v2

    aget-object v10, v8, v2

    aget-object v10, v10, v5

    aput-object v10, v6, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v2, v2, Lorg/luaj/vm2/Prototype;->code:[I

    aget v6, v2, v0

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "unhandled opcode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    :cond_9
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_2
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v5

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    goto :goto_8

    :pswitch_3
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v6

    invoke-static {v5}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v10

    if-nez v10, :cond_a

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_a
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v5

    if-nez v5, :cond_b

    aget-object v5, v8, v6

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_b
    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    goto :goto_8

    :pswitch_4
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v6

    aget-object v2, v8, v2

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    invoke-static {v5}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v2

    if-nez v2, :cond_c

    aget-object v2, v8, v5

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_c
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v2

    if-nez v2, :cond_9

    aget-object v2, v8, v6

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    goto :goto_8

    :pswitch_5
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v5

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v6

    if-nez v6, :cond_d

    aget-object v2, v8, v2

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_d
    invoke-static {v5}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v2

    if-nez v2, :cond_9

    aget-object v2, v8, v5

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    goto/16 :goto_8

    :pswitch_6
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v6

    :goto_9
    if-gt v2, v6, :cond_e

    aget-object v10, v8, v2

    aget-object v10, v10, v0

    iput-boolean v4, v10, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    aget-object v2, v8, v5

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v5, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v2, v0

    goto/16 :goto_8

    :pswitch_7
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    add-int/lit8 v5, v2, 0x2

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    goto/16 :goto_8

    :pswitch_8
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v6

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v5

    if-nez v5, :cond_f

    aget-object v5, v8, v6

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_f
    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    goto/16 :goto_8

    :pswitch_9
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v5

    invoke-static {v5}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v6

    if-nez v6, :cond_10

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_10
    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    goto/16 :goto_8

    :pswitch_a
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v6

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v5

    if-nez v5, :cond_11

    aget-object v5, v8, v6

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_11
    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v8, v5

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    goto/16 :goto_8

    :pswitch_b
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    aget-object v5, v8, v2

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v5, v2, 0x2

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    aget-object v5, v8, v2

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v5, v2, 0x3

    aget-object v5, v8, v5

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    goto/16 :goto_8

    :pswitch_c
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v2

    move v6, v5

    :goto_a
    add-int/lit8 v5, v2, -0x1

    if-ltz v2, :cond_9

    aget-object v2, v8, v6

    new-instance v10, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v10, v6, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v10, v2, v0

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v5

    goto :goto_a

    :pswitch_d
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v6

    move v5, v4

    :goto_b
    if-ge v5, v6, :cond_12

    aget-object v10, v8, v2

    new-instance v11, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v11, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v11, v10, v0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    if-nez v6, :cond_9

    :goto_c
    if-ge v2, v7, :cond_9

    aget-object v5, v8, v2

    sget-object v6, Lorg/luaj/vm2/luajc/VarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    aput-object v6, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :pswitch_e
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v10

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v6

    aget-object v5, v8, v2

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    aget-object v5, v8, v2

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    move v5, v4

    :goto_d
    add-int/lit8 v11, v10, -0x1

    if-gt v5, v11, :cond_13

    add-int v11, v2, v5

    aget-object v11, v8, v11

    aget-object v11, v11, v0

    iput-boolean v4, v11, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_13
    move v5, v1

    :goto_e
    add-int/lit8 v10, v6, -0x2

    if-gt v5, v10, :cond_14

    aget-object v10, v8, v2

    new-instance v11, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v11, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v11, v10, v0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_14
    :goto_f
    if-ge v2, v7, :cond_9

    aget-object v5, v8, v2

    sget-object v6, Lorg/luaj/vm2/luajc/VarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    aput-object v6, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :pswitch_f
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v6

    add-int/lit8 v5, v2, 0x1

    aget-object v2, v8, v2

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v10, v5, 0x1

    aget-object v2, v8, v5

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v2, v10, 0x1

    aget-object v5, v8, v10

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    move v5, v1

    :goto_10
    if-ge v5, v6, :cond_15

    aget-object v10, v8, v2

    new-instance v11, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v11, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v11, v10, v0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_15
    :goto_11
    if-ge v2, v7, :cond_9

    aget-object v5, v8, v2

    sget-object v6, Lorg/luaj/vm2/luajc/VarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    aput-object v6, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :pswitch_10
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v8, v5

    aget-object v5, v5, v0

    iput-boolean v4, v5, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    aget-object v5, v8, v2

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v2, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v5, v0

    goto/16 :goto_8

    :pswitch_11
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v6

    aget-object v2, v8, v5

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    move v2, v4

    :goto_12
    add-int/lit8 v10, v6, -0x1

    if-gt v2, v10, :cond_9

    add-int v10, v5, v2

    aget-object v10, v8, v10

    aget-object v10, v10, v0

    iput-boolean v4, v10, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :pswitch_12
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v6

    move v2, v1

    :goto_13
    add-int/lit8 v10, v6, -0x2

    if-gt v2, v10, :cond_9

    add-int v10, v5, v2

    aget-object v10, v8, v10

    aget-object v10, v10, v0

    iput-boolean v4, v10, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :pswitch_13
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_Bx(I)I

    move-result v2

    iget-object v6, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v6, v6, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    aget-object v2, v6, v2

    iget-object v6, v2, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v10, v6

    move v2, v1

    :goto_14
    if-ge v2, v10, :cond_17

    aget-object v11, v6, v2

    iget-boolean v11, v11, Lorg/luaj/vm2/Upvaldesc;->instack:Z

    if-eqz v11, :cond_16

    aget-object v11, v6, v2

    iget-short v11, v11, Lorg/luaj/vm2/Upvaldesc;->idx:S

    aget-object v11, v8, v11

    aget-object v11, v11, v0

    iput-boolean v4, v11, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_17
    aget-object v2, v8, v5

    new-instance v6, Lorg/luaj/vm2/luajc/VarInfo;

    invoke-direct {v6, v5, v0}, Lorg/luaj/vm2/luajc/VarInfo;-><init>(II)V

    aput-object v6, v2, v0

    goto/16 :goto_8

    :pswitch_14
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v6

    aget-object v2, v8, v5

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    move v2, v4

    :goto_15
    if-gt v2, v6, :cond_9

    add-int v10, v5, v2

    aget-object v10, v8, v10

    aget-object v10, v10, v0

    iput-boolean v4, v10, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :pswitch_15
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    aget-object v2, v8, v2

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    goto/16 :goto_8

    :pswitch_16
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v2

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v5

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v6

    if-nez v6, :cond_18

    aget-object v2, v8, v2

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    :cond_18
    invoke-static {v5}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v2

    if-nez v2, :cond_9

    aget-object v2, v8, v5

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    goto/16 :goto_8

    :pswitch_17
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v2

    if-lez v2, :cond_9

    add-int/lit8 v2, v2, -0x1

    :goto_16
    if-ge v2, v7, :cond_9

    aget-object v5, v8, v2

    sget-object v6, Lorg/luaj/vm2/luajc/VarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    aput-object v6, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_19
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_1a
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_15
        :pswitch_4
        :pswitch_1
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_2
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_b
        :pswitch_7
        :pswitch_f
        :pswitch_10
        :pswitch_14
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method private b()V
    .locals 12

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v5, v2, v0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget v3, v3, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v3, v3, v2

    iget v4, v5, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lorg/luaj/vm2/luajc/VarInfo;->resolvePhiVariableValues()Lorg/luaj/vm2/luajc/VarInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v3, v3, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v8, v3

    move v4, v1

    :goto_2
    if-ge v4, v8, :cond_2

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v9, v3, v2

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v3, v3, v2

    array-length v10, v3

    move v3, v1

    :goto_3
    if-ge v3, v10, :cond_1

    aget-object v11, v9, v3

    if-ne v11, v6, :cond_0

    aput-object v7, v9, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private c()V
    .locals 12

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v5, v0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v6, v5

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_9

    aget v1, v5, v3

    invoke-static {v1}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_8

    aget v1, v5, v3

    invoke-static {v1}, Lorg/luaj/vm2/Lua;->GETARG_Bx(I)I

    move-result v4

    iget-object v1, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v1, v1, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    aget-object v7, v1, v4

    iget-object v1, v7, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v1, v1

    new-array v8, v1, [Lorg/luaj/vm2/luajc/UpvalInfo;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    :goto_2
    iget-object v2, v7, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, v7, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v2, v2, v1

    iget-boolean v10, v2, Lorg/luaj/vm2/Upvaldesc;->instack:Z

    if-eqz v10, :cond_6

    iget-short v2, v2, Lorg/luaj/vm2/Upvaldesc;->idx:S

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/luajc/ProtoInfo;->a(II)Lorg/luaj/vm2/luajc/UpvalInfo;

    move-result-object v2

    :goto_3
    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v8, v0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v9, v8

    const/4 v0, 0x0

    move v4, v0

    :goto_4
    if-ge v4, v9, :cond_5

    aget v0, v8, v4

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_3

    aget v0, v8, v4

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GETARG_Bx(I)I

    move-result v10

    const/4 v0, 0x0

    add-int/lit8 v1, v4, 0x1

    aget v1, v8, v1

    invoke-static {v1}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    aget v1, v8, v4

    invoke-static {v1}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v1

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v2, v1, v11}, Lorg/luaj/vm2/Prototype;->getlocalname(II)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_5
    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/luaj/vm2/luajc/ProtoInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v11, 0x24

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    move-object v0, v1

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v0, v3, v10

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :pswitch_0
    invoke-static {v1}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v1

    invoke-static {v1}, Lorg/luaj/vm2/Lua;->ISK(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    and-int/lit16 v1, v1, 0xff

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_1
    invoke-static {v1}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v1

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v2, v2, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v1, v2, v1

    iget-object v1, v1, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_5
    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    iget-short v2, v2, Lorg/luaj/vm2/Upvaldesc;->idx:S

    aget-object v2, v10, v2

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    new-instance v2, Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-direct {v2, v7, v9, v8}, Lorg/luaj/vm2/luajc/ProtoInfo;-><init>(Lorg/luaj/vm2/Prototype;Ljava/lang/String;[Lorg/luaj/vm2/luajc/UpvalInfo;)V

    aput-object v2, v1, v4

    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v6, :cond_b

    aget v1, v5, v0

    invoke-static {v1}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget v2, v5, v0

    invoke-static {v2}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    return-void

    :cond_c
    move v1, v2

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isInitialValueUsed(I)Z
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lorg/luaj/vm2/luajc/VarInfo;->isreferenced:Z

    return v0
.end method

.method public isReadWriteUpvalue(Lorg/luaj/vm2/luajc/UpvalInfo;)Z
    .locals 1

    iget-boolean v0, p1, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    return v0
.end method

.method public isUpvalueAssign(II)Z
    .locals 2

    if-gez p1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    iget-boolean v0, v0, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isUpvalueCreate(II)Z
    .locals 2

    if-gez p1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    iget-boolean v1, v1, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/luaj/vm2/luajc/VarInfo;->allocupvalue:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isUpvalueRefer(II)Z
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    iget v0, v0, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    iget-boolean v0, v0, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "proto \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\'\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    array-length v0, v0

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, " up["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->upvals:[Lorg/luaj/vm2/luajc/UpvalInfo;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_2
    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v0, v0

    if-ge v4, v0, :cond_9

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v7, v0, v4

    iget v0, v7, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "  block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/luaj/vm2/luajc/BasicBlock;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, -0x1

    invoke-direct {p0, v6, v2}, Lorg/luaj/vm2/luajc/ProtoInfo;->a(Ljava/lang/StringBuffer;I)V

    :goto_3
    iget v2, v7, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    if-gt v0, v2, :cond_8

    invoke-direct {p0, v6, v0}, Lorg/luaj/vm2/luajc/ProtoInfo;->a(Ljava/lang/StringBuffer;I)V

    const-string/jumbo v2, "     "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_4
    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget v3, v3, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v3, v3, v2

    aget-object v8, v3, v0

    if-nez v8, :cond_2

    const-string/jumbo v3, ""

    move-object v5, v3

    :goto_5
    if-nez v8, :cond_6

    const-string/jumbo v3, "null   "

    :goto_6
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    iget-object v3, v8, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-eqz v3, :cond_5

    iget-object v3, v8, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    iget-boolean v3, v3, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    if-nez v3, :cond_3

    const-string/jumbo v3, "[C] "

    move-object v5, v3

    goto :goto_5

    :cond_3
    iget-boolean v3, v8, Lorg/luaj/vm2/luajc/VarInfo;->allocupvalue:Z

    if-eqz v3, :cond_4

    iget v3, v8, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    if-ne v3, v0, :cond_4

    const-string/jumbo v3, "[*] "

    move-object v5, v3

    goto :goto_5

    :cond_4
    const-string/jumbo v3, "[]  "

    move-object v5, v3

    goto :goto_5

    :cond_5
    const-string/jumbo v3, "    "

    move-object v5, v3

    goto :goto_5

    :cond_6
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    const-string/jumbo v2, "  "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v5, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    :try_start_0
    iget-object v5, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    invoke-static {v5, v0}, Lorg/luaj/vm2/Print;->printOpCode(Lorg/luaj/vm2/Prototype;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v5, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V

    sput-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    sput-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    throw v0

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    array-length v0, v0

    :goto_7
    if-ge v1, v0, :cond_b

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/luaj/vm2/luajc/ProtoInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_7

    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
