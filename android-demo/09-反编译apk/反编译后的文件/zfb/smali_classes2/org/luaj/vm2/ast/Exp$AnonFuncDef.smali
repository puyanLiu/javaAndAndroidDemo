.class public Lorg/luaj/vm2/ast/Exp$AnonFuncDef;
.super Lorg/luaj/vm2/ast/Exp;


# instance fields
.field public final body:Lorg/luaj/vm2/ast/FuncBody;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/FuncBody;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Exp$AnonFuncDef;->body:Lorg/luaj/vm2/ast/FuncBody;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$AnonFuncDef;)V

    return-void
.end method
