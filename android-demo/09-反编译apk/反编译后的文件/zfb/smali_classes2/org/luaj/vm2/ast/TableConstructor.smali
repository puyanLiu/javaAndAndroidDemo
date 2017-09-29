.class public Lorg/luaj/vm2/ast/TableConstructor;
.super Lorg/luaj/vm2/ast/Exp;


# instance fields
.field public fields:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/TableConstructor;)V

    return-void
.end method
