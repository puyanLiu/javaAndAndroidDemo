.class Lorg/luaj/vm2/lib/TableLib$remove;
.super Lorg/luaj/vm2/lib/TableLib$TableLibFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TableLib$TableLibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaTable;->remove(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaTable;->remove(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method
