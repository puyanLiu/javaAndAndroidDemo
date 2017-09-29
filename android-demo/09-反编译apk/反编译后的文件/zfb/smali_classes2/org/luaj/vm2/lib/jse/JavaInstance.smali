.class Lorg/luaj/vm2/lib/jse/JavaInstance;
.super Lorg/luaj/vm2/LuaUserdata;


# instance fields
.field jclass:Lorg/luaj/vm2/lib/jse/JavaClass;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/LuaUserdata;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->jclass:Lorg/luaj/vm2/lib/jse/JavaClass;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/JavaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->jclass:Lorg/luaj/vm2/lib/jse/JavaClass;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->jclass:Lorg/luaj/vm2/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/jse/JavaClass;->getField(Lorg/luaj/vm2/LuaValue;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/luaj/vm2/LuaError;

    invoke-direct {v1, v0}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->jclass:Lorg/luaj/vm2/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/jse/JavaClass;->getMethod(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/luaj/vm2/LuaUserdata;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->jclass:Lorg/luaj/vm2/lib/jse/JavaClass;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/JavaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->jclass:Lorg/luaj/vm2/lib/jse/JavaClass;

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->jclass:Lorg/luaj/vm2/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/jse/JavaClass;->getField(Lorg/luaj/vm2/LuaValue;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaInstance;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->coerce(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/luaj/vm2/LuaError;

    invoke-direct {v1, v0}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/luaj/vm2/LuaUserdata;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method
