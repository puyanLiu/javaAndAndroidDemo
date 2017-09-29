.class public Lorg/luaj/vm2/ast/Chunk;
.super Lorg/luaj/vm2/ast/SyntaxElement;


# instance fields
.field public final block:Lorg/luaj/vm2/ast/Block;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/ast/Block;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/SyntaxElement;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/Chunk;->block:Lorg/luaj/vm2/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/Chunk;)V

    return-void
.end method
