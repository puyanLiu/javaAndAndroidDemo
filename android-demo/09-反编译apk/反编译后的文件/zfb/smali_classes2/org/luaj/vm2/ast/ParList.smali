.class public Lorg/luaj/vm2/ast/ParList;
.super Lorg/luaj/vm2/ast/SyntaxElement;


# static fields
.field public static final EMPTY_NAMELIST:Ljava/util/List;

.field public static final EMPTY_PARLIST:Lorg/luaj/vm2/ast/ParList;


# instance fields
.field public final isvararg:Z

.field public final names:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/luaj/vm2/ast/ParList;->EMPTY_NAMELIST:Ljava/util/List;

    new-instance v0, Lorg/luaj/vm2/ast/ParList;

    sget-object v1, Lorg/luaj/vm2/ast/ParList;->EMPTY_NAMELIST:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/ast/ParList;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lorg/luaj/vm2/ast/ParList;->EMPTY_PARLIST:Lorg/luaj/vm2/ast/ParList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/ast/SyntaxElement;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/ast/ParList;->names:Ljava/util/List;

    iput-boolean p2, p0, Lorg/luaj/vm2/ast/ParList;->isvararg:Z

    return-void
.end method


# virtual methods
.method public accept(Lorg/luaj/vm2/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/luaj/vm2/ast/Visitor;->visit(Lorg/luaj/vm2/ast/ParList;)V

    return-void
.end method
