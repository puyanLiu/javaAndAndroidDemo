.class public Lorg/luaj/vm2/lib/BaseLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lorg/luaj/vm2/lib/ResourceFinder;


# instance fields
.field globals:Lorg/luaj/vm2/Globals;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkglobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iput-object p0, v0, Lorg/luaj/vm2/Globals;->finder:Lorg/luaj/vm2/lib/ResourceFinder;

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iput-object p0, v0, Lorg/luaj/vm2/Globals;->baselib:Lorg/luaj/vm2/lib/BaseLib;

    const-string/jumbo v0, "_G"

    invoke-virtual {p2, v0, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "_VERSION"

    const-string/jumbo v1, "Luaj-jse 3.0"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "assert"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$_assert;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$_assert;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "collectgarbage"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$collectgarbage;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$collectgarbage;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "dofile"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$dofile;

    invoke-direct {v1, p0}, Lorg/luaj/vm2/lib/BaseLib$dofile;-><init>(Lorg/luaj/vm2/lib/BaseLib;)V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "error"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$error;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$error;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "getmetatable"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$getmetatable;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$getmetatable;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "load"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$load;

    invoke-direct {v1, p0}, Lorg/luaj/vm2/lib/BaseLib$load;-><init>(Lorg/luaj/vm2/lib/BaseLib;)V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "loadfile"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$loadfile;

    invoke-direct {v1, p0}, Lorg/luaj/vm2/lib/BaseLib$loadfile;-><init>(Lorg/luaj/vm2/lib/BaseLib;)V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "pcall"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$pcall;

    invoke-direct {v1, p0}, Lorg/luaj/vm2/lib/BaseLib$pcall;-><init>(Lorg/luaj/vm2/lib/BaseLib;)V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "print"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$print;

    invoke-direct {v1, p0, p0}, Lorg/luaj/vm2/lib/BaseLib$print;-><init>(Lorg/luaj/vm2/lib/BaseLib;Lorg/luaj/vm2/lib/BaseLib;)V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "rawequal"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$rawequal;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$rawequal;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "rawget"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$rawget;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$rawget;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "rawlen"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$rawlen;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$rawlen;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "rawset"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$rawset;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$rawset;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "select"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$select;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$select;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "setmetatable"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$setmetatable;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$setmetatable;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "tonumber"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$tonumber;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$tonumber;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "tostring"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$tostring;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$tostring;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "type"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$type;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$type;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "xpcall"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$xpcall;

    invoke-direct {v1, p0}, Lorg/luaj/vm2/lib/BaseLib$xpcall;-><init>(Lorg/luaj/vm2/lib/BaseLib;)V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "next"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$next;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$next;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "pairs"

    new-instance v2, Lorg/luaj/vm2/lib/BaseLib$pairs;

    invoke-direct {v2, v1}, Lorg/luaj/vm2/lib/BaseLib$pairs;-><init>(Lorg/luaj/vm2/lib/BaseLib$next;)V

    invoke-virtual {p2, v0, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "ipairs"

    new-instance v1, Lorg/luaj/vm2/lib/BaseLib$ipairs;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/BaseLib$ipairs;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object p2
.end method

.method public findResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public loadFile(Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->finder:Lorg/luaj/vm2/lib/ResourceFinder;

    invoke-interface {v0, p1}, Lorg/luaj/vm2/lib/ResourceFinder;->findResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/BaseLib;->NIL:Lorg/luaj/vm2/LuaValue;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "cannot open "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ": No such file or directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/luaj/vm2/lib/BaseLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "@"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2, p3}, Lorg/luaj/vm2/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Lorg/luaj/vm2/lib/BaseLib;->NIL:Lorg/luaj/vm2/LuaValue;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/luaj/vm2/lib/BaseLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/BaseLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/luaj/vm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/luaj/vm2/lib/BaseLib;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/lib/BaseLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0
.end method
