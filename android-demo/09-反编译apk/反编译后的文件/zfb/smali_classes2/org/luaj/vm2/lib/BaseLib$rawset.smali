.class final Lorg/luaj/vm2/lib/BaseLib$rawset;
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

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib$rawset;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    const/4 v0, 0x3

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib$rawset;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checknotnil()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/luaj/vm2/LuaTable;->rawset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method
