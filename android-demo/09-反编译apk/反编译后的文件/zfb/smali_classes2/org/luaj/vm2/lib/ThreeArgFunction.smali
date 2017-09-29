.class public abstract Lorg/luaj/vm2/lib/ThreeArgFunction;
.super Lorg/luaj/vm2/lib/LibFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lorg/luaj/vm2/LuaValue;
    .locals 3

    sget-object v0, Lorg/luaj/vm2/lib/ThreeArgFunction;->NIL:Lorg/luaj/vm2/LuaValue;

    sget-object v1, Lorg/luaj/vm2/lib/ThreeArgFunction;->NIL:Lorg/luaj/vm2/LuaValue;

    sget-object v2, Lorg/luaj/vm2/lib/ThreeArgFunction;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v0, v1, v2}, Lorg/luaj/vm2/lib/ThreeArgFunction;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/lib/ThreeArgFunction;->NIL:Lorg/luaj/vm2/LuaValue;

    sget-object v1, Lorg/luaj/vm2/lib/ThreeArgFunction;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, p1, v0, v1}, Lorg/luaj/vm2/lib/ThreeArgFunction;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/ThreeArgFunction;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, p1, p2, v0}, Lorg/luaj/vm2/lib/ThreeArgFunction;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public abstract call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
.end method

.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/luaj/vm2/lib/ThreeArgFunction;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method
