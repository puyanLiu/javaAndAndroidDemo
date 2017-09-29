.class final Lorg/luaj/vm2/lib/jse/JseMathLib$cosh;
.super Lorg/luaj/vm2/lib/MathLib$UnaryOp;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final call(D)D
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v0

    return-wide v0
.end method
