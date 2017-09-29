.class public Lorg/luaj/vm2/script/LuajContext;
.super Ljavax/script/SimpleScriptContext;

# interfaces
.implements Ljavax/script/ScriptContext;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/io/PrintStream;

.field private final c:Ljava/io/PrintStream;

.field public final globals:Lorg/luaj/vm2/Globals;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "org.luaj.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "org.luaj.luajc"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/script/LuajContext;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Ljavax/script/SimpleScriptContext;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->debugGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    invoke-static {v0}, Lorg/luaj/vm2/luajc/LuaJC;->install(Lorg/luaj/vm2/Globals;)V

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDIN:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->a:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDOUT:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->b:Ljava/io/PrintStream;

    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDERR:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->c:Ljava/io/PrintStream;

    return-void

    :cond_1
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->standardGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public setErrorWriter(Ljava/io/Writer;)V
    .locals 3

    iget-object v1, p0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/PrintStream;

    new-instance v2, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;

    invoke-direct {v2, p1}, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    iput-object v0, v1, Lorg/luaj/vm2/Globals;->STDERR:Ljava/io/PrintStream;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->c:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 2

    iget-object v1, p0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/luaj/vm2/script/LuajContext$ReaderInputStream;

    invoke-direct {v0, p1}, Lorg/luaj/vm2/script/LuajContext$ReaderInputStream;-><init>(Ljava/io/Reader;)V

    :goto_0
    iput-object v0, v1, Lorg/luaj/vm2/Globals;->STDIN:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->a:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 4

    iget-object v1, p0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/PrintStream;

    new-instance v2, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;

    invoke-direct {v2, p1}, Lorg/luaj/vm2/script/LuajContext$WriterOutputStream;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    :goto_0
    iput-object v0, v1, Lorg/luaj/vm2/Globals;->STDOUT:Ljava/io/PrintStream;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/script/LuajContext;->b:Ljava/io/PrintStream;

    goto :goto_0
.end method
