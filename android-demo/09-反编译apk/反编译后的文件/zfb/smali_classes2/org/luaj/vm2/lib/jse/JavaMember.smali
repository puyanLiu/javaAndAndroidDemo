.class abstract Lorg/luaj/vm2/lib/jse/JavaMember;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# static fields
.field static final METHOD_MODIFIERS_VARARGS:I = 0x80


# instance fields
.field final fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

.field final varargs:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;


# direct methods
.method protected constructor <init>([Ljava/lang/Class;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    new-array v0, v0, [Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    iput-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    move v0, v1

    :goto_2
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    aget-object v3, p1, v0

    invoke-static {v3}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->getCoercion(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    array-length v0, p1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->getCoercion(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->varargs:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected convertArgs(Lorg/luaj/vm2/Varargs;)[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->varargs:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v1, v1

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    :goto_2
    iget-object v3, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    aget-object v3, v3, v0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v0, v0

    :goto_3
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->varargs:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method score(Lorg/luaj/vm2/Varargs;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v3

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v0, v0

    if-le v3, v0, :cond_0

    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v2, v2

    sub-int v2, v3, v2

    mul-int/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    aget-object v2, v2, v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;->score(Lorg/luaj/vm2/LuaValue;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->varargs:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->fixedargs:[Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    array-length v1, v1

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JavaMember;->varargs:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;->score(Lorg/luaj/vm2/LuaValue;)I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_2
    return v0
.end method
