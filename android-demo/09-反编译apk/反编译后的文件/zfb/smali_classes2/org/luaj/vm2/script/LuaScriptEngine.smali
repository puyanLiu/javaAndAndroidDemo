.class public Lorg/luaj/vm2/script/LuaScriptEngine;
.super Ljavax/script/AbstractScriptEngine;

# interfaces
.implements Ljavax/script/Compilable;
.implements Ljavax/script/ScriptEngine;


# static fields
.field private static final a:Ljavax/script/ScriptEngineFactory;


# instance fields
.field private b:Lorg/luaj/vm2/script/LuajContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/luaj/vm2/script/LuaScriptEngineFactory;

    invoke-direct {v0}, Lorg/luaj/vm2/script/LuaScriptEngineFactory;-><init>()V

    sput-object v0, Lorg/luaj/vm2/script/LuaScriptEngine;->a:Ljavax/script/ScriptEngineFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/script/AbstractScriptEngine;-><init>()V

    new-instance v0, Lorg/luaj/vm2/script/LuajContext;

    invoke-direct {v0}, Lorg/luaj/vm2/script/LuajContext;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine;->b:Lorg/luaj/vm2/script/LuajContext;

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine;->b:Lorg/luaj/vm2/script/LuajContext;

    invoke-virtual {p0}, Lorg/luaj/vm2/script/LuaScriptEngine;->createBindings()Ljavax/script/Bindings;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/script/LuajContext;->setBindings(Ljavax/script/Bindings;I)V

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine;->b:Lorg/luaj/vm2/script/LuajContext;

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/script/LuaScriptEngine;->setContext(Ljavax/script/ScriptContext;)V

    const-string/jumbo v0, "javax.script.language_version"

    const-string/jumbo v1, "5.2"

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "javax.script.language"

    const-string/jumbo v1, "lua"

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "javax.script.engine"

    const-string/jumbo v1, "Luaj"

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "javax.script.engine_version"

    const-string/jumbo v1, "Luaj-jse 3.0"

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "javax.script.argv"

    const-string/jumbo v1, "arg"

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "javax.script.filename"

    const-string/jumbo v1, "?"

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "javax.script.name"

    const-string/jumbo v1, "Luaj"

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "THREADING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/LuaValue;->checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->isinttype()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$100(Lorg/luaj/vm2/Varargs;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    invoke-static {v3}, Lorg/luaj/vm2/script/LuaScriptEngine;->a(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/script/LuaScriptEngine;->a(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$200(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic access$300(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lorg/luaj/vm2/script/LuaScriptEngine;->a(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lorg/luaj/vm2/script/LuaScriptEngine$Utf8Encoder;-><init>(Lorg/luaj/vm2/script/LuaScriptEngine;Ljava/io/Reader;Lorg/luaj/vm2/script/LuaScriptEngine$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine;->b:Lorg/luaj/vm2/script/LuajContext;

    iget-object v0, v0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    const-string/jumbo v2, "script"

    invoke-virtual {v0, p1, v2}, Lorg/luaj/vm2/Globals;->load(Ljava/io/Reader;Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->checkfunction()Lorg/luaj/vm2/LuaFunction;

    move-result-object v2

    new-instance v3, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;

    invoke-direct {v3, p0, v2, v0}, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;-><init>(Lorg/luaj/vm2/script/LuaScriptEngine;Lorg/luaj/vm2/LuaFunction;Lorg/luaj/vm2/Globals;)V
    :try_end_1
    .catch Lorg/luaj/vm2/LuaError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljavax/script/ScriptException;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/script/ScriptException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "eval threw "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public compile(Ljava/lang/String;)Ljavax/script/CompiledScript;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/script/LuaScriptEngine;->compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;

    move-result-object v0

    return-object v0
.end method

.method public createBindings()Ljavax/script/Bindings;
    .locals 1

    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    return-object v0
.end method

.method public eval(Ljava/io/Reader;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/script/LuaScriptEngine;->compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;

    iget-object v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine;->b:Lorg/luaj/vm2/script/LuajContext;

    iget-object v1, v1, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {v0, v1, p2}, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->eval(Lorg/luaj/vm2/Globals;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/script/LuaScriptEngine;->compile(Ljava/io/Reader;)Ljavax/script/CompiledScript;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/script/CompiledScript;->eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/luaj/vm2/script/LuaScriptEngine;->eval(Ljava/io/Reader;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/luaj/vm2/script/LuaScriptEngine;->eval(Ljava/io/Reader;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Ljavax/script/ScriptEngineFactory;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/script/LuaScriptEngine;->a:Ljavax/script/ScriptEngineFactory;

    return-object v0
.end method

.method protected getScriptContext(Ljavax/script/Bindings;)Ljavax/script/ScriptContext;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "LuajScriptEngine should not be allocating contexts."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
