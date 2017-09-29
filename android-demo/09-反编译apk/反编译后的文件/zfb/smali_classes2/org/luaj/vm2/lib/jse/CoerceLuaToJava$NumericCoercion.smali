.class final Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;


# static fields
.field static final TARGET_TYPE_BYTE:I = 0x0

.field static final TARGET_TYPE_CHAR:I = 0x1

.field static final TARGET_TYPE_DOUBLE:I = 0x6

.field static final TARGET_TYPE_FLOAT:I = 0x5

.field static final TARGET_TYPE_INT:I = 0x3

.field static final TARGET_TYPE_LONG:I = 0x4

.field static final TARGET_TYPE_SHORT:I = 0x2

.field static final TYPE_NAMES:[Ljava/lang/String;


# instance fields
.field final targetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "byte"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "char"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "short"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "double"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;->TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    return-void
.end method


# virtual methods
.method public final coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v1

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/Character;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v1

    int-to-char v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v1

    int-to-short v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final score(Lorg/luaj/vm2/LuaValue;)I
    .locals 7

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->tonumber()Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    :goto_0
    return v0

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isint()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    packed-switch v3, :pswitch_data_0

    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v2

    int-to-byte v3, v2

    if-ne v2, v3, :cond_2

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    sget v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v3

    int-to-byte v4, v3

    if-ne v3, v4, :cond_4

    move v1, v2

    :cond_3
    :goto_2
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    int-to-char v2, v3

    if-eq v3, v2, :cond_3

    sget v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v3

    int-to-byte v4, v3

    if-ne v3, v4, :cond_5

    :goto_3
    add-int/2addr v0, v2

    goto :goto_0

    :cond_5
    int-to-short v2, v3

    if-ne v3, v2, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    sget v2, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v3

    int-to-byte v4, v3

    if-ne v3, v4, :cond_8

    const/4 v1, 0x2

    :cond_7
    :goto_4
    add-int/2addr v0, v1

    goto :goto_0

    :cond_8
    int-to-char v4, v3

    if-eq v3, v4, :cond_9

    int-to-short v4, v3

    if-ne v3, v4, :cond_7

    :cond_9
    move v1, v2

    goto :goto_4

    :pswitch_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnumber()Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    packed-switch v3, :pswitch_data_1

    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_0

    :pswitch_7
    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_0

    :pswitch_8
    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_0

    :pswitch_9
    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_0

    :pswitch_a
    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_0

    :pswitch_b
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v2

    double-to-long v4, v2

    long-to-double v4, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_b

    :goto_5
    add-int/2addr v0, v1

    goto :goto_0

    :cond_b
    sget v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_5

    :pswitch_c
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v2

    double-to-float v4, v2

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_c

    :goto_6
    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_c
    sget v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    goto :goto_6

    :pswitch_d
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v3

    double-to-long v5, v3

    long-to-double v5, v5

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_d

    double-to-float v5, v3

    float-to-double v5, v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_e

    :cond_d
    move v1, v2

    :cond_e
    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_f
    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "NumericCoercion("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;->TYPE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;->targetType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
