.class final Lorg/luaj/vm2/lib/DebugLib$getinfo;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$getinfo;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 8

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->isthread(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkthread(I)Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    const-string/jumbo v5, "flnStu"

    invoke-virtual {p1, v3, v5}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lorg/luaj/vm2/lib/DebugLib$getinfo;->a:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3, v0}, Lorg/luaj/vm2/lib/DebugLib;->callstack(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v6

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isnumber()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->getCallFrame(I)Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$getinfo;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$getinfo;->a:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    move-object v3, v0

    :goto_2
    move-object v0, v1

    check-cast v0, Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v6, v5, v0, v3}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->auxgetinfo(Ljava/lang/String;Lorg/luaj/vm2/LuaFunction;Lorg/luaj/vm2/lib/DebugLib$CallFrame;)Lorg/luaj/vm2/lib/DebugLib$DebugInfo;

    move-result-object v4

    new-instance v3, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v3}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const/16 v0, 0x53

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$000()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$100()Lorg/luaj/vm2/LuaString;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$200()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget-object v7, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->source:Ljava/lang/String;

    invoke-static {v7}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$300()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget-object v7, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->short_src:Ljava/lang/String;

    invoke-static {v7}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$400()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget v7, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->linedefined:I

    invoke-static {v7}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$500()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget v7, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->lastlinedefined:I

    invoke-static {v7}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_2
    const/16 v0, 0x6c

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$600()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget v7, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->currentline:I

    invoke-static {v7}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_3
    const/16 v0, 0x75

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$700()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget-short v7, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->nups:S

    invoke-static {v7}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$800()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget-short v7, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->nparams:S

    invoke-static {v7}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$900()Lorg/luaj/vm2/LuaString;

    move-result-object v7

    iget-boolean v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->isvararg:Z

    if-eqz v0, :cond_a

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$getinfo;->ONE:Lorg/luaj/vm2/LuaNumber;

    :goto_3
    invoke-virtual {v3, v7, v0}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_4
    const/16 v0, 0x6e

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$1000()Lorg/luaj/vm2/LuaString;

    move-result-object v7

    iget-object v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$1100()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget-object v4, v4, Lorg/luaj/vm2/lib/DebugLib$DebugInfo;->namewhat:Ljava/lang/String;

    invoke-static {v4}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_5
    const/16 v0, 0x74

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$1200()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sget-object v4, Lorg/luaj/vm2/lib/DebugLib$getinfo;->ZERO:Lorg/luaj/vm2/LuaNumber;

    invoke-virtual {v3, v0, v4}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_6
    const/16 v0, 0x4c

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_c

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$1300()Lorg/luaj/vm2/LuaString;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :goto_5
    invoke-virtual {v6, v2}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->getCallFrame(I)Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v7, v4, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->f:Lorg/luaj/vm2/LuaFunction;

    if-ne v7, v1, :cond_7

    const/4 v7, -0x1

    invoke-virtual {v4}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->currentline()I

    move-result v4

    invoke-static {v4}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lorg/luaj/vm2/LuaTable;->insert(ILorg/luaj/vm2/LuaValue;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isfunction()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6, v1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->findCallFrame(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v0, v4, -0x2

    const-string/jumbo v1, "function or level"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/DebugLib$getinfo;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$getinfo;->ZERO:Lorg/luaj/vm2/LuaNumber;

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v0, "?"

    goto :goto_4

    :cond_c
    const/16 v0, 0x66

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_d

    if-eqz v1, :cond_d

    invoke-static {}, Lorg/luaj/vm2/lib/DebugLib;->access$1400()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    :cond_d
    move-object v0, v3

    goto/16 :goto_1
.end method
