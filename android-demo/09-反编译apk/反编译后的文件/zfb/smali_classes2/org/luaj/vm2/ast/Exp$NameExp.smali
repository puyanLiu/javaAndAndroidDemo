.class public Lorg/luaj/vm2/ast/Exp$NameExp;
.super Lorg/luaj/vm2/ast/Exp$VarExp;


# instance fields
.field public final name:Lorg/luaj/vm2/ast/Name;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp$VarExp;-><init>()V

    new-instance v0, Lorg/luaj/vm2/ast/Name;

    invoke-direct {v0, p1}, Lorg/luaj/vm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/luaj/vm2/ast/Exp$NameExp;->name:Lorg/luaj/vm2/ast/Name;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$NameExp;)V

    return-void
.end method

.method public markHasAssignment()V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/ast/Exp$NameExp;->name:Lorg/luaj/vm2/ast/Name;

    iget-object v0, v0, Lorg/luaj/vm2/ast/Name;->variable:Lorg/luaj/vm2/ast/Variable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/luaj/vm2/ast/Variable;->hasassignments:Z

    return-void
.end method
