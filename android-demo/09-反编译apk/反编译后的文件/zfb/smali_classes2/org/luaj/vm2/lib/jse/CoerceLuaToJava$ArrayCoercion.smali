.class final Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;


# instance fields
.field final componentCoercion:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

.field final componentType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->getCoercion(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentCoercion:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    return-void
.end method


# virtual methods
.method public final coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    :sswitch_1
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->length()I

    move-result v2

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentType:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentCoercion:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Lorg/luaj/vm2/LuaValue;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public final score(Lorg/luaj/vm2/LuaValue;)I
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentCoercion:Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/LuaValue;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;->score(Lorg/luaj/vm2/LuaValue;)I

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentType:Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :sswitch_2
    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_NULL_VALUE:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "ArrayCoercion("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;->componentType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
