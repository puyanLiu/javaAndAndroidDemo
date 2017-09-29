.class final Lorg/luaj/vm2/lib/BaseLib$setmetatable;
.super Lorg/luaj/vm2/lib/LibFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    const/4 v0, 0x2

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib$setmetatable;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->getmetatable()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/luaj/vm2/lib/BaseLib$setmetatable;->METATABLE:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaValue;->rawget(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cannot change a protected metatable"

    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib$setmetatable;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->setmetatable(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    goto :goto_0
.end method
