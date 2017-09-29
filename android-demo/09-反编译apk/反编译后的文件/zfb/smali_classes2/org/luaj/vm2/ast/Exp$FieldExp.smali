.class public Lorg/luaj/vm2/ast/Exp$FieldExp;
.super Lorg/luaj/vm2/ast/Exp$VarExp;


# instance fields
.field public final lhs:Lorg/luaj/vm2/ast/Exp$PrimaryExp;

.field public final name:Lorg/luaj/vm2/ast/Name;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp$VarExp;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Exp$FieldExp;->lhs:Lorg/luaj/vm2/ast/Exp$PrimaryExp;

    new-instance v0, Lorg/luaj/vm2/ast/Name;

    invoke-direct {v0, p2}, Lorg/luaj/vm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/luaj/vm2/ast/Exp$FieldExp;->name:Lorg/luaj/vm2/ast/Name;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$FieldExp;)V

    return-void
.end method
