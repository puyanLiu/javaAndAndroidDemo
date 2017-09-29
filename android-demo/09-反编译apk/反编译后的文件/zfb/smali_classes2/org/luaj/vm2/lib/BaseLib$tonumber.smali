.class final Lorg/luaj/vm2/lib/BaseLib$tonumber;
.super Lorg/luaj/vm2/lib/LibFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->tonumber()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->tonumber()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    if-lt v0, v2, :cond_1

    const/16 v1, 0x24

    if-le v0, v1, :cond_2

    :cond_1
    const-string/jumbo v1, "base out of range"

    invoke-static {v2, v1}, Lorg/luaj/vm2/lib/BaseLib$tonumber;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_2
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LuaString;->tonumber(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method
