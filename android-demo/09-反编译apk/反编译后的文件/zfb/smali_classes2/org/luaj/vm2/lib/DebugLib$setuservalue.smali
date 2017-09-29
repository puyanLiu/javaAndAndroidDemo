.class final Lorg/luaj/vm2/lib/DebugLib$setuservalue;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$setuservalue;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkuserdata(I)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkvalue(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaUserdata;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lorg/luaj/vm2/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->getmetatable()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    iput-object v1, v0, Lorg/luaj/vm2/LuaUserdata;->m_metatable:Lorg/luaj/vm2/LuaValue;

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$setuservalue;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
