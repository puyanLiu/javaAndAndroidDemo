.class public Lorg/luaj/vm2/compiler/IntPtr;
.super Ljava/lang/Object;


# instance fields
.field i:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/luaj/vm2/compiler/IntPtr;->i:I

    return-void
.end method
