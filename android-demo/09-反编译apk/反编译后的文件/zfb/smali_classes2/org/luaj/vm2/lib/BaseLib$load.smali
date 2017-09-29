.class final Lorg/luaj/vm2/lib/BaseLib$load;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/BaseLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/BaseLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/BaseLib$load;->a:Lorg/luaj/vm2/lib/BaseLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isfunction()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v3, "ld must be string or function"

    invoke-virtual {p1, v0, v1, v3}, Lorg/luaj/vm2/Varargs;->argcheck(ZILjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    const-string/jumbo v3, "bt"

    invoke-virtual {p1, v0, v3}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    iget-object v4, p0, Lorg/luaj/vm2/lib/BaseLib$load;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v4, v4, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {p1, v0, v4}, Lorg/luaj/vm2/Varargs;->optvalue(ILorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    iget-object v5, p0, Lorg/luaj/vm2/lib/BaseLib$load;->a:Lorg/luaj/vm2/lib/BaseLib;

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaString;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0, v1, v3, v4}, Lorg/luaj/vm2/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "=(load)"

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->checkfunction()Lorg/luaj/vm2/LuaFunction;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/luaj/vm2/lib/BaseLib$StringInputStream;-><init>(Lorg/luaj/vm2/LuaValue;)V

    goto :goto_2
.end method
