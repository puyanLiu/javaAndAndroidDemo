.class public Lorg/luaj/vm2/luajc/JavaLoader;
.super Ljava/lang/ClassLoader;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/luajc/JavaLoader;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaLoader;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/luaj/vm2/luajc/JavaLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public include(Lorg/luaj/vm2/luajc/JavaGen;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/luajc/JavaLoader;->a:Ljava/util/Map;

    iget-object v2, p1, Lorg/luaj/vm2/luajc/JavaGen;->classname:Ljava/lang/String;

    iget-object v3, p1, Lorg/luaj/vm2/luajc/JavaGen;->bytecode:[B

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lorg/luaj/vm2/luajc/JavaGen;->inners:[Lorg/luaj/vm2/luajc/JavaGen;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/luajc/JavaLoader;->include(Lorg/luaj/vm2/luajc/JavaGen;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public load(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaFunction;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/luajc/JavaLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/LuaFunction;->initupvalue1(Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "bad class gen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public load(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaFunction;
    .locals 2

    new-instance v0, Lorg/luaj/vm2/luajc/JavaGen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/luaj/vm2/luajc/JavaGen;-><init>(Lorg/luaj/vm2/Prototype;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p4}, Lorg/luaj/vm2/luajc/JavaLoader;->load(Lorg/luaj/vm2/luajc/JavaGen;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    return-object v0
.end method

.method public load(Lorg/luaj/vm2/luajc/JavaGen;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaFunction;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/luajc/JavaLoader;->include(Lorg/luaj/vm2/luajc/JavaGen;)V

    iget-object v0, p1, Lorg/luaj/vm2/luajc/JavaGen;->classname:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lorg/luaj/vm2/luajc/JavaLoader;->load(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    return-object v0
.end method
