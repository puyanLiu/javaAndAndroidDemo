.class public Lorg/luaj/vm2/luajc/UpvalInfo;
.super Ljava/lang/Object;


# instance fields
.field nvars:I

.field pi:Lorg/luaj/vm2/luajc/ProtoInfo;

.field rw:Z

.field slot:I

.field var:[Lorg/luaj/vm2/luajc/VarInfo;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/luajc/ProtoInfo;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iput v2, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    iput v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    new-array v0, v0, [Lorg/luaj/vm2/luajc/VarInfo;

    invoke-static {v2}, Lorg/luaj/vm2/luajc/VarInfo;->PARAM(I)Lorg/luaj/vm2/luajc/VarInfo;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    iput-boolean v2, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/luajc/ProtoInfo;II)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iput p3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    iput v1, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    iget-object v0, p1, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v0, v0, p3

    aget-object v0, v0, p2

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/UpvalInfo;->a(Lorg/luaj/vm2/luajc/VarInfo;)Z

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Lorg/luaj/vm2/luajc/UpvalInfo;->c(Lorg/luaj/vm2/luajc/VarInfo;)Z

    move-result v4

    iput-boolean v4, v3, Lorg/luaj/vm2/luajc/VarInfo;->allocupvalue:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    if-le v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    return-void
.end method

.method private a(Lorg/luaj/vm2/luajc/VarInfo;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lorg/luaj/vm2/luajc/VarInfo;->INVALID:Lorg/luaj/vm2/luajc/VarInfo;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p1, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-ne v0, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iput-object p0, p1, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    iget v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    if-nez v0, :cond_6

    new-array v0, v2, [Lorg/luaj/vm2/luajc/VarInfo;

    iput-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    iget v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    aput-object p1, v0, v3

    iget v0, p1, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->prototype:Lorg/luaj/vm2/Prototype;

    iget-object v0, v0, Lorg/luaj/vm2/Prototype;->code:[I

    iget v3, p1, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    aget v0, v0, v3

    invoke-static {v0}, Lorg/luaj/vm2/Lua;->GET_OPCODE(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_4
    :pswitch_0
    move v2, v1

    :pswitch_1
    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v5, v0

    move v4, v1

    move v2, v1

    :goto_2
    if-ge v4, v5, :cond_b

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v6, v0, v4

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v0, v0, v3

    iget v3, v6, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    aget-object v0, v0, v3

    if-ne v0, p1, :cond_8

    iget-object v0, v6, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v0, v0

    :goto_3
    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_9

    iget-object v7, v6, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v7, v7, v3

    iget-object v8, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v8, v8, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v9, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v8, v8, v9

    iget v7, v7, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    aget-object v7, v8, v7

    if-eq v7, p1, :cond_5

    invoke-direct {p0, v7}, Lorg/luaj/vm2/luajc/UpvalInfo;->a(Lorg/luaj/vm2/luajc/VarInfo;)Z

    move-result v8

    or-int/2addr v2, v8

    invoke-virtual {v7}, Lorg/luaj/vm2/luajc/VarInfo;->isPhiVar()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, v7}, Lorg/luaj/vm2/luajc/UpvalInfo;->b(Lorg/luaj/vm2/luajc/VarInfo;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    iget v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lorg/luaj/vm2/luajc/VarInfo;

    iput-object v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    iget-object v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    iget v4, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    iget v0, v6, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    add-int/lit8 v0, v0, -0x1

    :goto_5
    iget v3, v6, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    if-lt v0, v3, :cond_9

    iget-object v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v3, v3, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v7, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v3, v3, v7

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_a

    iget-object v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v3, v3, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v6, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v3, v3, v6

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/UpvalInfo;->a(Lorg/luaj/vm2/luajc/VarInfo;)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    invoke-direct {p0, p1}, Lorg/luaj/vm2/luajc/UpvalInfo;->b(Lorg/luaj/vm2/luajc/VarInfo;)V

    :cond_c
    move v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lorg/luaj/vm2/luajc/VarInfo;)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v4, v0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->blocklist:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v5, v0, v3

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v2, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v0, v0, v2

    iget v2, v5, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_2

    iget-object v0, v5, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v0, v0

    :goto_1
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v6, v5, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v7, v7, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v8, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v7, v7, v8

    iget v6, v6, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    aget-object v6, v7, v6

    if-eq v6, p1, :cond_0

    invoke-direct {p0, v6}, Lorg/luaj/vm2/luajc/UpvalInfo;->a(Lorg/luaj/vm2/luajc/VarInfo;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget v0, v5, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    iget v2, v5, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    if-gt v0, v2, :cond_3

    iget-object v2, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v2, v2, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v6, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v2, v2, v6

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v2, v2, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v5, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v2, v2, v5

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/luajc/UpvalInfo;->a(Lorg/luaj/vm2/luajc/VarInfo;)Z

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private c(Lorg/luaj/vm2/luajc/VarInfo;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p1, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v2, v2, Lorg/luaj/vm2/luajc/ProtoInfo;->blocks:[Lorg/luaj/vm2/luajc/BasicBlock;

    iget v3, p1, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    aget-object v3, v2, v3

    iget v2, p1, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    iget v4, v3, Lorg/luaj/vm2/luajc/BasicBlock;->pc0:I

    if-le v2, v4, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v2, v2, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v2, v2, v3

    iget v3, p1, Lorg/luaj/vm2/luajc/VarInfo;->pc:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-ne v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, v3, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v2, v2, Lorg/luaj/vm2/luajc/ProtoInfo;->params:[Lorg/luaj/vm2/luajc/VarInfo;

    iget v3, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-ne v2, p0, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, v3, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    array-length v4, v2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    iget-object v5, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v5, v5, Lorg/luaj/vm2/luajc/ProtoInfo;->vars:[[Lorg/luaj/vm2/luajc/VarInfo;

    iget v6, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->slot:I

    aget-object v5, v5, v6

    iget-object v6, v3, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v6, v6, v2

    iget v6, v6, Lorg/luaj/vm2/luajc/BasicBlock;->pc1:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_5

    iget-object v5, v5, Lorg/luaj/vm2/luajc/VarInfo;->upvalue:Lorg/luaj/vm2/luajc/UpvalInfo;

    if-ne v5, p0, :cond_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->pi:Lorg/luaj/vm2/luajc/ProtoInfo;

    iget-object v0, v0, Lorg/luaj/vm2/luajc/ProtoInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->nvars:I

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string/jumbo v1, ","

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->var:[Lorg/luaj/vm2/luajc/VarInfo;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, " "

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/luaj/vm2/luajc/UpvalInfo;->rw:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "(rw)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
