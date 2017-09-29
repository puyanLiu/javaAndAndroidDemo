.class Lorg/luaj/vm2/lib/jse/JavaConstructor;
.super Lorg/luaj/vm2/lib/jse/JavaMember;


# static fields
.field static final constructors:Ljava/util/Map;


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/JavaConstructor;->constructors:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/luaj/vm2/lib/jse/JavaMember;-><init>([Ljava/lang/Class;I)V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method static forConstructor(Ljava/lang/reflect/Constructor;)Lorg/luaj/vm2/lib/jse/JavaConstructor;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/lib/jse/JavaConstructor;->constructors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/lib/jse/JavaConstructor;

    if-nez v0, :cond_0

    sget-object v1, Lorg/luaj/vm2/lib/jse/JavaConstructor;->constructors:Ljava/util/Map;

    new-instance v0, Lorg/luaj/vm2/lib/jse/JavaConstructor;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/lib/jse/JavaConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static forConstructors([Lorg/luaj/vm2/lib/jse/JavaConstructor;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/lib/jse/JavaConstructor$Overload;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/lib/jse/JavaConstructor$Overload;-><init>([Lorg/luaj/vm2/lib/jse/JavaConstructor;)V

    return-object v0
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/lib/jse/JavaConstructor;->convertArgs(Lorg/luaj/vm2/Varargs;)[Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/luaj/vm2/LuaError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "coercion error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method
