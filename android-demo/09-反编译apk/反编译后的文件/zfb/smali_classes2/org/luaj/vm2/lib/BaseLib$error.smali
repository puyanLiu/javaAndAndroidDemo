.class final Lorg/luaj/vm2/lib/BaseLib$error;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    new-instance v1, Lorg/luaj/vm2/LuaError;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/luaj/vm2/LuaValue;->optint(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
