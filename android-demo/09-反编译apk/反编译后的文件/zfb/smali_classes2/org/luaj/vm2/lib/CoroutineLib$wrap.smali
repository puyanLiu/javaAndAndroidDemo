.class final Lorg/luaj/vm2/lib/CoroutineLib$wrap;
.super Lorg/luaj/vm2/lib/LibFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/CoroutineLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/CoroutineLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/CoroutineLib$wrap;->a:Lorg/luaj/vm2/lib/CoroutineLib;

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkfunction()Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    new-instance v1, Lorg/luaj/vm2/LuaThread;

    iget-object v2, p0, Lorg/luaj/vm2/lib/CoroutineLib$wrap;->a:Lorg/luaj/vm2/lib/CoroutineLib;

    iget-object v2, v2, Lorg/luaj/vm2/lib/CoroutineLib;->globals:Lorg/luaj/vm2/Globals;

    invoke-direct {v1, v2, v0}, Lorg/luaj/vm2/LuaThread;-><init>(Lorg/luaj/vm2/Globals;Lorg/luaj/vm2/LuaValue;)V

    new-instance v0, Lorg/luaj/vm2/lib/CoroutineLib$wrapper;

    iget-object v2, p0, Lorg/luaj/vm2/lib/CoroutineLib$wrap;->a:Lorg/luaj/vm2/lib/CoroutineLib;

    invoke-direct {v0, v2, v1}, Lorg/luaj/vm2/lib/CoroutineLib$wrapper;-><init>(Lorg/luaj/vm2/lib/CoroutineLib;Lorg/luaj/vm2/LuaThread;)V

    return-object v0
.end method
