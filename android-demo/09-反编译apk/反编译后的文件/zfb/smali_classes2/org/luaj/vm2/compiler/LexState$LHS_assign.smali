.class Lorg/luaj/vm2/compiler/LexState$LHS_assign;
.super Ljava/lang/Object;


# instance fields
.field prev:Lorg/luaj/vm2/compiler/LexState$LHS_assign;

.field v:Lorg/luaj/vm2/compiler/LexState$expdesc;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/luaj/vm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lorg/luaj/vm2/compiler/LexState$expdesc;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/compiler/LexState$LHS_assign;->v:Lorg/luaj/vm2/compiler/LexState$expdesc;

    return-void
.end method
