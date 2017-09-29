.class Lorg/luaj/vm2/lib/jse/JavaClass;
.super Lorg/luaj/vm2/lib/jse/JavaInstance;

# interfaces
.implements Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;


# static fields
.field static final NEW:Lorg/luaj/vm2/LuaValue;

.field static final classes:Ljava/util/Map;


# instance fields
.field fields:Ljava/util/Map;

.field methods:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/JavaClass;->classes:Ljava/util/Map;

    const-string/jumbo v0, "new"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaClass;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/JavaClass;->NEW:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/lib/jse/JavaInstance;-><init>(Ljava/lang/Object;)V

    iput-object p0, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->jclass:Lorg/luaj/vm2/lib/jse/JavaClass;

    return-void
.end method

.method static forClass(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/JavaClass;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/lib/jse/JavaClass;->classes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/lib/jse/JavaClass;

    if-nez v0, :cond_0

    sget-object v1, Lorg/luaj/vm2/lib/jse/JavaClass;->classes:Ljava/util/Map;

    new-instance v0, Lorg/luaj/vm2/lib/jse/JavaClass;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/lib/jse/JavaClass;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;
    .locals 0

    return-object p0
.end method

.method public getConstructor()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/lib/jse/JavaClass;->NEW:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/lib/jse/JavaClass;->getMethod(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method getField(Lorg/luaj/vm2/LuaValue;)Ljava/lang/reflect/Field;
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->fields:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->m_instance:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->fields:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method getMethod(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->methods:Ljava/util/Map;

    if-nez v0, :cond_7

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->m_instance:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v1, v2

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v5}, Lorg/luaj/vm2/lib/jse/JavaMethod;->forMethod(Ljava/lang/reflect/Method;)Lorg/luaj/vm2/lib/jse/JavaMethod;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->m_instance:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_4

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, v1, v0

    invoke-static {v6}, Lorg/luaj/vm2/lib/jse/JavaConstructor;->forConstructor(Ljava/lang/reflect/Constructor;)Lorg/luaj/vm2/lib/jse/JavaConstructor;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Lorg/luaj/vm2/lib/jse/JavaClass;->NEW:Lorg/luaj/vm2/LuaValue;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/luaj/vm2/lib/jse/JavaConstructor;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/luaj/vm2/lib/jse/JavaConstructor;

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaConstructor;->forConstructors([Lorg/luaj/vm2/lib/jse/JavaConstructor;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_4
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :pswitch_1
    sget-object v0, Lorg/luaj/vm2/lib/jse/JavaClass;->NEW:Lorg/luaj/vm2/LuaValue;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/luaj/vm2/lib/jse/JavaMethod;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/luaj/vm2/lib/jse/JavaMethod;

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaMethod;->forMethods([Lorg/luaj/vm2/lib/jse/JavaMethod;)Lorg/luaj/vm2/LuaFunction;

    move-result-object v0

    goto :goto_4

    :cond_6
    iput-object v4, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->methods:Ljava/util/Map;

    :cond_7
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaClass;->methods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaValue;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
