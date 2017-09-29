.class Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$1;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# instance fields
.field final synthetic this$0:Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;

.field final synthetic val$bindings:Ljavax/script/Bindings;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;Ljavax/script/Bindings;)V
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$1;->this$0:Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;

    iput-object p2, p0, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$1;->val$bindings:Ljavax/script/Bindings;

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$1;->val$bindings:Ljavax/script/Bindings;

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/script/Bindings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/script/LuaScriptEngine;->access$200(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$1;->rawget(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method
