.class public Lorg/luaj/vm2/luajc/LuaJC;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/Globals$Loader;


# static fields
.field public static final instance:Lorg/luaj/vm2/luajc/LuaJC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/luaj/vm2/luajc/LuaJC;

    invoke-direct {v0}, Lorg/luaj/vm2/luajc/LuaJC;-><init>()V

    sput-object v0, Lorg/luaj/vm2/luajc/LuaJC;->instance:Lorg/luaj/vm2/luajc/LuaJC;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lorg/luaj/vm2/luajc/LuaJC;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-lez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x5f

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Hashtable;
    .locals 3

    invoke-static {p3}, Lorg/luaj/vm2/luajc/LuaJC;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    new-instance v2, Lorg/luaj/vm2/luajc/JavaGen;

    invoke-direct {v2, p1, p2, v0, p4}, Lorg/luaj/vm2/luajc/JavaGen;-><init>(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v1, v2}, Lorg/luaj/vm2/luajc/LuaJC;->a(Ljava/util/Hashtable;Lorg/luaj/vm2/luajc/JavaGen;)V

    return-object v1
.end method

.method private a(Ljava/util/Hashtable;Lorg/luaj/vm2/luajc/JavaGen;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p2, Lorg/luaj/vm2/luajc/JavaGen;->classname:Ljava/lang/String;

    iget-object v2, p2, Lorg/luaj/vm2/luajc/JavaGen;->bytecode:[B

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p2, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    aget-object v2, v2, v1

    invoke-direct {p0, p1, v2}, Lorg/luaj/vm2/luajc/LuaJC;->a(Ljava/util/Hashtable;Lorg/luaj/vm2/luajc/JavaGen;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lorg/luaj/vm2/luajc/LuaJC;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ".lua"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ".lua"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final install(Lorg/luaj/vm2/Globals;)V
    .locals 1

    sget-object v0, Lorg/luaj/vm2/luajc/LuaJC;->instance:Lorg/luaj/vm2/luajc/LuaJC;

    iput-object v0, p0, Lorg/luaj/vm2/Globals;->loader:Lorg/luaj/vm2/Globals$Loader;

    return-void
.end method


# virtual methods
.method public compileAll(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/Globals;Z)Ljava/util/Hashtable;
    .locals 2

    invoke-static {p2}, Lorg/luaj/vm2/luajc/LuaJC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bt"

    invoke-virtual {p4, p1, v0, v1}, Lorg/luaj/vm2/Globals;->loadPrototype(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;

    move-result-object v1

    invoke-direct {p0, v1, v0, p3, p5}, Lorg/luaj/vm2/luajc/LuaJC;->a(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public compileAll(Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/Globals;Z)Ljava/util/Hashtable;
    .locals 2

    invoke-static {p2}, Lorg/luaj/vm2/luajc/LuaJC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lorg/luaj/vm2/Globals;->compilePrototype(Ljava/io/Reader;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;

    move-result-object v1

    invoke-direct {p0, v1, v0, p3, p5}, Lorg/luaj/vm2/luajc/LuaJC;->a(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public load(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaFunction;
    .locals 3

    invoke-static {p2}, Lorg/luaj/vm2/luajc/LuaJC;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/luajc/LuaJC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/luaj/vm2/luajc/JavaLoader;

    invoke-direct {v2}, Lorg/luaj/vm2/luajc/JavaLoader;-><init>()V

    invoke-virtual {v2, p1, v1, v0, p3}, Lorg/luaj/vm2/luajc/JavaLoader;->load(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    return-object v0
.end method
