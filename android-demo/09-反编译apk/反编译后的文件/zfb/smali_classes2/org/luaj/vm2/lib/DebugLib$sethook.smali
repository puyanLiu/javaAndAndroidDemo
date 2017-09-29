.class final Lorg/luaj/vm2/lib/DebugLib$sethook;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$sethook;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->isthread(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkthread(I)Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Lorg/luaj/vm2/Varargs;->optfunction(ILorg/luaj/vm2/LuaFunction;)Lorg/luaj/vm2/LuaFunction;

    move-result-object v6

    add-int/lit8 v1, v4, 0x1

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1, v3}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v8

    move v1, v3

    move v4, v3

    move v5, v3

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$sethook;->a:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, v0, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    move v1, v2

    goto :goto_0

    :sswitch_0
    move v5, v2

    goto :goto_2

    :sswitch_1
    move v4, v2

    goto :goto_2

    :sswitch_2
    move v3, v2

    goto :goto_2

    :cond_1
    iput-object v6, v0, Lorg/luaj/vm2/LuaThread;->hookfunc:Lorg/luaj/vm2/LuaValue;

    iput-boolean v5, v0, Lorg/luaj/vm2/LuaThread;->hookcall:Z

    iput-boolean v4, v0, Lorg/luaj/vm2/LuaThread;->hookline:Z

    iput v8, v0, Lorg/luaj/vm2/LuaThread;->hookcount:I

    iput-boolean v3, v0, Lorg/luaj/vm2/LuaThread;->hookrtrn:Z

    sget-object v0, Lorg/luaj/vm2/lib/DebugLib$sethook;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x6c -> :sswitch_1
        0x72 -> :sswitch_2
    .end sparse-switch
.end method
