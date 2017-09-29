.class public Lorg/luaj/vm2/ast/NameScope;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Set;


# instance fields
.field public functionNestingCount:I

.field public final namedVariables:Ljava/util/Map;

.field public final outerScope:Lorg/luaj/vm2/ast/NameScope;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x15

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/luaj/vm2/ast/NameScope;->a:Ljava/util/Set;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "and"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "break"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "do"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "else"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "elseif"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "end"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "false"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "for"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "function"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "if"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "in"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "local"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "nil"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "not"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "or"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "repeat"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "return"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "then"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "true"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "until"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "while"

    aput-object v3, v1, v2

    :goto_0
    if-ge v0, v4, :cond_0

    sget-object v2, Lorg/luaj/vm2/ast/NameScope;->a:Ljava/util/Set;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/luaj/vm2/ast/NameScope;->outerScope:Lorg/luaj/vm2/ast/NameScope;

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/ast/NameScope;->functionNestingCount:I

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/ast/NameScope;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    iput-object p1, p0, Lorg/luaj/vm2/ast/NameScope;->outerScope:Lorg/luaj/vm2/ast/NameScope;

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/luaj/vm2/ast/NameScope;->functionNestingCount:I

    :goto_0
    iput v0, p0, Lorg/luaj/vm2/ast/NameScope;->functionNestingCount:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/luaj/vm2/ast/NameScope;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "name is a keyword: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public define(Ljava/lang/String;)Lorg/luaj/vm2/ast/Variable;
    .locals 2

    invoke-static {p1}, Lorg/luaj/vm2/ast/NameScope;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/luaj/vm2/ast/Variable;

    invoke-direct {v0, p1, p0}, Lorg/luaj/vm2/ast/Variable;-><init>(Ljava/lang/String;Lorg/luaj/vm2/ast/NameScope;)V

    iget-object v1, p0, Lorg/luaj/vm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public find(Ljava/lang/String;)Lorg/luaj/vm2/ast/Variable;
    .locals 2

    invoke-static {p1}, Lorg/luaj/vm2/ast/NameScope;->a(Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/luaj/vm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/luaj/vm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/ast/Variable;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/luaj/vm2/ast/NameScope;->outerScope:Lorg/luaj/vm2/ast/NameScope;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/luaj/vm2/ast/Variable;

    invoke-direct {v0, p1}, Lorg/luaj/vm2/ast/Variable;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/luaj/vm2/ast/NameScope;->namedVariables:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
