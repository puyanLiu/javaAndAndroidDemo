.class public Lorg/luaj/vm2/ast/Exp$FuncCall;
.super Lorg/luaj/vm2/ast/Exp$PrimaryExp;


# instance fields
.field public final args:Lorg/luaj/vm2/ast/FuncArgs;

.field public final lhs:Lorg/luaj/vm2/ast/Exp$PrimaryExp;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Lorg/luaj/vm2/ast/FuncArgs;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp$PrimaryExp;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Exp$FuncCall;->lhs:Lorg/luaj/vm2/ast/Exp$PrimaryExp;

    iput-object p2, p0, Lorg/luaj/vm2/ast/Exp$FuncCall;->args:Lorg/luaj/vm2/ast/FuncArgs;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$FuncCall;)V

    return-void
.end method

.method public isfunccall()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isvarargexp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
