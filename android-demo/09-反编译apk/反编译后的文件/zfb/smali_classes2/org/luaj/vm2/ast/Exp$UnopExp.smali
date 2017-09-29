.class public Lorg/luaj/vm2/ast/Exp$UnopExp;
.super Lorg/luaj/vm2/ast/Exp;


# instance fields
.field public final op:I

.field public final rhs:Lorg/luaj/vm2/ast/Exp;


# direct methods
.method public constructor <init>(ILorg/luaj/vm2/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp;-><init>()V

    iput p1, p0, Lorg/luaj/vm2/ast/Exp$UnopExp;->op:I

    iput-object p2, p0, Lorg/luaj/vm2/ast/Exp$UnopExp;->rhs:Lorg/luaj/vm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$UnopExp;)V

    return-void
.end method
