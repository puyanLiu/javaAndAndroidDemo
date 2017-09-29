.class final Lorg/luaj/vm2/lib/DebugLib$getupvalue;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkfunction(I)Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    instance-of v2, v0, Lorg/luaj/vm2/LuaClosure;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/luaj/vm2/LuaClosure;

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/DebugLib;->findupvalue(Lorg/luaj/vm2/LuaClosure;I)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/luaj/vm2/UpValue;->getValue()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/luaj/vm2/lib/DebugLib$getupvalue;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$getupvalue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method
