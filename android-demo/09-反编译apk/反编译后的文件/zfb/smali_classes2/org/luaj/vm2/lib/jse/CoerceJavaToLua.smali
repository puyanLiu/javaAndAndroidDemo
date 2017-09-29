.class public Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;
.super Ljava/lang/Object;


# static fields
.field static final COERCIONS:Ljava/util/Map;

.field static array$B:Ljava/lang/Class;

.field static final arrayCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Class:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field static final instanceCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

.field static final luaCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    new-instance v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$1;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$1;-><init>()V

    new-instance v2, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$2;

    invoke-direct {v2}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$2;-><init>()V

    new-instance v3, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$3;

    invoke-direct {v3}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$3;-><init>()V

    new-instance v4, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$4;

    invoke-direct {v4}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$4;-><init>()V

    new-instance v5, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$5;

    invoke-direct {v5}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$5;-><init>()V

    new-instance v6, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$6;

    invoke-direct {v6}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$6;-><init>()V

    new-instance v7, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$7;

    invoke-direct {v7}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$7;-><init>()V

    sget-object v8, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_0
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "java.lang.Byte"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_1
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.Character"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Character:Ljava/lang/Class;

    :goto_2
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string/jumbo v0, "java.lang.Short"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Short:Ljava/lang/Class;

    :goto_3
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string/jumbo v0, "java.lang.Integer"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_4
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string/jumbo v0, "java.lang.Long"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Long:Ljava/lang/Class;

    :goto_5
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string/jumbo v0, "java.lang.Float"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Float:Ljava/lang/Class;

    :goto_6
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string/jumbo v0, "java.lang.Double"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Double:Ljava/lang/Class;

    :goto_7
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$String:Ljava/lang/Class;

    :goto_8
    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->array$B:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string/jumbo v0, "[B"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->array$B:Ljava/lang/Class;

    :goto_9
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string/jumbo v0, "java.lang.Class"

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Class:Ljava/lang/Class;

    :goto_a
    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$8;

    invoke-direct {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$8;-><init>()V

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->instanceCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

    new-instance v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$9;

    invoke-direct {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$9;-><init>()V

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->arrayCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

    new-instance v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$10;

    invoke-direct {v0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$10;-><init>()V

    sput-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->luaCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

    return-void

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Long:Ljava/lang/Class;

    goto/16 :goto_5

    :cond_6
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_7

    :cond_8
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_8

    :cond_9
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->array$B:Ljava/lang/Class;

    goto :goto_9

    :cond_a
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_a
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

.method public static coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->arrayCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

    :goto_1
    sget-object v2, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->COERCIONS:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p0}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->luaCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->instanceCoercion:Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;

    goto :goto_1
.end method
