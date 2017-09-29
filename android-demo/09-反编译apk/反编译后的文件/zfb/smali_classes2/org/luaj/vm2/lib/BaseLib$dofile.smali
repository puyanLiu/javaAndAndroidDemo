.class final Lorg/luaj/vm2/lib/BaseLib$dofile;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/BaseLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/BaseLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/BaseLib$dofile;->a:Lorg/luaj/vm2/lib/BaseLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->isstring(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->isnil(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v2, "filename must be string or nil"

    invoke-virtual {p1, v0, v1, v2}, Lorg/luaj/vm2/Varargs;->argcheck(ZILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->isstring(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$dofile;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v2, p0, Lorg/luaj/vm2/lib/BaseLib$dofile;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v2, v2, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v2, v2, Lorg/luaj/vm2/Globals;->STDIN:Ljava/io/InputStream;

    const-string/jumbo v3, "=stdin"

    const-string/jumbo v4, "bt"

    iget-object v5, p0, Lorg/luaj/vm2/lib/BaseLib$dofile;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v5, v5, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/luaj/vm2/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_2
    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Varargs;->isnil(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib$dofile;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$dofile;->a:Lorg/luaj/vm2/lib/BaseLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bt"

    iget-object v4, p0, Lorg/luaj/vm2/lib/BaseLib$dofile;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v4, v4, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {v0, v2, v3, v4}, Lorg/luaj/vm2/lib/BaseLib;->loadFile(Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->invoke()Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_3
.end method
