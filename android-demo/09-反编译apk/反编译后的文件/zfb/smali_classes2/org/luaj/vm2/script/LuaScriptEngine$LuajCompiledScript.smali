.class Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;
.super Ljavax/script/CompiledScript;


# instance fields
.field final compiling_globals:Lorg/luaj/vm2/Globals;

.field final function:Lorg/luaj/vm2/LuaFunction;

.field final synthetic this$0:Lorg/luaj/vm2/script/LuaScriptEngine;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/script/LuaScriptEngine;Lorg/luaj/vm2/LuaFunction;Lorg/luaj/vm2/Globals;)V
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->this$0:Lorg/luaj/vm2/script/LuaScriptEngine;

    invoke-direct {p0}, Ljavax/script/CompiledScript;-><init>()V

    iput-object p2, p0, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->function:Lorg/luaj/vm2/LuaFunction;

    iput-object p3, p0, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->compiling_globals:Lorg/luaj/vm2/Globals;

    return-void
.end method


# virtual methods
.method public eval()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->this$0:Lorg/luaj/vm2/script/LuaScriptEngine;

    invoke-virtual {v0}, Lorg/luaj/vm2/script/LuaScriptEngine;->getContext()Ljavax/script/ScriptContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->this$0:Lorg/luaj/vm2/script/LuaScriptEngine;

    invoke-virtual {v0}, Lorg/luaj/vm2/script/LuaScriptEngine;->getContext()Ljavax/script/ScriptContext;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/script/LuajContext;

    iget-object v0, v0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {p0, v0, p1}, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->eval(Lorg/luaj/vm2/Globals;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Lorg/luaj/vm2/script/LuajContext;

    iget-object v0, v0, Lorg/luaj/vm2/script/LuajContext;->globals:Lorg/luaj/vm2/Globals;

    const/16 v1, 0x64

    invoke-interface {p1, v1}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->eval(Lorg/luaj/vm2/Globals;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method eval(Lorg/luaj/vm2/Globals;Ljavax/script/Bindings;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;

    invoke-direct {v0, p2}, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;-><init>(Ljavax/script/Bindings;)V

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Globals;->setmetatable(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->function:Lorg/luaj/vm2/LuaFunction;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaFunction;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/luaj/vm2/LuaClosure;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaFunction;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v1

    iget-object v1, v1, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    invoke-direct {v0, v1, p1}, Lorg/luaj/vm2/LuaClosure;-><init>(Lorg/luaj/vm2/Prototype;Lorg/luaj/vm2/LuaValue;)V

    :goto_0
    sget-object v1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaFunction;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/script/LuaScriptEngine;->access$100(Lorg/luaj/vm2/Varargs;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaFunction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaFunction;->initupvalue1(Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/script/ScriptException;

    invoke-direct {v1, v0}, Ljavax/script/ScriptException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getEngine()Ljavax/script/ScriptEngine;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine$LuajCompiledScript;->this$0:Lorg/luaj/vm2/script/LuaScriptEngine;

    return-object v0
.end method
