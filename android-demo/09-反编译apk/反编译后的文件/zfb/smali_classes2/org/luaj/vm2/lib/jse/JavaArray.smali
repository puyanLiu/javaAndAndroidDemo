.class Lorg/luaj/vm2/lib/jse/JavaArray;
.super Lorg/luaj/vm2/LuaUserdata;


# static fields
.field static final LENGTH:Lorg/luaj/vm2/LuaValue;

.field static final array_metatable:Lorg/luaj/vm2/LuaTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "length"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaArray;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/JavaArray;->LENGTH:Lorg/luaj/vm2/LuaValue;

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    sput-object v0, Lorg/luaj/vm2/lib/jse/JavaArray;->array_metatable:Lorg/luaj/vm2/LuaTable;

    sget-object v1, Lorg/luaj/vm2/LuaValue;->LEN:Lorg/luaj/vm2/LuaString;

    new-instance v2, Lorg/luaj/vm2/lib/jse/JavaArray$1;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/JavaArray$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->rawset(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/luaj/vm2/LuaUserdata;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lorg/luaj/vm2/lib/jse/JavaArray;->array_metatable:Lorg/luaj/vm2/LuaTable;

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/lib/jse/JavaArray;->setmetatable(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    return-void
.end method


# virtual methods
.method public get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/lib/jse/JavaArray;->LENGTH:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaArray;->m_instance:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaArray;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaArray;->m_instance:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaArray;->m_instance:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/jse/JavaArray;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lorg/luaj/vm2/LuaUserdata;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaArray;->m_instance:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JavaArray;->m_instance:Ljava/lang/Object;

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JavaArray;->m_instance:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->coerce(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JavaArray;->m_metatable:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lorg/luaj/vm2/lib/jse/JavaArray;->settable(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const-string/jumbo v0, "array index out of bounds"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaArray;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lorg/luaj/vm2/LuaUserdata;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0
.end method
