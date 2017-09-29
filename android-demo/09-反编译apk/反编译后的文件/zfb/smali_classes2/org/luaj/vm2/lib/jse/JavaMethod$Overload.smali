.class Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;
.super Lorg/luaj/vm2/LuaFunction;


# instance fields
.field final methods:[Lorg/luaj/vm2/lib/jse/JavaMethod;


# direct methods
.method constructor <init>([Lorg/luaj/vm2/lib/jse/JavaMethod;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->methods:[Lorg/luaj/vm2/lib/jse/JavaMethod;

    return-void
.end method

.method private a(Ljava/lang/Object;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    const/4 v2, 0x0

    sget v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->methods:[Lorg/luaj/vm2/lib/jse/JavaMethod;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->methods:[Lorg/luaj/vm2/lib/jse/JavaMethod;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/lib/jse/JavaMethod;->score(Lorg/luaj/vm2/Varargs;)I

    move-result v0

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->methods:[Lorg/luaj/vm2/lib/jse/JavaMethod;

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
    invoke-virtual {v1, p1, p2}, Lorg/luaj/vm2/lib/jse/JavaMethod;->invokeMethod(Ljava/lang/Object;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public call()Lorg/luaj/vm2/LuaValue;
    .locals 1

    const-string/jumbo v0, "method cannot be called without instance"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->a(Ljava/lang/Object;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->a(Ljava/lang/Object;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/luaj/vm2/LuaValue;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->a(Ljava/lang/Object;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkuserdata(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/lib/jse/JavaMethod$Overload;->a(Ljava/lang/Object;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method
