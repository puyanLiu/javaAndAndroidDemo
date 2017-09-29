.class final Lorg/luaj/vm2/lib/BaseLib$ipairs;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field inext:Lorg/luaj/vm2/lib/BaseLib$inext;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    new-instance v0, Lorg/luaj/vm2/lib/BaseLib$inext;

    invoke-direct {v0}, Lorg/luaj/vm2/lib/BaseLib$inext;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$ipairs;->inext:Lorg/luaj/vm2/lib/BaseLib$inext;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$ipairs;->inext:Lorg/luaj/vm2/lib/BaseLib$inext;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checktable(I)Lorg/luaj/vm2/LuaTable;

    move-result-object v1

    sget-object v2, Lorg/luaj/vm2/lib/BaseLib$ipairs;->ZERO:Lorg/luaj/vm2/LuaNumber;

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/lib/BaseLib$ipairs;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method
