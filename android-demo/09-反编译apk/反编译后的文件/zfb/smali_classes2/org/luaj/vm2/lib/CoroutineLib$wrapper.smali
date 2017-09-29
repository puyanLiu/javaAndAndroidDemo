.class final Lorg/luaj/vm2/lib/CoroutineLib$wrapper;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/CoroutineLib;

.field final luathread:Lorg/luaj/vm2/LuaThread;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/CoroutineLib;Lorg/luaj/vm2/LuaThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/CoroutineLib$wrapper;->a:Lorg/luaj/vm2/lib/CoroutineLib;

    iput-object p2, p0, Lorg/luaj/vm2/lib/CoroutineLib$wrapper;->luathread:Lorg/luaj/vm2/LuaThread;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lorg/luaj/vm2/lib/CoroutineLib$wrapper;->luathread:Lorg/luaj/vm2/LuaThread;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaThread;->resume(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/CoroutineLib$wrapper;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method
