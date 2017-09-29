.class Lorg/luaj/vm2/Varargs$SubVarargs;
.super Lorg/luaj/vm2/Varargs;


# instance fields
.field private final a:Lorg/luaj/vm2/Varargs;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/Varargs;II)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/Varargs;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->a:Lorg/luaj/vm2/Varargs;

    iput p2, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->b:I

    iput p3, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    return-void
.end method


# virtual methods
.method public arg(I)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->b:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->b:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->a:Lorg/luaj/vm2/Varargs;

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method public arg1()Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->a:Lorg/luaj/vm2/Varargs;

    iget v1, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->b:I

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public narg()I
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subargs(I)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->b:I

    add-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    if-lez p1, :cond_4

    iget v0, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    if-lt v1, v0, :cond_1

    sget-object p0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->a:Lorg/luaj/vm2/Varargs;

    iget v1, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    new-instance v0, Lorg/luaj/vm2/Varargs$PairVarargs;

    iget-object v1, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->a:Lorg/luaj/vm2/Varargs;

    iget v2, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    iget-object v2, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->a:Lorg/luaj/vm2/Varargs;

    iget v3, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    invoke-virtual {v2, v3}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/luaj/vm2/Varargs$PairVarargs;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/luaj/vm2/Varargs$SubVarargs;

    iget-object v2, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->a:Lorg/luaj/vm2/Varargs;

    iget v3, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    invoke-direct {v0, v2, v1, v3}, Lorg/luaj/vm2/Varargs$SubVarargs;-><init>(Lorg/luaj/vm2/Varargs;II)V

    move-object p0, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/luaj/vm2/Varargs$SubVarargs;

    iget-object v2, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->a:Lorg/luaj/vm2/Varargs;

    iget v3, p0, Lorg/luaj/vm2/Varargs$SubVarargs;->c:I

    invoke-direct {v0, v2, v1, v3}, Lorg/luaj/vm2/Varargs$SubVarargs;-><init>(Lorg/luaj/vm2/Varargs;II)V

    move-object p0, v0

    goto :goto_0
.end method
