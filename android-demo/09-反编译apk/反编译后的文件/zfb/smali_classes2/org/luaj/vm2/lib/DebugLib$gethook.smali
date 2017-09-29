.class final Lorg/luaj/vm2/lib/DebugLib$gethook;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$gethook;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkthread(I)Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lorg/luaj/vm2/LuaThread;->hookfunc:Lorg/luaj/vm2/LuaValue;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/luaj/vm2/LuaThread;->hookfunc:Lorg/luaj/vm2/LuaValue;

    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v2, v0, Lorg/luaj/vm2/LuaThread;->hookcall:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "c"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v2, v0, Lorg/luaj/vm2/LuaThread;->hookline:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "l"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v2, v0, Lorg/luaj/vm2/LuaThread;->hookrtrn:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "r"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/luaj/vm2/lib/DebugLib$gethook;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    iget v0, v0, Lorg/luaj/vm2/LuaThread;->hookcount:I

    invoke-static {v0}, Lorg/luaj/vm2/lib/DebugLib$gethook;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/luaj/vm2/lib/DebugLib$gethook;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$gethook;->a:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/luaj/vm2/lib/DebugLib$gethook;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v2, ""

    goto :goto_3

    :cond_4
    const-string/jumbo v2, ""

    goto :goto_4
.end method
