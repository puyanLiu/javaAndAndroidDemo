.class public Lorg/luaj/vm2/lib/PackageLib$loadlib;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public loadlib(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    sget-object v0, Lorg/luaj/vm2/lib/PackageLib$loadlib;->NIL:Lorg/luaj/vm2/LuaValue;

    const-string/jumbo v1, "dynamic libraries not enabled"

    invoke-static {v1}, Lorg/luaj/vm2/lib/PackageLib$loadlib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    const-string/jumbo v2, "absent"

    invoke-static {v2}, Lorg/luaj/vm2/lib/PackageLib$loadlib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/lib/PackageLib$loadlib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method
