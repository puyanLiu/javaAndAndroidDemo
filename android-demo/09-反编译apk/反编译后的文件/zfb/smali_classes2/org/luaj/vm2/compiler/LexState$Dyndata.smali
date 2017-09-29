.class Lorg/luaj/vm2/compiler/LexState$Dyndata;
.super Ljava/lang/Object;


# instance fields
.field actvar:[Lorg/luaj/vm2/compiler/LexState$Vardesc;

.field gt:[Lorg/luaj/vm2/compiler/LexState$Labeldesc;

.field label:[Lorg/luaj/vm2/compiler/LexState$Labeldesc;

.field n_actvar:I

.field n_gt:I

.field n_label:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_actvar:I

    iput v0, p0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_gt:I

    iput v0, p0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_label:I

    return-void
.end method
