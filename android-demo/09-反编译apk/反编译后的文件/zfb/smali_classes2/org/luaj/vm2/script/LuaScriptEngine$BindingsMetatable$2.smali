.class Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$2;
.super Lorg/luaj/vm2/lib/ThreeArgFunction;


# instance fields
.field final synthetic this$0:Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;

.field final synthetic val$bindings:Ljavax/script/Bindings;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;Ljavax/script/Bindings;)V
    .locals 0

    iput-object p1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$2;->this$0:Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;

    iput-object p2, p0, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$2;->val$bindings:Ljavax/script/Bindings;

    invoke-direct {p0}, Lorg/luaj/vm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lorg/luaj/vm2/script/LuaScriptEngine;->access$300(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$2;->val$bindings:Ljavax/script/Bindings;

    invoke-interface {v1, v0}, Ljavax/script/Bindings;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$2;->val$bindings:Ljavax/script/Bindings;

    invoke-interface {v2, v0, v1}, Ljavax/script/Bindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$2;->rawset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method
