.class public Lorg/luaj/vm2/lib/TableLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const-string/jumbo v1, "concat"

    new-instance v2, Lorg/luaj/vm2/lib/TableLib$concat;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/TableLib$concat;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "insert"

    new-instance v2, Lorg/luaj/vm2/lib/TableLib$insert;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/TableLib$insert;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "pack"

    new-instance v2, Lorg/luaj/vm2/lib/TableLib$pack;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/TableLib$pack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "remove"

    new-instance v2, Lorg/luaj/vm2/lib/TableLib$remove;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/TableLib$remove;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "sort"

    new-instance v2, Lorg/luaj/vm2/lib/TableLib$sort;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/TableLib$sort;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "unpack"

    new-instance v2, Lorg/luaj/vm2/lib/TableLib$unpack;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/TableLib$unpack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "table"

    invoke-virtual {p2, v1, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "loaded"

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "table"

    invoke-virtual {v1, v2, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    sget-object v0, Lorg/luaj/vm2/lib/TableLib;->NIL:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
