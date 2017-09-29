.class public Lorg/luaj/vm2/ast/Stat$LocalFuncDef;
.super Lorg/luaj/vm2/ast/Stat;


# instance fields
.field public final body:Lorg/luaj/vm2/ast/FuncBody;

.field public final name:Lorg/luaj/vm2/ast/Name;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/luaj/vm2/ast/FuncBody;)V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/ast/Stat;-><init>()V

    new-instance v0, Lorg/luaj/vm2/ast/Name;

    invoke-direct {v0, p1}, Lorg/luaj/vm2/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/luaj/vm2/ast/Stat$LocalFuncDef;->name:Lorg/luaj/vm2/ast/Name;

    iput-object p2, p0, Lorg/luaj/vm2/ast/Stat$LocalFuncDef;->body:Lorg/luaj/vm2/ast/FuncBody;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Stat$LocalFuncDef;)V

    return-void
.end method
