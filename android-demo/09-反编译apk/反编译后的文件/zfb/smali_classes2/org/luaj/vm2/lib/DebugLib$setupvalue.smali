.class final Lorg/luaj/vm2/lib/DebugLib$setupvalue;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$setupvalue;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkfunction(I)Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    instance-of v1, v0, Lorg/luaj/vm2/LuaClosure;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/luaj/vm2/LuaClosure;

    invoke-static {v0, v2}, Lorg/luaj/vm2/lib/DebugLib;->findupvalue(Lorg/luaj/vm2/LuaClosure;I)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->upValues:[Lorg/luaj/vm2/UpValue;

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lorg/luaj/vm2/UpValue;->setValue(Lorg/luaj/vm2/LuaValue;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$setupvalue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method
