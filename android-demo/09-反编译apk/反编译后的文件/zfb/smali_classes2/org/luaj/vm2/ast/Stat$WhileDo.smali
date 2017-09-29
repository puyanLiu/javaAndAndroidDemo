.class public Lorg/luaj/vm2/ast/Stat$WhileDo;
.super Lorg/luaj/vm2/ast/Stat;


# instance fields
.field public final block:Lorg/luaj/vm2/ast/Block;

.field public final exp:Lorg/luaj/vm2/ast/Exp;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Stat;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Stat$WhileDo;->exp:Lorg/luaj/vm2/ast/Exp;

    iput-object p2, p0, Lorg/luaj/vm2/ast/Stat$WhileDo;->block:Lorg/luaj/vm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Stat$WhileDo;)V

    return-void
.end method
