.class public Lorg/luaj/vm2/lib/PackageLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# static fields
.field public static DEFAULT_LUA_PATH:Ljava/lang/String;

.field private static final a:Lorg/luaj/vm2/LuaString;

.field private static final b:Lorg/luaj/vm2/LuaString;

.field private static final c:Lorg/luaj/vm2/LuaString;

.field private static final d:Lorg/luaj/vm2/LuaString;

.field private static final e:Lorg/luaj/vm2/LuaString;

.field private static final f:Lorg/luaj/vm2/LuaString;

.field private static final g:Lorg/luaj/vm2/LuaString;

.field private static final h:Ljava/lang/String;


# instance fields
.field globals:Lorg/luaj/vm2/Globals;

.field public java_searcher:Lorg/luaj/vm2/lib/PackageLib$java_searcher;

.field public lua_searcher:Lorg/luaj/vm2/lib/PackageLib$lua_searcher;

.field package_:Lorg/luaj/vm2/LuaTable;

.field public preload_searcher:Lorg/luaj/vm2/lib/PackageLib$preload_searcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "luaj.package.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->DEFAULT_LUA_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lorg/luaj/vm2/lib/PackageLib;->DEFAULT_LUA_PATH:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "?.lua"

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->DEFAULT_LUA_PATH:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "loaded"

    invoke-static {v0}, Lorg/luaj/vm2/lib/PackageLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->a:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "loadlib"

    invoke-static {v0}, Lorg/luaj/vm2/lib/PackageLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->b:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "preload"

    invoke-static {v0}, Lorg/luaj/vm2/lib/PackageLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->c:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "path"

    invoke-static {v0}, Lorg/luaj/vm2/lib/PackageLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->d:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "searchpath"

    invoke-static {v0}, Lorg/luaj/vm2/lib/PackageLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->e:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "searchers"

    invoke-static {v0}, Lorg/luaj/vm2/lib/PackageLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->f:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "\u0001"

    invoke-static {v0}, Lorg/luaj/vm2/lib/PackageLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->g:Lorg/luaj/vm2/LuaString;

    const-string/jumbo v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/PackageLib;->h:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method private static final a(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v1, 0x5a

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x30

    if-lt p0, v1, :cond_3

    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    :cond_2
    :goto_0
    :sswitch_0
    return v0

    :cond_3
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method static access$000()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/PackageLib;->a:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$100()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/PackageLib;->g:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$200()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/PackageLib;->f:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$300()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/PackageLib;->c:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$400()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/PackageLib;->d:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$500()Lorg/luaj/vm2/LuaString;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/PackageLib;->e:Lorg/luaj/vm2/LuaString;

    return-object v0
.end method

.method static access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/PackageLib;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static final toClassname(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5c

    const/16 v6, 0x2f

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v0, ".lua"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v1, -0x4

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/luaj/vm2/lib/PackageLib;->a(C)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_6

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_2
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/luaj/vm2/lib/PackageLib;->a(C)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_1
    if-eq v1, v6, :cond_2

    if-ne v1, v7, :cond_3

    :cond_2
    const/16 v1, 0x2e

    goto :goto_3

    :cond_3
    const/16 v1, 0x5f

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_4
    return-object p0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-eq v1, v0, :cond_5

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkglobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->globals:Lorg/luaj/vm2/Globals;

    const-string/jumbo v1, "require"

    new-instance v2, Lorg/luaj/vm2/lib/PackageLib$require;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/PackageLib$require;-><init>(Lorg/luaj/vm2/lib/PackageLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/Globals;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/lib/PackageLib;->a:Lorg/luaj/vm2/LuaString;

    new-instance v2, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v2}, Lorg/luaj/vm2/LuaTable;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/lib/PackageLib;->c:Lorg/luaj/vm2/LuaString;

    new-instance v2, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v2}, Lorg/luaj/vm2/LuaTable;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/lib/PackageLib;->d:Lorg/luaj/vm2/LuaString;

    sget-object v2, Lorg/luaj/vm2/lib/PackageLib;->DEFAULT_LUA_PATH:Ljava/lang/String;

    invoke-static {v2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/lib/PackageLib;->b:Lorg/luaj/vm2/LuaString;

    new-instance v2, Lorg/luaj/vm2/lib/PackageLib$loadlib;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/PackageLib$loadlib;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/lib/PackageLib;->e:Lorg/luaj/vm2/LuaString;

    new-instance v2, Lorg/luaj/vm2/lib/PackageLib$searchpath;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/PackageLib$searchpath;-><init>(Lorg/luaj/vm2/lib/PackageLib;)V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const/4 v1, 0x1

    new-instance v2, Lorg/luaj/vm2/lib/PackageLib$preload_searcher;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/PackageLib$preload_searcher;-><init>(Lorg/luaj/vm2/lib/PackageLib;)V

    iput-object v2, p0, Lorg/luaj/vm2/lib/PackageLib;->preload_searcher:Lorg/luaj/vm2/lib/PackageLib$preload_searcher;

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    const/4 v1, 0x2

    new-instance v2, Lorg/luaj/vm2/lib/PackageLib$lua_searcher;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/PackageLib$lua_searcher;-><init>(Lorg/luaj/vm2/lib/PackageLib;)V

    iput-object v2, p0, Lorg/luaj/vm2/lib/PackageLib;->lua_searcher:Lorg/luaj/vm2/lib/PackageLib$lua_searcher;

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    const/4 v1, 0x3

    new-instance v2, Lorg/luaj/vm2/lib/PackageLib$java_searcher;

    invoke-direct {v2, p0}, Lorg/luaj/vm2/lib/PackageLib$java_searcher;-><init>(Lorg/luaj/vm2/lib/PackageLib;)V

    iput-object v2, p0, Lorg/luaj/vm2/lib/PackageLib;->java_searcher:Lorg/luaj/vm2/lib/PackageLib$java_searcher;

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    iget-object v1, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v2, Lorg/luaj/vm2/lib/PackageLib;->f:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v1, v2, v0}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/lib/PackageLib;->a:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaTable;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v1, "package"

    iget-object v2, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "package"

    iget-object v1, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->globals:Lorg/luaj/vm2/Globals;

    iput-object p0, v0, Lorg/luaj/vm2/Globals;->package_:Lorg/luaj/vm2/lib/PackageLib;

    return-object p2
.end method

.method public setIsLoaded(Ljava/lang/String;Lorg/luaj/vm2/LuaTable;)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/lib/PackageLib;->a:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaTable;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public setLuaPath(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/lib/PackageLib;->d:Lorg/luaj/vm2/LuaString;

    invoke-static {p1}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "package"

    return-object v0
.end method
