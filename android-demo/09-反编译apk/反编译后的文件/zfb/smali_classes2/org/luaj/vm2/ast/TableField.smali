.class public Lorg/luaj/vm2/ast/TableField;
.super Lorg/luaj/vm2/ast/SyntaxElement;


# instance fields
.field public final index:Lorg/luaj/vm2/ast/Exp;

.field public final name:Ljava/lang/String;

.field public final rhs:Lorg/luaj/vm2/ast/Exp;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Exp;Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/SyntaxElement;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/TableField;->index:Lorg/luaj/vm2/ast/Exp;

    iput-object p2, p0, Lorg/luaj/vm2/ast/TableField;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/luaj/vm2/ast/TableField;->rhs:Lorg/luaj/vm2/ast/Exp;

    return-void
.end method

.method public static keyedField(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/TableField;
    .locals 2

    new-instance v0, Lorg/luaj/vm2/ast/TableField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/luaj/vm2/ast/TableField;-><init>(Lorg/luaj/vm2/ast/Exp;Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;)V

    return-object v0
.end method

.method public static listField(Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/TableField;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/luaj/vm2/ast/TableField;

    invoke-direct {v0, v1, v1, p0}, Lorg/luaj/vm2/ast/TableField;-><init>(Lorg/luaj/vm2/ast/Exp;Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;)V

    return-object v0
.end method

.method public static namedField(Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/TableField;
    .locals 2

    new-instance v0, Lorg/luaj/vm2/ast/TableField;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lorg/luaj/vm2/ast/TableField;-><init>(Lorg/luaj/vm2/ast/Exp;Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/TableField;)V

    return-void
.end method
