.class final Lorg/luaj/vm2/lib/MathLib$exp;
.super Lorg/luaj/vm2/lib/MathLib$UnaryOp;


# instance fields
.field final mathlib:Lorg/luaj/vm2/lib/MathLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/MathLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/MathLib$UnaryOp;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/MathLib$exp;->mathlib:Lorg/luaj/vm2/lib/MathLib;

    return-void
.end method


# virtual methods
.method protected final call(D)D
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/MathLib$exp;->mathlib:Lorg/luaj/vm2/lib/MathLib;

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/luaj/vm2/lib/MathLib;->dpow_lib(DD)D

    move-result-wide v0

    return-wide v0
.end method
