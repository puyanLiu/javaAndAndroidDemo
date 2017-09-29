.class public abstract Lorg/luaj/vm2/lib/MathLib$UnaryOp;
.super Lorg/luaj/vm2/lib/OneArgFunction;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract call(D)D
.end method

.method public call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/lib/MathLib$UnaryOp;->call(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/MathLib$UnaryOp;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method
