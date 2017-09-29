.class Lorg/luaj/vm2/lib/jse/LuajavaLib$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:Lorg/luaj/vm2/LuaValue;

.field private final b:Lorg/luaj/vm2/lib/jse/LuajavaLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/jse/LuajavaLib;Lorg/luaj/vm2/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/LuajavaLib$1;->b:Lorg/luaj/vm2/lib/jse/LuajavaLib;

    iput-object p2, p0, Lorg/luaj/vm2/lib/jse/LuajavaLib$1;->a:Lorg/luaj/vm2/LuaValue;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/LuajavaLib$1;->a:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v2, v0}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v3, v0

    :goto_1
    if-eqz p3, :cond_2

    array-length v0, p3

    move v2, v0

    :goto_2
    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, -0x1

    aget-object v5, p3, v3

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    add-int v0, v3, v6

    new-array v0, v0, [Lorg/luaj/vm2/LuaValue;

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v7, p3, v2

    invoke-static {v7}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    :goto_4
    if-ge v1, v6, :cond_5

    add-int v2, v1, v3

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    aput-object v7, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    new-array v0, v2, [Lorg/luaj/vm2/LuaValue;

    :goto_5
    if-ge v1, v2, :cond_5

    aget-object v3, p3, v1

    invoke-static {v3}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v4, v0}, Lorg/luaj/vm2/LuaValue;->invoke([Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->coerce(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
