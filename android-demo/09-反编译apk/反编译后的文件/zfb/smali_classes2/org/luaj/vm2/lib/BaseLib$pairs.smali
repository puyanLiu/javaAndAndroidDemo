.class final Lorg/luaj/vm2/lib/BaseLib$pairs;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field final next:Lorg/luaj/vm2/lib/BaseLib$next;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/BaseLib$next;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/BaseLib$pairs;->next:Lorg/luaj/vm2/lib/BaseLib$next;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$pairs;->next:Lorg/luaj/vm2/lib/BaseLib$next;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checktable(I)Lorg/luaj/vm2/LuaTable;

    move-result-object v1

    sget-object v2, Lorg/luaj/vm2/lib/BaseLib$pairs;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/lib/BaseLib$pairs;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method
