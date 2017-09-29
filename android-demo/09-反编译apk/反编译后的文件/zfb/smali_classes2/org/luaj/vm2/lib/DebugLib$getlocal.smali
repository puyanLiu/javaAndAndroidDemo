.class final Lorg/luaj/vm2/lib/DebugLib$getlocal;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$getlocal;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->isthread(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkthread(I)Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    iget-object v3, p0, Lorg/luaj/vm2/lib/DebugLib$getlocal;->a:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v3, v0}, Lorg/luaj/vm2/lib/DebugLib;->callstack(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->getCallFrame(I)Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->getLocal(I)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$getlocal;->a:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    move v1, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$getlocal;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_1
.end method
