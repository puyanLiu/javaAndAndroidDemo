.class public Lmtopsdk/security/ISign$SignCtx;
.super Ljava/lang/Object;
.source "ISign.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lmtopsdk/security/ISign$SignCtx;->a:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/security/ISign$SignCtx;->b:Ljava/lang/String;

    .line 23
    return-void
.end method
