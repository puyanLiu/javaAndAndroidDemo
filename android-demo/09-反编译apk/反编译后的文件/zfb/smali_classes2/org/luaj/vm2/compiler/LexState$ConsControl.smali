.class Lorg/luaj/vm2/compiler/LexState$ConsControl;
.super Ljava/lang/Object;


# instance fields
.field na:I

.field nh:I

.field t:Lorg/luaj/vm2/compiler/LexState$expdesc;

.field tostore:I

.field v:Lorg/luaj/vm2/compiler/LexState$expdesc;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/luaj/vm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lorg/luaj/vm2/compiler/LexState$expdesc;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/compiler/LexState$ConsControl;->v:Lorg/luaj/vm2/compiler/LexState$expdesc;

    return-void
.end method
