.class Lorg/luaj/vm2/lib/TableLib$concat;
.super Lorg/luaj/vm2/lib/TableLib$TableLibFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TableLib$TableLibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    sget-object v1, Lorg/luaj/vm2/lib/TableLib$concat;->EMPTYSTRING:Lorg/luaj/vm2/LuaString;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->concat(Lorg/luaj/vm2/LuaString;II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->concat(Lorg/luaj/vm2/LuaString;II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {p3}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->concat(Lorg/luaj/vm2/LuaString;II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {p3}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v2

    invoke-virtual {p4}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->concat(Lorg/luaj/vm2/LuaString;II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method
