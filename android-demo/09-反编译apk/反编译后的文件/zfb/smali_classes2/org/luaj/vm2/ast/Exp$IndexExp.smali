.class public Lorg/luaj/vm2/ast/Exp$IndexExp;
.super Lorg/luaj/vm2/ast/Exp$VarExp;


# instance fields
.field public final exp:Lorg/luaj/vm2/ast/Exp;

.field public final lhs:Lorg/luaj/vm2/ast/Exp$PrimaryExp;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Lorg/luaj/vm2/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp$VarExp;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Exp$IndexExp;->lhs:Lorg/luaj/vm2/ast/Exp$PrimaryExp;

    iput-object p2, p0, Lorg/luaj/vm2/ast/Exp$IndexExp;->exp:Lorg/luaj/vm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$IndexExp;)V

    return-void
.end method
