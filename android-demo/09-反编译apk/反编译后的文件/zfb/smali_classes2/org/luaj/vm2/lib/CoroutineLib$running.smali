.class final Lorg/luaj/vm2/lib/CoroutineLib$running;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/CoroutineLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/CoroutineLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/CoroutineLib$running;->a:Lorg/luaj/vm2/lib/CoroutineLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/CoroutineLib$running;->a:Lorg/luaj/vm2/lib/CoroutineLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/CoroutineLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaThread;->isMainThread()Z

    move-result v1

    invoke-static {v1}, Lorg/luaj/vm2/lib/CoroutineLib$running;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/CoroutineLib$running;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method
