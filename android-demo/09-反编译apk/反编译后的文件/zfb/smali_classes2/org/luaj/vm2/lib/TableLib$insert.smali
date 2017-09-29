.class Lorg/luaj/vm2/lib/TableLib$insert;
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

    const/4 v0, 0x2

    const-string/jumbo v1, "value expected"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/TableLib$insert;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p2}, Lorg/luaj/vm2/LuaTable;->insert(ILorg/luaj/vm2/LuaValue;)V

    sget-object v0, Lorg/luaj/vm2/lib/TableLib$insert;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lorg/luaj/vm2/LuaTable;->insert(ILorg/luaj/vm2/LuaValue;)V

    sget-object v0, Lorg/luaj/vm2/lib/TableLib$insert;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
