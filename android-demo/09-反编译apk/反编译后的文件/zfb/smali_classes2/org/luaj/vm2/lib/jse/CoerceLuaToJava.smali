.class public Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;
.super Ljava/lang/Object;


# static fields
.field static final COERCIONS:Ljava/util/Map;

.field static SCORE_NULL_VALUE:I

.field static SCORE_UNCOERCIBLE:I

.field static SCORE_WRONG_TYPE:I

.field static array$B:Ljava/lang/Class;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v0, 0x10

    sput v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_NULL_VALUE:I

    const/16 v0, 0x100

    sput v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_WRONG_TYPE:I

    const/high16 v0, 0x10000

    sput v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    new-instance v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$BoolCoercion;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$BoolCoercion;-><init>()V

    new-instance v2, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    invoke-direct {v2, v10}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    new-instance v3, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    invoke-direct {v3, v11}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    new-instance v4, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    new-instance v5, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v0, 0x3

    invoke-direct {v5, v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    new-instance v6, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    new-instance v7, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v0, 0x5

    invoke-direct {v7, v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    new-instance v8, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;

    const/4 v0, 0x6

    invoke-direct {v8, v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$NumericCoercion;-><init>(I)V

    new-instance v9, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;

    invoke-direct {v9, v10}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;-><init>(I)V

    new-instance v10, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;

    invoke-direct {v10, v11}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$StringCoercion;-><init>(I)V

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_0
    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_1
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.Character"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Character:Ljava/lang/Class;

    :goto_2
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Short:Ljava/lang/Class;

    :goto_3
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_4
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Long:Ljava/lang/Class;

    :goto_5
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Float:Ljava/lang/Class;

    :goto_6
    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Double:Ljava/lang/Class;

    :goto_7
    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$String:Ljava/lang/Class;

    :goto_8
    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->array$B:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string/jumbo v0, "[B"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->array$B:Ljava/lang/Class;

    :goto_9
    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_5

    :cond_6
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_7

    :cond_8
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_8

    :cond_9
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->array$B:Ljava/lang/Class;

    goto :goto_9
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static coerce(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->getCoercion(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;->coerce(Lorg/luaj/vm2/LuaValue;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getCoercion(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$Coercion;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    new-instance v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ArrayCoercion;-><init>(Ljava/lang/Class;)V

    :goto_1
    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->COERCIONS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava$ObjectCoercion;-><init>(Ljava/lang/Class;)V

    goto :goto_1
.end method

.method static final inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget v0, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    sget v1, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->SCORE_UNCOERCIBLE:I

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-static {p0, v3}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->inheritanceLevels(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
