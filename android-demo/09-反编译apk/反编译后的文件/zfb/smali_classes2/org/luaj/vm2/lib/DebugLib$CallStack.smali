.class public Lorg/luaj/vm2/lib/DebugLib$CallStack;
.super Ljava/lang/Object;


# static fields
.field static final EMPTY:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;


# instance fields
.field calls:I

.field frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    sput-object v0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->EMPTY:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->EMPTY:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iput-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    return-void
.end method

.method private a()Lorg/luaj/vm2/lib/DebugLib$CallFrame;
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget-object v3, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    array-length v3, v3

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    array-length v0, v0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v3, Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    invoke-direct {v3}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v3, v2, v0

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v2, v4

    iput-object v4, v3, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->previous:Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method auxgetinfo(Ljava/lang/String;Lorg/luaj/vm2/LuaFunction;Lorg/luaj/vm2/lib/DebugLib$CallFrame;)Lorg/luaj/vm2/lib/DebugLib$DebugInfo;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;

    invoke-direct {v4}, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v4, p2}, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->funcinfo(Lorg/luaj/vm2/LuaFunction;)V

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_1

    iget-object v0, p3, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v0

    :goto_2
    iput v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->currentline:I

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :sswitch_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    iget-object v6, v0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v6, v6

    int-to-short v6, v6

    iput-short v6, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->nups:S

    iget v6, v0, Lorg/luaj/vm2/Prototype;->numparams:I

    int-to-short v6, v6

    iput-short v6, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->nparams:S

    iget v0, v0, Lorg/luaj/vm2/Prototype;->is_vararg:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    iput-boolean v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->isvararg:Z

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    iput-short v2, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->nups:S

    iput-boolean v1, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->isvararg:Z

    iput-short v2, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->nparams:S

    goto :goto_1

    :sswitch_3
    iput-boolean v2, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->istailcall:Z

    goto :goto_1

    :sswitch_4
    if-eqz p3, :cond_4

    iget-object v0, p3, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->previous:Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->previous:Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget-object v0, v0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->previous:Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib;->getfuncname(Lorg/luaj/vm2/lib/DebugLib$CallFrame;)Lorg/luaj/vm2/lib/DebugLib$NameWhat;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v6, v0, Lorg/luaj/vm2/lib/DebugLib$NameWhat;->name:Ljava/lang/String;

    iput-object v6, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Lorg/luaj/vm2/lib/DebugLib$NameWhat;->namewhat:Ljava/lang/String;

    iput-object v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->namewhat:Ljava/lang/String;

    :cond_4
    iget-object v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->namewhat:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->namewhat:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_5
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x53 -> :sswitch_0
        0x6c -> :sswitch_1
        0x6e -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
    .end sparse-switch
.end method

.method currentline()I
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method findCallFrame(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/DebugLib$CallFrame;
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget v2, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getCallFrame(I)Lorg/luaj/vm2/lib/DebugLib$CallFrame;
    .locals 2

    if-lez p1, :cond_0

    iget v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method final onCall(Lorg/luaj/vm2/LuaClosure;Lorg/luaj/vm2/Varargs;[Lorg/luaj/vm2/LuaValue;)V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->a()Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->set(Lorg/luaj/vm2/LuaClosure;Lorg/luaj/vm2/Varargs;[Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method final onCall(Lorg/luaj/vm2/LuaFunction;)V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->a()Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->set(Lorg/luaj/vm2/LuaFunction;)V

    return-void
.end method

.method final onInstruction(ILorg/luaj/vm2/Varargs;I)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->instr(ILorg/luaj/vm2/Varargs;I)V

    return-void
.end method

.method final onReturn()V
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->frame:[Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    iget v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/luaj/vm2/lib/DebugLib$CallStack;->calls:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->reset()V

    :cond_0
    return-void
.end method

.method traceback(I)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "stack traceback:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->getCallFrame(I)Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v3, "\n\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->shortsource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "n"

    iget-object v4, v2, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {p0, v3, v4, v2}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->auxgetinfo(Ljava/lang/String;Lorg/luaj/vm2/LuaFunction;Lorg/luaj/vm2/lib/DebugLib$CallFrame;)Lorg/luaj/vm2/lib/DebugLib$DebugInfo;

    move-result-object v3

    invoke-static {v2}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->access$1500(Lorg/luaj/vm2/lib/DebugLib$CallFrame;)I

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v2, "main chunk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string/jumbo v2, "function \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v3, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "function <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->shortsource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->access$1500(Lorg/luaj/vm2/lib/DebugLib$CallFrame;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v0

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "\n\t[Java]: in ?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
