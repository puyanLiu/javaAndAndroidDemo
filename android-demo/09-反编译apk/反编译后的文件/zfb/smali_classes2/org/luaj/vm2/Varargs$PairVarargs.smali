.class final Lorg/luaj/vm2/Varargs$PairVarargs;
.super Lorg/luaj/vm2/Varargs;


# instance fields
.field private final a:Lorg/luaj/vm2/LuaValue;

.field private final b:Lorg/luaj/vm2/Varargs;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/Varargs;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/Varargs$PairVarargs;->a:Lorg/luaj/vm2/LuaValue;

    iput-object p2, p0, Lorg/luaj/vm2/Varargs$PairVarargs;->b:Lorg/luaj/vm2/Varargs;

    return-void
.end method


# virtual methods
.method public final arg(I)Lorg/luaj/vm2/LuaValue;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$PairVarargs;->a:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/Varargs$PairVarargs;->b:Lorg/luaj/vm2/Varargs;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public final arg1()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$PairVarargs;->a:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public final narg()I
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$PairVarargs;->b:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final subargs(I)Lorg/luaj/vm2/Varargs;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lorg/luaj/vm2/Varargs$PairVarargs;->b:Lorg/luaj/vm2/Varargs;

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$PairVarargs;->b:Lorg/luaj/vm2/Varargs;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "start must be > 0"

    invoke-static {v1, v0}, Lorg/luaj/vm2/LuaValue;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p0

    goto :goto_0
.end method
