.class Lorg/luaj/vm2/lib/TableLib$pack;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/luaj/vm2/lib/TableLib$pack;->tableOf(Lorg/luaj/vm2/Varargs;I)Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    const-string/jumbo v1, "n"

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;I)V

    return-object v0
.end method
