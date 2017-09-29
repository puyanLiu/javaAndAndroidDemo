.class public Lorg/luaj/vm2/ast/FuncBody;
.super Lorg/luaj/vm2/ast/SyntaxElement;


# instance fields
.field public block:Lorg/luaj/vm2/ast/Block;

.field public parlist:Lorg/luaj/vm2/ast/ParList;

.field public scope:Lorg/luaj/vm2/ast/NameScope;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/ParList;Lorg/luaj/vm2/ast/Block;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/SyntaxElement;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/luaj/vm2/ast/FuncBody;->parlist:Lorg/luaj/vm2/ast/ParList;

    iput-object p2, p0, Lorg/luaj/vm2/ast/FuncBody;->block:Lorg/luaj/vm2/ast/Block;

    return-void

    :cond_0
    sget-object p1, Lorg/luaj/vm2/ast/ParList;->EMPTY_PARLIST:Lorg/luaj/vm2/ast/ParList;

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/FuncBody;)V

    return-void
.end method
