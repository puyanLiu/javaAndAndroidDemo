.class public Lorg/luaj/vm2/ast/Stat$FuncCallStat;
.super Lorg/luaj/vm2/ast/Stat;


# instance fields
.field public final funccall:Lorg/luaj/vm2/ast/Exp$FuncCall;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Exp$FuncCall;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Stat;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Stat$FuncCallStat;->funccall:Lorg/luaj/vm2/ast/Exp$FuncCall;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Stat$FuncCallStat;)V

    return-void
.end method
