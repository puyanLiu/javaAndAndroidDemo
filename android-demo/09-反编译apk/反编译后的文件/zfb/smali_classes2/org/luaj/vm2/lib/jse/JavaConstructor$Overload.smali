.class Lorg/luaj/vm2/lib/jse/JavaConstructor$Overload;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field final constructors:[Lorg/luaj/vm2/lib/jse/JavaConstructor;


# direct methods
.method public constructor <init>([Lorg/luaj/vm2/lib/jse/JavaConstructor;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JavaConstructor$Overload;->constructors:[Lorg/luaj/vm2/lib/jse/JavaConstructor;

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v2, 0x0

    sget v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaConstructor$Overload;->constructors:[Lorg/luaj/vm2/lib/jse/JavaConstructor;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaConstructor$Overload;->constructors:[Lorg/luaj/vm2/lib/jse/JavaConstructor;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/jse/JavaConstructor;->score(Lorg/luaj/vm2/Varargs;)I

    move-result v0

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaConstructor$Overload;->constructors:[Lorg/luaj/vm2/lib/jse/JavaConstructor;

    aget-object v1, v1, v3

    if-eqz v0, :cond_1

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v0, "no coercible public method"

    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_2
    invoke-virtual {v1, p1}, Lorg/luaj/vm2/lib/jse/JavaConstructor;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method
