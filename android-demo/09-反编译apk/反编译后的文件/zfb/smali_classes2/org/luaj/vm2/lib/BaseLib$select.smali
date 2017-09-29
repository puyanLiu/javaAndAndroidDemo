.class final Lorg/luaj/vm2/lib/BaseLib$select;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-static {v2}, Lorg/luaj/vm2/lib/BaseLib$select;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/luaj/vm2/lib/BaseLib$select;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    if-eqz v1, :cond_1

    neg-int v2, v0

    if-ge v1, v2, :cond_2

    :cond_1
    const-string/jumbo v2, "index out of range"

    invoke-static {v3, v2}, Lorg/luaj/vm2/lib/BaseLib$select;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_2
    if-gez v1, :cond_3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_1
.end method
