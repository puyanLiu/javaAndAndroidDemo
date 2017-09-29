.class Lorg/luaj/vm2/lib/DebugLib$CallFrame;
.super Ljava/lang/Object;


# instance fields
.field f:Lorg/luaj/vm2/LuaFunction;

.field pc:I

.field previous:Lorg/luaj/vm2/lib/DebugLib$CallFrame;

.field stack:[Lorg/luaj/vm2/LuaValue;

.field top:I

.field v:Lorg/luaj/vm2/Varargs;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$1500(Lorg/luaj/vm2/lib/DebugLib$CallFrame;)I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v0, v0, Lorg/luaj/vm2/Prototype;->linedefined:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method currentline()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v1

    iget-object v1, v1, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v1, v1, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    if-eqz v1, :cond_0

    iget v2, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->pc:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->pc:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->pc:I

    aget v0, v1, v0

    goto :goto_0
.end method

.method getLocal(I)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->getlocalname(I)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->stack:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaValue;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method getlocalname(I)Lorg/luaj/vm2/LuaString;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->pc:I

    invoke-virtual {v0, p1, v1}, Lorg/luaj/vm2/Prototype;->getlocalname(II)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_0
.end method

.method instr(ILorg/luaj/vm2/Varargs;I)V
    .locals 2

    iput p1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->pc:I

    iput-object p2, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->v:Lorg/luaj/vm2/Varargs;

    iput p3, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->top:I

    sget-boolean v0, Lorg/luaj/vm2/lib/DebugLib;->TRACE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->stack:[Lorg/luaj/vm2/LuaValue;

    invoke-static {v0, p1, v1, p3, p2}, Lorg/luaj/vm2/Print;->printState(Lorg/luaj/vm2/LuaClosure;I[Lorg/luaj/vm2/LuaValue;ILorg/luaj/vm2/Varargs;)V

    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->v:Lorg/luaj/vm2/Varargs;

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->stack:[Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method set(Lorg/luaj/vm2/LuaClosure;Lorg/luaj/vm2/Varargs;[Lorg/luaj/vm2/LuaValue;)V
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    iput-object p2, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->v:Lorg/luaj/vm2/Varargs;

    iput-object p3, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->stack:[Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method set(Lorg/luaj/vm2/LuaFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    return-void
.end method

.method setLocal(ILorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->getlocalname(I)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->stack:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v2, p1, -0x1

    aput-object p2, v1, v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method public shortsource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    invoke-virtual {v0}, Lorg/luaj/vm2/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "[Java]"

    goto :goto_0
.end method

.method sourceline()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->tojstring()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v1

    iget-object v1, v1, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    invoke-virtual {v1}, Lorg/luaj/vm2/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
