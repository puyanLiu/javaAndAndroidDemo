.class public Lorg/luaj/vm2/ast/Exp$BinopExp;
.super Lorg/luaj/vm2/ast/Exp;


# instance fields
.field public final lhs:Lorg/luaj/vm2/ast/Exp;

.field public final op:I

.field public final rhs:Lorg/luaj/vm2/ast/Exp;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Exp;ILorg/luaj/vm2/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Exp$BinopExp;->lhs:Lorg/luaj/vm2/ast/Exp;

    iput p2, p0, Lorg/luaj/vm2/ast/Exp$BinopExp;->op:I

    iput-object p3, p0, Lorg/luaj/vm2/ast/Exp$BinopExp;->rhs:Lorg/luaj/vm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$BinopExp;)V

    return-void
.end method
