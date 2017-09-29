.class public Lorg/luaj/vm2/ast/Exp$VarargsExp;
.super Lorg/luaj/vm2/ast/Exp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$VarargsExp;)V

    return-void
.end method

.method public isvarargexp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
