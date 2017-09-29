.class public Lorg/luaj/vm2/ast/Block;
.super Lorg/luaj/vm2/ast/Stat;


# instance fields
.field public scope:Lorg/luaj/vm2/ast/NameScope;

.field public stats:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Stat;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/ast/Block;->stats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Block;)V

    return-void
.end method

.method public add(Lorg/luaj/vm2/ast/Stat;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/ast/Block;->stats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
