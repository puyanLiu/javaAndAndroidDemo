.class public Lorg/luaj/vm2/script/LuaScriptEngineFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/script/ScriptEngineFactory;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/script/ScriptEngine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "lua"

    aput-object v1, v0, v2

    const-string/jumbo v1, ".lua"

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "text/lua"

    aput-object v1, v0, v2

    const-string/jumbo v1, "application/lua"

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->b:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "lua"

    aput-object v1, v0, v2

    const-string/jumbo v1, "luaj"

    aput-object v1, v0, v3

    sput-object v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->c:[Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->e:Ljava/util/List;

    sget-object v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->f:Ljava/util/List;

    sget-object v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEngineName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    const-string/jumbo v1, "javax.script.engine"

    invoke-interface {v0, v1}, Ljavax/script/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    const-string/jumbo v1, "javax.script.engine_version"

    invoke-interface {v0, v1}, Ljavax/script/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->e:Ljava/util/List;

    return-object v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    const-string/jumbo v1, "javax.script.language"

    invoke-interface {v0, v1}, Ljavax/script/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageVersion()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    const-string/jumbo v1, "javax.script.language_version"

    invoke-interface {v0, v1}, Ljavax/script/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getMethodCallSyntax(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->f:Ljava/util/List;

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->g:Ljava/util/List;

    return-object v0
.end method

.method public getOutputStatement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "print("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->getScriptEngine()Ljavax/script/ScriptEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/script/ScriptEngine;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getProgram([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScriptEngine()Ljavax/script/ScriptEngine;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/script/ScriptEngine;

    if-nez v0, :cond_0

    new-instance v0, Lorg/luaj/vm2/script/LuaScriptEngine;

    invoke-direct {v0}, Lorg/luaj/vm2/script/LuaScriptEngine;-><init>()V

    sget-object v1, Lorg/luaj/vm2/script/LuaScriptEngineFactory;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
