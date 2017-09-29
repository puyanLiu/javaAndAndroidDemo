.class public Lorg/luaj/vm2/ast/Exp$ParensExp;
.super Lorg/luaj/vm2/ast/Exp$PrimaryExp;


# instance fields
.field public final exp:Lorg/luaj/vm2/ast/Exp;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Exp$PrimaryExp;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Exp$ParensExp;->exp:Lorg/luaj/vm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Exp$ParensExp;)V

    return-void
.end method
