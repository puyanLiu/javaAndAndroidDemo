.class final Lorg/luaj/vm2/lib/MathLib$ldexp;
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

    double-to-long v0, p3

    const-wide/16 v2, 0x3ff

    add-long/2addr v0, v2

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    mul-double/2addr v0, p1

    return-wide v0
.end method
