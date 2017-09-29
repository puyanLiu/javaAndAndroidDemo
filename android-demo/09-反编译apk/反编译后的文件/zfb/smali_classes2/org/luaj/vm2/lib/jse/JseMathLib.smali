.class public Lorg/luaj/vm2/lib/jse/JseMathLib;
.super Lorg/luaj/vm2/lib/MathLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/MathLib;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/luaj/vm2/lib/MathLib;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    const-string/jumbo v0, "math"

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v1, "acos"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$acos;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$acos;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "asin"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$asin;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$asin;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "atan"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$atan;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$atan;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "atan2"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$atan2;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$atan2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "cosh"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$cosh;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$cosh;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "exp"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$exp;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$exp;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "log"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$log;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$log;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "pow"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$pow;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$pow;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "sinh"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$sinh;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$sinh;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "tanh"

    new-instance v2, Lorg/luaj/vm2/lib/jse/JseMathLib$tanh;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JseMathLib$tanh;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method public dpow_lib(DD)D
    .locals 2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method
