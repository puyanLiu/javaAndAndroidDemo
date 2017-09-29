.class Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;
.super Lorg/luaj/vm2/LuaTable;


# direct methods
.method constructor <init>(Ljavax/script/Bindings;)V
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->INDEX:Lorg/luaj/vm2/LuaString;

    new-instance v1, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$1;

    invoke-direct {v1, p0, p1}, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$1;-><init>(Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;Ljavax/script/Bindings;)V

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;->rawset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NEWINDEX:Lorg/luaj/vm2/LuaString;

    new-instance v1, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$2;

    invoke-direct {v1, p0, p1}, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable$2;-><init>(Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;Ljavax/script/Bindings;)V

    invoke-virtual {p0, v0, v1}, Lorg/luaj/vm2/script/LuaScriptEngine$BindingsMetatable;->rawset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method
