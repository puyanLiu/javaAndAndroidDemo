.class public Lorg/luaj/vm2/ast/Stat$Return;
.super Lorg/luaj/vm2/ast/Stat;


# instance fields
.field public final values:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Stat;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Stat$Return;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Stat$Return;)V

    return-void
.end method

.method public nreturns()I
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/ast/Stat$Return;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/ast/Stat$Return;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/ast/Stat$Return;->values:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/ast/Exp;

    invoke-virtual {v0}, Lorg/luaj/vm2/ast/Exp;->isvarargexp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
