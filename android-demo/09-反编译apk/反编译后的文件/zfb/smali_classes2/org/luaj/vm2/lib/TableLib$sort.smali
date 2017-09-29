.class Lorg/luaj/vm2/lib/TableLib$sort;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v1

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/TableLib$sort;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LuaTable;->sort(Lorg/luaj/vm2/LuaValue;)V

    sget-object v0, Lorg/luaj/vm2/lib/TableLib$sort;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkfunction()Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    goto :goto_0
.end method
