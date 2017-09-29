.class Lorg/luaj/vm2/lib/MathLib$frexp;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkdouble(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/MathLib$frexp;->ZERO:Lorg/luaj/vm2/LuaNumber;

    sget-object v1, Lorg/luaj/vm2/lib/MathLib$frexp;->ZERO:Lorg/luaj/vm2/LuaNumber;

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/MathLib$frexp;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide v0, 0xfffffffffffffL

    and-long/2addr v0, v2

    const-wide/high16 v4, 0x10000000000000L

    add-long/2addr v0, v4

    long-to-double v4, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ca0000000000000L

    :goto_1
    mul-double/2addr v0, v4

    const/16 v4, 0x34

    shr-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x7ff

    add-int/lit16 v2, v2, -0x3fe

    int-to-double v2, v2

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/MathLib$frexp;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    invoke-static {v2, v3}, Lorg/luaj/vm2/lib/MathLib$frexp;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/MathLib$frexp;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4360000000000000L    # -1.1102230246251565E-16

    goto :goto_1
.end method
