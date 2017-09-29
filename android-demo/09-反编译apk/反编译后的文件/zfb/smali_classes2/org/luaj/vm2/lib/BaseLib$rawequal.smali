.class final Lorg/luaj/vm2/lib/BaseLib$rawequal;
.super Lorg/luaj/vm2/lib/LibFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lorg/luaj/vm2/LuaValue;
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib$rawequal;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    const/4 v0, 0x2

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib$rawequal;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1, p2}, Lorg/luaj/vm2/LuaValue;->raweq(Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib$rawequal;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method
