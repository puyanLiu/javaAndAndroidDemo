.class final Lorg/luaj/vm2/lib/BaseLib$pcall;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/BaseLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/BaseLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkvalue(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1, p0}, Lorg/luaj/vm2/lib/DebugLib;->onCall(Lorg/luaj/vm2/LuaFunction;)V

    :cond_0
    :try_start_0
    sget-object v1, Lorg/luaj/vm2/lib/BaseLib$pcall;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/BaseLib$pcall;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/luaj/vm2/LuaError;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/luaj/vm2/lib/BaseLib$pcall;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib$pcall;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/BaseLib$pcall;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v0, Lorg/luaj/vm2/lib/BaseLib$pcall;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/luaj/vm2/lib/BaseLib$pcall;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    if-eqz v1, :cond_3

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib$pcall;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/luaj/vm2/lib/BaseLib$pcall;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$pcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_4
    throw v0
.end method
