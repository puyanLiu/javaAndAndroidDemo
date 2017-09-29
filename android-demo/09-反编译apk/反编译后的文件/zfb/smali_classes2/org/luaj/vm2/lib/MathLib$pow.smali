.class final Lorg/luaj/vm2/lib/MathLib$pow;
.super Lorg/luaj/vm2/lib/MathLib$BinaryOp;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/MathLib$BinaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final call(DD)D
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lorg/luaj/vm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide v0

    return-wide v0
.end method
