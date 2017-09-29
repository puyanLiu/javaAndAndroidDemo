.class public abstract Lorg/luaj/vm2/lib/MathLib$BinaryOp;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract call(DD)D
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkdouble()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/luaj/vm2/lib/MathLib$BinaryOp;->call(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/MathLib$BinaryOp;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method
