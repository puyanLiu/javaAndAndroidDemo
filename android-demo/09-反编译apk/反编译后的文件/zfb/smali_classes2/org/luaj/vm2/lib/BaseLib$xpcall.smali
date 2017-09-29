.class final Lorg/luaj/vm2/lib/BaseLib$xpcall;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/BaseLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/BaseLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v2, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    iget-object v3, v2, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkvalue(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iput-object v0, v2, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    :try_start_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v0, p0}, Lorg/luaj/vm2/lib/DebugLib;->onCall(Lorg/luaj/vm2/LuaFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    sget-object v0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib$xpcall;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_1
    .catch Lorg/luaj/vm2/LuaError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    iput-object v3, v2, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/luaj/vm2/LuaError;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/luaj/vm2/lib/BaseLib$xpcall;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib$xpcall;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/BaseLib$xpcall;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    iput-object v3, v2, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_3
    :try_start_5
    sget-object v0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lorg/luaj/vm2/lib/BaseLib$xpcall;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    if-eqz v1, :cond_5

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib$xpcall;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/luaj/vm2/lib/BaseLib$xpcall;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    iput-object v3, v2, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/luaj/vm2/lib/BaseLib$xpcall;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->debuglib:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1}, Lorg/luaj/vm2/lib/DebugLib;->onReturn()V

    :cond_6
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    iput-object v3, v2, Lorg/luaj/vm2/LuaThread;->errorfunc:Lorg/luaj/vm2/LuaValue;

    throw v0
.end method
