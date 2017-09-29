.class final Lorg/luaj/vm2/Varargs$ArrayVarargs;
.super Lorg/luaj/vm2/Varargs;


# instance fields
.field private final a:[Lorg/luaj/vm2/LuaValue;

.field private final b:Lorg/luaj/vm2/Varargs;


# direct methods
.method constructor <init>([Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/Varargs;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    iput-object p2, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->b:Lorg/luaj/vm2/Varargs;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "nulls in array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final arg(I)Lorg/luaj/vm2/LuaValue;
    .locals 2

    if-gtz p1, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->b:Lorg/luaj/vm2/Varargs;

    iget-object v1, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public final arg1()Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->b:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public final narg()I
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    iget-object v1, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->b:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final subargs(I)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    const-string/jumbo v0, "start must be > 0"

    invoke-static {v1, v0}, Lorg/luaj/vm2/LuaValue;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    if-ne p1, v1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    array-length v0, v0

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->b:Lorg/luaj/vm2/Varargs;

    iget-object v1, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->a:[Lorg/luaj/vm2/LuaValue;

    array-length v2, v2

    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/luaj/vm2/Varargs$ArrayVarargs;->b:Lorg/luaj/vm2/Varargs;

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/LuaValue;->varargsOf([Lorg/luaj/vm2/LuaValue;IILorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object p0

    goto :goto_0
.end method
