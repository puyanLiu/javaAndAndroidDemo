.class public Lorg/luaj/vm2/lib/MathLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# static fields
.field public static MATHLIB:Lorg/luaj/vm2/lib/MathLib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/luaj/vm2/lib/MathLib;->MATHLIB:Lorg/luaj/vm2/lib/MathLib;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    sput-object p0, Lorg/luaj/vm2/lib/MathLib;->MATHLIB:Lorg/luaj/vm2/lib/MathLib;

    return-void
.end method

.method public static dpow(DD)Lorg/luaj/vm2/LuaValue;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/lib/MathLib;->MATHLIB:Lorg/luaj/vm2/lib/MathLib;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/MathLib;->MATHLIB:Lorg/luaj/vm2/lib/MathLib;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/luaj/vm2/lib/MathLib;->dpow_lib(DD)D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaDouble;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/luaj/vm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static dpow_d(DD)D
    .locals 2

    sget-object v0, Lorg/luaj/vm2/lib/MathLib;->MATHLIB:Lorg/luaj/vm2/lib/MathLib;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/MathLib;->MATHLIB:Lorg/luaj/vm2/lib/MathLib;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/luaj/vm2/lib/MathLib;->dpow_lib(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/luaj/vm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method protected static dpow_default(DD)D
    .locals 10

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    cmpg-double v0, p2, v6

    if-gez v0, :cond_1

    neg-double v3, p2

    invoke-static {p0, p1, v3, v4}, Lorg/luaj/vm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide v3

    div-double v0, v1, v3

    :cond_0
    return-wide v0

    :cond_1
    double-to-int v0, p2

    move v4, v0

    move-wide v8, v1

    move-wide v0, v8

    move-wide v2, p0

    :goto_0
    if-lez v4, :cond_3

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2

    mul-double/2addr v0, v2

    :cond_2
    shr-int/lit8 v4, v4, 0x1

    mul-double/2addr v2, v2

    goto :goto_0

    :cond_3
    int-to-double v2, v4

    sub-double v2, p2, v2

    cmpl-double v4, v2, v6

    if-lez v4, :cond_0

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    :goto_1
    const v3, 0xffff

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_4

    mul-double/2addr v0, p0

    :cond_4
    shl-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;-><init>(II)V

    const-string/jumbo v1, "abs"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$abs;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$abs;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "ceil"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$ceil;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$ceil;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "cos"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$cos;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$cos;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "deg"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$deg;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$deg;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "exp"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$exp;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/MathLib$exp;-><init>(Lorg/luaj/vm2/lib/MathLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "floor"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$floor;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$floor;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "fmod"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$fmod;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$fmod;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "frexp"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$frexp;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$frexp;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "huge"

    sget-object v2, Lorg/luaj/vm2/LuaDouble;->POSINF:Lorg/luaj/vm2/LuaDouble;

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "ldexp"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$ldexp;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$ldexp;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "max"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$max;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$max;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "min"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$min;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$min;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "modf"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$modf;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$modf;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "pi"

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;D)V

    const-string/jumbo v1, "pow"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$pow;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$pow;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "random"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$random;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$random;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "randomseed"

    new-instance v3, Lorg/luaj/vm2/lib/MathLib$randomseed;

    invoke-direct {v3, v2}, Lorg/luaj/vm2/lib/MathLib$randomseed;-><init>(Lorg/luaj/vm2/lib/MathLib$random;)V

    invoke-virtual {v0, v1, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "rad"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$rad;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$rad;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "sin"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$sin;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$sin;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "sqrt"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$sqrt;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$sqrt;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "tan"

    new-instance v2, Lorg/luaj/vm2/lib/MathLib$tan;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/MathLib$tan;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "math"

    invoke-virtual {p2, v1, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "loaded"

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "math"

    invoke-virtual {v1, v2, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method public dpow_lib(DD)D
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lorg/luaj/vm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide v0

    return-wide v0
.end method
