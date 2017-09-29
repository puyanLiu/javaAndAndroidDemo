.class public Lorg/luaj/vm2/ast/Stat$NumericFor;
.super Lorg/luaj/vm2/ast/Stat;


# instance fields
.field public final block:Lorg/luaj/vm2/ast/Block;

.field public final initial:Lorg/luaj/vm2/ast/Exp;

.field public final limit:Lorg/luaj/vm2/ast/Exp;

.field public final name:Lorg/luaj/vm2/ast/Name;

.field public scope:Lorg/luaj/vm2/ast/NameScope;

.field public final step:Lorg/luaj/vm2/ast/Exp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;)V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Stat;-><init>()V

    new-instance v0, Lorg/luaj/vm2/ast/Name;

    invoke-direct {v0, p1}, Lorg/luaj/vm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/luaj/vm2/ast/Stat$NumericFor;->name:Lorg/luaj/vm2/ast/Name;

    iput-object p2, p0, Lorg/luaj/vm2/ast/Stat$NumericFor;->initial:Lorg/luaj/vm2/ast/Exp;

    iput-object p3, p0, Lorg/luaj/vm2/ast/Stat$NumericFor;->limit:Lorg/luaj/vm2/ast/Exp;

    iput-object p4, p0, Lorg/luaj/vm2/ast/Stat$NumericFor;->step:Lorg/luaj/vm2/ast/Exp;

    iput-object p5, p0, Lorg/luaj/vm2/ast/Stat$NumericFor;->block:Lorg/luaj/vm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Stat$NumericFor;)V

    return-void
.end method
