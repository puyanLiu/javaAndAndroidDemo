.class final Lorg/luaj/vm2/lib/BaseLib$print;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/BaseLib;

.field final baselib:Lorg/luaj/vm2/lib/BaseLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/BaseLib;Lorg/luaj/vm2/lib/BaseLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/BaseLib$print;->a:Lorg/luaj/vm2/lib/BaseLib;

    iput-object p2, p0, Lorg/luaj/vm2/lib/BaseLib$print;->baselib:Lorg/luaj/vm2/lib/BaseLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$print;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    const-string/jumbo v2, "tostring"

    invoke-virtual {v0, v2}, Lorg/luaj/vm2/Globals;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v3

    move v0, v1

    :goto_0
    if-gt v0, v3, :cond_1

    if-le v0, v1, :cond_0

    iget-object v4, p0, Lorg/luaj/vm2/lib/BaseLib$print;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v4, v4, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v4, v4, Lorg/luaj/vm2/Globals;->STDOUT:Ljava/io/PrintStream;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(C)V

    :cond_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luaj/vm2/LuaValue;->strvalue()Lorg/luaj/vm2/LuaString;

    move-result-object v4

    iget-object v5, p0, Lorg/luaj/vm2/lib/BaseLib$print;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v5, v5, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v5, v5, Lorg/luaj/vm2/Globals;->STDOUT:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/BaseLib$print;->a:Lorg/luaj/vm2/lib/BaseLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/BaseLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->STDOUT:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Lorg/luaj/vm2/lib/BaseLib$print;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
