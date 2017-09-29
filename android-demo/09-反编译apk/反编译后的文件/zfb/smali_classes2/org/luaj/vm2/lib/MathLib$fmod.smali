.class final Lorg/luaj/vm2/lib/MathLib$fmod;
.super Lorg/luaj/vm2/lib/MathLib$BinaryOp;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/MathLib$BinaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final call(DD)D
    .locals 4

    div-double v0, p1, p3

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    mul-double/2addr v0, p3

    sub-double v0, p1, v0

    return-wide v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method
