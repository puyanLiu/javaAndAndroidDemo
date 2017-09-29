.class final Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;


# static fields
.field public static final TARGET_TYPE_BYTES:I = 0x1

.field public static final TARGET_TYPE_STRING:I


# instance fields
.field final targetType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    return-void
.end method


# virtual methods
.method public final coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    iget v0, v1, Lorg/luaj/vm2/LuaString;->m_length:I

    new-array v0, v0, [B

    array-length v2, v0

    invoke-virtual {v1, v3, v0, v3, v2}, Lorg/luaj/vm2/LuaString;->copyInto(I[BII)V

    goto :goto_0
.end method

.method public final score(Lorg/luaj/vm2/LuaValue;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-nez v0, :cond_2

    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaString;->isValidUtf8()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-eq v2, v1, :cond_0

    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_0

    :sswitch_1
    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_NULL_VALUE:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "StringCoercion("

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;->targetType:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "String"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "byte[]"

    goto :goto_0
.end method
