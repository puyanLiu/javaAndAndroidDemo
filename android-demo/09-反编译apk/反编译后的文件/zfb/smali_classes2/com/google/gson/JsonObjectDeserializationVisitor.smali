.class final Lcom/google/gson/JsonObjectDeserializationVisitor;
.super Lcom/google/gson/JsonDeserializationVisitor;
.source "JsonObjectDeserializationVisitor.java"


# direct methods
.method constructor <init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p7}, Lcom/google/gson/JsonDeserializationVisitor;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V

    .line 37
    return-void
.end method

.method private getFieldName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    invoke-interface {v0, p1}, Lcom/google/gson/FieldNamingStrategy2;->translateName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final constructTarget()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->objectConstructor:Lcom/google/gson/ObjectConstructor;

    iget-object v1, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final startVisitingObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public final visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expecting object but found array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final visitArrayField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expecting object found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/gson/JsonObjectDeserializationVisitor;->getFieldName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0, p2, v0}, Lcom/google/gson/JsonObjectDeserializationVisitor;->visitChildAsArray(Ljava/lang/reflect/Type;Lcom/google/gson/JsonArray;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    invoke-virtual {p1, p3, v0}, Lcom/google/gson/FieldAttributes;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/google/gson/FieldAttributes;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final visitFieldUsingCustomHandler(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/gson/JsonObjectDeserializationVisitor;->getFieldName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expecting object found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 102
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 103
    invoke-static {p2}, Lcom/google/gson/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v3

    .line 104
    if-nez v2, :cond_2

    .line 121
    :cond_1
    :goto_0
    return v0

    .line 106
    :cond_2
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    if-nez v3, :cond_1

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Lcom/google/gson/FieldAttributes;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_3
    new-instance v4, Lcom/google/gson/ObjectTypePair;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, p2, v6}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    .line 113
    iget-object v5, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4, v5}, Lcom/google/gson/ObjectTypePair;->getMatchingHandler(Lcom/google/gson/ParameterizedTypeHandlerMap;)Lcom/google/gson/Pair;

    move-result-object v4

    .line 114
    if-nez v4, :cond_4

    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0, v2, v4}, Lcom/google/gson/JsonObjectDeserializationVisitor;->invokeCustomDeserializer(Lcom/google/gson/JsonElement;Lcom/google/gson/Pair;)Ljava/lang/Object;

    move-result-object v1

    .line 118
    if-nez v1, :cond_5

    if-nez v3, :cond_1

    .line 119
    :cond_5
    invoke-virtual {p1, p3, v1}, Lcom/google/gson/FieldAttributes;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final visitObjectField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expecting object found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/gson/JsonObjectDeserializationVisitor;->getFieldName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0, p2, v0}, Lcom/google/gson/JsonObjectDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    invoke-virtual {p1, p3, v0}, Lcom/google/gson/FieldAttributes;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/google/gson/FieldAttributes;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final visitPrimitive(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Type information is unavailable, and the target object is not a primitive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/JsonObjectDeserializationVisitor;->target:Ljava/lang/Object;

    .line 135
    return-void
.end method
