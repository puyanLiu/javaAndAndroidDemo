.class final Lorg/luaj/vm2/lib/CoroutineLib$create;
.super Lorg/luaj/vm2/lib/LibFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/CoroutineLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/CoroutineLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/CoroutineLib$create;->a:Lorg/luaj/vm2/lib/CoroutineLib;

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    new-instance v0, Lorg/luaj/vm2/LuaThread;

    iget-object v1, p0, Lorg/luaj/vm2/lib/CoroutineLib$create;->a:Lorg/luaj/vm2/lib/CoroutineLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/CoroutineLib;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkfunction()Lorg/luaj/vm2/LuaFunction;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/LuaThread;-><init>(Lorg/luaj/vm2/Globals;Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method
