.class public Lorg/luaj/vm2/luajc/JavaGen;
.super Ljava/lang/Object;


# instance fields
.field public final bytecode:[B

.field public final classname:Ljava/lang/String;

.field public final inners:[Lorg/luaj/vm2/luajc/JavaGen;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lorg/luaj/vm2/luajc/ProtoInfo;

    invoke-direct {v0, p1, p2}, Lorg/luaj/vm2/luajc/ProtoInfo;-><init>(Lorg/luaj/vm2/Prototype;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/luaj/vm2/luajc/JavaGen;-><init>(Lorg/luaj/vm2/luajc/ProtoInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/luaj/vm2/luajc/ProtoInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/luaj/vm2/luajc/JavaGen;->classname:Ljava/lang/String;

    new-instance v2, Lorg/luaj/vm2/luajc/JavaBuilder;

    invoke-direct {v2, p1, p2, p3}, Lorg/luaj/vm2/luajc/JavaBuilder;-><init>(Lorg/luaj/vm2/luajc/ProtoInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/luajc/ProtoInfo;Lorg/luaj/vm2/luajc/JavaBuilder;)V

    move v0, v1

    :goto_0
    iget-object v3, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v3, v3, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v3, v3, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    aget-object v3, v3, v0

    iget v4, v3, Lorg/luaj/vm2/LocVars;->startpc:I

    iget v5, v3, Lorg/luaj/vm2/LocVars;->endpc:I

    iget-object v3, v3, Lorg/luaj/vm2/LocVars;->varname:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v3}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v4, v5, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->setVarStartEnd(IIILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p4}, Lorg/luaj/vm2/luajc/JavaBuilder;->completeClass(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaGen;->bytecode:[B

    iget-object v0, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    array-length v2, v0

    new-array v0, v2, [Lorg/luaj/vm2/luajc/JavaGen;

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    new-instance v4, Lorg/luaj/vm2/luajc/JavaGen;

    iget-object v5, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    aget-object v5, v5, v0

    iget-object v6, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/luaj/vm2/luajc/ProtoInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6, p3, v1}, Lorg/luaj/vm2/luajc/JavaGen;-><init>(Lorg/luaj/vm2/luajc/ProtoInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    :cond_2
    return-void
.end method

.method private static a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V
    .locals 2

    const/16 v0, 0xff

    if-gt p3, v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    and-int/lit16 v1, p3, 0xff

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadConstant(Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method

.method private static a(Lorg/luaj/vm2/luajc/JavaBuilder;III)V
    .locals 1

    if-gt p3, p2, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadVarresult()V

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->subargs(I)V

    :goto_0
    return-void

    :cond_0
    if-ne p3, p2, :cond_1

    invoke-virtual {p0}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadVarresult()V

    goto :goto_0

    :cond_1
    sub-int v0, p3, p2

    invoke-virtual {p0, p1, p2, v0}, Lorg/luaj/vm2/luajc/JavaBuilder;->newVarargsVarresult(III)V

    goto :goto_0
.end method

.method private static a(Lorg/luaj/vm2/luajc/ProtoInfo;Lorg/luaj/vm2/luajc/JavaBuilder;)V
    .locals 13

    iget-object v9, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v2, v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v10, v2, v0

    const/4 v2, 0x0

    :goto_1
    iget v3, v9, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    if-ge v2, v3, :cond_1

    iget v3, v10, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    invoke-virtual {p0, v3, v2}, Lorg/luaj/vm2/luajc/ProtoInfo;->isUpvalueCreate(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/luaj/vm2/luajc/VarInfo;->isPhiVar()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/luaj/vm2/luajc/JavaBuilder;->convertToUpvalue(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, v10, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    :goto_2
    iget v3, v10, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    if-gt v2, v3, :cond_1e

    iget-object v3, v9, Lorg/luaj/vm2/Prototype;->code:[I

    aget v6, v3, v2

    iget-object v3, v9, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, v9, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    aget v3, v3, v2

    move v4, v3

    :goto_3
    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v3

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_A(I)I

    move-result v5

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_B(I)I

    move-result v8

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_Bx(I)I

    move-result v11

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_sBx(I)I

    move-result v12

    invoke-static {v6}, Lorg/luaj/vm2/Lua;->GETARG_C(I)I

    move-result v7

    packed-switch v3, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v1

    :goto_4
    invoke-virtual {p1, v2, v4}, Lorg/luaj/vm2/luajc/JavaBuilder;->onEndOfLuaInstruction(II)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    move v4, v3

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadUpvalue(I)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto :goto_4

    :pswitch_2
    invoke-virtual {p1, v2, v8, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeUpvalue(III)V

    move v3, v1

    goto :goto_4

    :pswitch_3
    invoke-virtual {p1, v8, v7}, Lorg/luaj/vm2/luajc/JavaBuilder;->newTable(II)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto :goto_4

    :pswitch_5
    invoke-virtual {p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->unaryop(I)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto :goto_4

    :pswitch_6
    iget-object v3, v9, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    aget-object v3, v3, v11

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadConstant(Lorg/luaj/vm2/LuaValue;)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto :goto_4

    :pswitch_7
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadNil()V

    :goto_5
    if-ltz v8, :cond_2

    if-lez v8, :cond_4

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    :cond_4
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :pswitch_8
    invoke-virtual {p1, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadUpvalue(I)V

    invoke-static {v9, p1, v2, v7}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->getTable()V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto :goto_4

    :pswitch_9
    invoke-virtual {p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-static {v9, p1, v2, v7}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->getTable()V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto :goto_4

    :pswitch_a
    invoke-virtual {p1, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadUpvalue(I)V

    invoke-static {v9, p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-static {v9, p1, v2, v7}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->setTable()V

    move v3, v1

    goto :goto_4

    :pswitch_b
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-static {v9, p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-static {v9, p1, v2, v7}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->setTable()V

    move v3, v1

    goto/16 :goto_4

    :pswitch_c
    invoke-static {v9, p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-static {v9, p1, v2, v7}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->binaryop(I)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    invoke-static {v9, p1, v2, v7}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->getTable()V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto/16 :goto_4

    :pswitch_e
    move v3, v8

    :goto_6
    if-gt v3, v7, :cond_5

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v8, 0x1

    if-le v7, v3, :cond_7

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->tobuffer()V

    move v3, v7

    :goto_7
    add-int/lit8 v3, v3, -0x1

    if-lt v3, v8, :cond_6

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->concatbuffer()V

    goto :goto_7

    :cond_6
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->tovalue()V

    :goto_8
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->concatvalue()V

    goto :goto_8

    :pswitch_f
    if-eqz v8, :cond_8

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadBoolean(Z)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v2, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->addBranch(III)V

    move v3, v1

    goto/16 :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    :pswitch_10
    if-lez v5, :cond_9

    add-int/lit8 v3, v5, -0x1

    :goto_a
    iget-object v5, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->openups:[[Lorg/luaj/vm2/luajc/UpvalInfo;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->closeUpvalue(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x1

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v12

    invoke-virtual {p1, v2, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->addBranch(III)V

    move v3, v1

    goto/16 :goto_4

    :pswitch_11
    invoke-static {v9, p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-static {v9, p1, v2, v7}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/luajc/JavaBuilder;II)V

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->compareop(I)V

    if-eqz v5, :cond_a

    const/4 v3, 0x3

    :goto_b
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v2, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->addBranch(III)V

    move v3, v1

    goto/16 :goto_4

    :cond_a
    const/4 v3, 0x2

    goto :goto_b

    :pswitch_12
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->toBoolean()V

    if-eqz v7, :cond_b

    const/4 v3, 0x3

    :goto_c
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v2, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->addBranch(III)V

    move v3, v1

    goto/16 :goto_4

    :cond_b
    const/4 v3, 0x2

    goto :goto_c

    :pswitch_13
    invoke-virtual {p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->toBoolean()V

    if-eqz v7, :cond_c

    const/4 v3, 0x3

    :goto_d
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v2, v3, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->addBranch(III)V

    invoke-virtual {p1, v2, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto/16 :goto_4

    :cond_c
    const/4 v3, 0x2

    goto :goto_d

    :pswitch_14
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v3, v8, -0x1

    packed-switch v3, :pswitch_data_1

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v6, v8, -0x1

    invoke-virtual {p1, v2, v3, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->newVarargs(III)V

    const/4 v3, -0x1

    move v6, v3

    :goto_e
    if-ltz v6, :cond_d

    if-lez v7, :cond_d

    const/4 v3, 0x2

    if-le v7, v3, :cond_10

    :cond_d
    const/4 v3, 0x1

    :goto_f
    if-eqz v3, :cond_11

    invoke-virtual {p1, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->invoke(I)V

    :goto_10
    packed-switch v7, :pswitch_data_2

    const/4 v3, 0x1

    :goto_11
    if-ge v3, v7, :cond_13

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v7, :cond_e

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    :cond_e
    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->arg(I)V

    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v2, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :pswitch_15
    const/4 v6, 0x1

    :goto_12
    if-ge v6, v8, :cond_f

    add-int v11, v5, v6

    invoke-virtual {p1, v2, v11}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_f
    move v6, v3

    goto :goto_e

    :pswitch_16
    add-int/lit8 v3, v5, 0x1

    invoke-static {p1, v2, v3, v1}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/luajc/JavaBuilder;III)V

    const/4 v3, -0x1

    move v6, v3

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    goto :goto_f

    :cond_11
    invoke-virtual {p1, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->call(I)V

    goto :goto_10

    :pswitch_17
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->pop()V

    move v3, v1

    goto/16 :goto_4

    :pswitch_18
    if-eqz v3, :cond_12

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->arg(I)V

    :cond_12
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    move v3, v1

    goto/16 :goto_4

    :cond_13
    move v3, v1

    goto/16 :goto_4

    :pswitch_19
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeVarresult()V

    move v3, v5

    goto/16 :goto_4

    :pswitch_1a
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    packed-switch v8, :pswitch_data_3

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v5, v8, -0x1

    invoke-virtual {p1, v2, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->newVarargs(III)V

    :goto_13
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->newTailcallVarargs()V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->areturn()V

    move v3, v1

    goto/16 :goto_4

    :pswitch_1b
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadNone()V

    goto :goto_13

    :pswitch_1c
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    goto :goto_13

    :pswitch_1d
    add-int/lit8 v3, v5, 0x1

    invoke-static {p1, v2, v3, v1}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/luajc/JavaBuilder;III)V

    goto :goto_13

    :pswitch_1e
    const/4 v3, 0x1

    if-ne v7, v3, :cond_14

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadNone()V

    :goto_14
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->areturn()V

    move v3, v1

    goto/16 :goto_4

    :cond_14
    packed-switch v8, :pswitch_data_4

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p1, v2, v5, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->newVarargs(III)V

    goto :goto_14

    :pswitch_1f
    invoke-static {p1, v2, v5, v1}, Lorg/luaj/vm2/luajc/JavaGen;->a(Lorg/luaj/vm2/luajc/JavaBuilder;III)V

    goto :goto_14

    :pswitch_20
    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadNone()V

    goto :goto_14

    :pswitch_21
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    goto :goto_14

    :pswitch_22
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v3, v5, 0x2

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->binaryop(I)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    const/4 v3, 0x1

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v12

    invoke-virtual {p1, v2, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->addBranch(III)V

    move v3, v1

    goto/16 :goto_4

    :pswitch_23
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v3, v5, 0x2

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->binaryop(I)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    add-int/lit8 v3, v5, 0x3

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v3, v5, 0x2

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->testForLoop()V

    const/4 v3, 0x2

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v12

    invoke-virtual {p1, v2, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->addBranch(III)V

    move v3, v1

    goto/16 :goto_4

    :pswitch_24
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    add-int/lit8 v3, v5, 0x2

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->invoke(I)V

    const/4 v3, 0x1

    :goto_15
    if-gt v3, v7, :cond_16

    if-ge v3, v7, :cond_15

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    :cond_15
    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->arg(I)V

    add-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v3

    invoke-virtual {p1, v2, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_16
    move v3, v1

    goto/16 :goto_4

    :pswitch_25
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->isNil()V

    const/4 v3, 0x3

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v12

    invoke-virtual {p1, v2, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->addBranch(III)V

    move v3, v1

    goto/16 :goto_4

    :pswitch_26
    add-int/lit8 v3, v7, -0x1

    mul-int/lit8 v3, v3, 0x32

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadLocal(II)V

    if-nez v8, :cond_18

    add-int/lit8 v6, v5, 0x1

    sub-int v6, v1, v6

    if-lez v6, :cond_17

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v2, v5, v3, v6}, Lorg/luaj/vm2/luajc/JavaBuilder;->setlistStack(IIII)V

    add-int/2addr v3, v6

    :cond_17
    invoke-virtual {p1, v3, v1}, Lorg/luaj/vm2/luajc/JavaBuilder;->setlistVarargs(II)V

    move v3, v1

    goto/16 :goto_4

    :cond_18
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v2, v5, v3, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->setlistStack(IIII)V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->pop()V

    move v3, v1

    goto/16 :goto_4

    :pswitch_27
    iget-object v3, v9, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    aget-object v6, v3, v11

    iget-object v3, v6, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v7, v3

    iget-object v3, p0, Lorg/luaj/vm2/luajc/ProtoInfo;->subprotos:[Lorg/luaj/vm2/luajc/ProtoInfo;

    aget-object v3, v3, v11

    iget-object v8, v3, Lorg/luaj/vm2/luajc/ProtoInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lorg/luaj/vm2/luajc/JavaBuilder;->closureCreate(Ljava/lang/String;)V

    if-lez v7, :cond_19

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    :cond_19
    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v7, :cond_1c

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v7, :cond_1a

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->dup()V

    :cond_1a
    iget-object v5, v6, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v5, v5, v3

    iget-boolean v11, v5, Lorg/luaj/vm2/Upvaldesc;->instack:Z

    if-eqz v11, :cond_1b

    iget-short v5, v5, Lorg/luaj/vm2/Upvaldesc;->idx:S

    invoke-virtual {p1, v8, v3, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->closureInitUpvalueFromLocal(Ljava/lang/String;III)V

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_1b
    iget-short v5, v5, Lorg/luaj/vm2/Upvaldesc;->idx:S

    invoke-virtual {p1, v8, v3, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->closureInitUpvalueFromUpvalue(Ljava/lang/String;II)V

    goto :goto_17

    :cond_1c
    move v3, v1

    goto/16 :goto_4

    :pswitch_28
    if-nez v8, :cond_1d

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadVarargs()V

    invoke-virtual {p1}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeVarresult()V

    move v3, v5

    goto/16 :goto_4

    :cond_1d
    const/4 v3, 0x1

    :goto_18
    if-ge v3, v8, :cond_2

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/luajc/JavaBuilder;->loadVarargs(I)V

    invoke-virtual {p1, v2, v5}, Lorg/luaj/vm2/luajc/JavaBuilder;->storeLocal(II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_f
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_3
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_1a
        :pswitch_1e
        :pswitch_23
        :pswitch_22
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_19
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
