.class public Lorg/luaj/vm2/ast/Stat$RepeatUntil;
.super Lorg/luaj/vm2/ast/Stat;


# instance fields
.field public final block:Lorg/luaj/vm2/ast/Block;

.field public final exp:Lorg/luaj/vm2/ast/Exp;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Block;Lorg/luaj/vm2/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Stat;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Stat$RepeatUntil;->block:Lorg/luaj/vm2/ast/Block;

    iput-object p2, p0, Lorg/luaj/vm2/ast/Stat$RepeatUntil;->exp:Lorg/luaj/vm2/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Stat$RepeatUntil;)V

    return-void
.end method
