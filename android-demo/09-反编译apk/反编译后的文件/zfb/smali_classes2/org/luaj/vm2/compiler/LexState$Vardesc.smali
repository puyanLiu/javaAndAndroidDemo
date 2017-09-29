.class Lorg/luaj/vm2/compiler/LexState$Vardesc;
.super Ljava/lang/Object;


# instance fields
.field final idx:S


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, p1

    iput-short v0, p0, Lorg/luaj/vm2/compiler/LexState$Vardesc;->idx:S

    return-void
.end method
