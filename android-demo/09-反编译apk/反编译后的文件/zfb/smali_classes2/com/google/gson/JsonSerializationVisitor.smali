.class final Lcom/google/gson/JsonSerializationVisitor;
.super Ljava/lang/Object;
.source "JsonSerializationVisitor.java"

# interfaces
.implements Lcom/google/gson/ObjectNavigator$Visitor;


# instance fields
.field private final ancestors:Lcom/google/gson/MemoryRefStack;

.field private final context:Lcom/google/gson/JsonSerializationContext;

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

.field private final objectNavigator:Lcom/google/gson/ObjectNavigator;

.field private root:Lcom/google/gson/JsonElement;

.field private final serializeNulls:Z

.field private final serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;


# direct methods
.method constructor <init>(Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonSerializationContext;Lcom/google/gson/MemoryRefStack;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/gson/JsonSerializationVisitor;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    .line 45
    iput-object p2, p0, Lcom/google/gson/JsonSerializationVisitor;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    .line 46
    iput-boolean p3, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    .line 47
    iput-object p4, p0, Lcom/google/gson/JsonSerializationVisitor;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 48
    iput-object p5, p0, Lcom/google/gson/JsonSerializationVisitor;->context:Lcom/google/gson/JsonSerializationContext;

    .line 49
    iput-object p6, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    .line 50
    return-void
.end method

.method private addAsArrayElement(Lcom/google/gson/ObjectTypePair;)V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/gson/JsonSerializationVisitor;->getJsonElementForChild(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0
.end method

.method private addAsChildOfObject(Lcom/google/gson/FieldAttributes;Lcom/google/gson/ObjectTypePair;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p2}, Lcom/google/gson/JsonSerializationVisitor;->getJsonElementForChild(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Lcom/google/gson/FieldAttributes;Lcom/google/gson/JsonElement;)V

    .line 129
    return-void
.end method

.method private addChildAsElement(Lcom/google/gson/FieldAttributes;Lcom/google/gson/JsonElement;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    invoke-interface {v1, p1}, Lcom/google/gson/FieldNamingStrategy2;->translateName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 133
    return-void
.end method

.method private assignToRoot(Lcom/google/gson/JsonElement;)V
    .locals 1

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    iput-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    .line 219
    return-void
.end method

.method private findAndInvokeCustomSerializer(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {p1, v0}, Lcom/google/gson/ObjectTypePair;->getMatchingHandler(Lcom/google/gson/ParameterizedTypeHandlerMap;)Lcom/google/gson/Pair;

    move-result-object v1

    .line 177
    if-nez v1, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 180
    :cond_0
    iget-object v0, v1, Lcom/google/gson/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/JsonSerializer;

    .line 181
    iget-object v1, v1, Lcom/google/gson/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/gson/ObjectTypePair;

    .line 182
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonSerializationVisitor;->start(Lcom/google/gson/ObjectTypePair;)V

    .line 184
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/JsonSerializationVisitor;->context:Lcom/google/gson/JsonSerializationContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 186
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 188
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonSerializationVisitor;->end(Lcom/google/gson/ObjectTypePair;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonSerializationVisitor;->end(Lcom/google/gson/ObjectTypePair;)V

    throw v0
.end method

.method private getFieldValue(Lcom/google/gson/FieldAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/gson/FieldAttributes;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getJsonElementForChild(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;
    .locals 7

    .prologue
    .line 145
    new-instance v0, Lcom/google/gson/JsonSerializationVisitor;

    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    iget-object v2, p0, Lcom/google/gson/JsonSerializationVisitor;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    iget-boolean v3, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    iget-object v4, p0, Lcom/google/gson/JsonSerializationVisitor;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    iget-object v5, p0, Lcom/google/gson/JsonSerializationVisitor;->context:Lcom/google/gson/JsonSerializationContext;

    iget-object v6, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/JsonSerializationVisitor;-><init>(Lcom/google/gson/ObjectNavigator;Lcom/google/gson/FieldNamingStrategy2;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonSerializationContext;Lcom/google/gson/MemoryRefStack;)V

    .line 147
    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->objectNavigator:Lcom/google/gson/ObjectNavigator;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/ObjectNavigator;->accept(Lcom/google/gson/ObjectTypePair;Lcom/google/gson/ObjectNavigator$Visitor;)V

    .line 148
    invoke-virtual {v0}, Lcom/google/gson/JsonSerializationVisitor;->getJsonElement()Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method private isFieldNull(Lcom/google/gson/FieldAttributes;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/google/gson/JsonSerializationVisitor;->getFieldValue(Lcom/google/gson/FieldAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final end(Lcom/google/gson/ObjectTypePair;)V
    .locals 1

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    invoke-virtual {v0}, Lcom/google/gson/MemoryRefStack;->pop()Lcom/google/gson/ObjectTypePair;

    .line 70
    :cond_0
    return-void
.end method

.method public final getJsonElement()Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public final getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public final start(Lcom/google/gson/ObjectTypePair;)V
    .locals 1

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    invoke-virtual {v0, p1}, Lcom/google/gson/MemoryRefStack;->contains(Lcom/google/gson/ObjectTypePair;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcom/google/gson/CircularReferenceException;

    invoke-direct {v0, p1}, Lcom/google/gson/CircularReferenceException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    invoke-virtual {v0, p1}, Lcom/google/gson/MemoryRefStack;->push(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/ObjectTypePair;

    goto :goto_0
.end method

.method public final startVisitingObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V

    .line 74
    return-void
.end method

.method public final visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 77
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V

    .line 78
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 79
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    move v0, v1

    .line 80
    :goto_0
    if-ge v0, v2, :cond_0

    .line 81
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 84
    new-instance v5, Lcom/google/gson/ObjectTypePair;

    invoke-direct {v5, v4, v3, v1}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, v5}, Lcom/google/gson/JsonSerializationVisitor;->addAsArrayElement(Lcom/google/gson/ObjectTypePair;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public final visitArrayField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/google/gson/JsonSerializationVisitor;->isFieldNull(Lcom/google/gson/FieldAttributes;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-boolean v0, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Lcom/google/gson/FieldAttributes;Lcom/google/gson/JsonElement;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/google/gson/JsonSerializationVisitor;->getFieldValue(Lcom/google/gson/FieldAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/google/gson/ObjectTypePair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v1}, Lcom/google/gson/JsonSerializationVisitor;->addAsChildOfObject(Lcom/google/gson/FieldAttributes;Lcom/google/gson/ObjectTypePair;)V
    :try_end_0
    .catch Lcom/google/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Lcom/google/gson/CircularReferenceException;->createDetailedException(Lcom/google/gson/FieldAttributes;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final visitFieldUsingCustomHandler(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Preconditions;->checkState(Z)V

    .line 196
    invoke-virtual {p1, p3}, Lcom/google/gson/FieldAttributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 197
    if-nez v2, :cond_1

    .line 198
    iget-boolean v1, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v1, :cond_0

    .line 199
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Lcom/google/gson/FieldAttributes;Lcom/google/gson/JsonElement;)V

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    new-instance v3, Lcom/google/gson/ObjectTypePair;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p2, v4}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    .line 204
    invoke-direct {p0, v3}, Lcom/google/gson/JsonSerializationVisitor;->findAndInvokeCustomSerializer(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_2

    .line 206
    invoke-direct {p0, p1, v2}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Lcom/google/gson/FieldAttributes;Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    .line 209
    goto :goto_0

    .line 212
    :catch_1
    move-exception v0

    invoke-virtual {v0, p1}, Lcom/google/gson/CircularReferenceException;->createDetailedException(Lcom/google/gson/FieldAttributes;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final visitObjectField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/google/gson/JsonSerializationVisitor;->isFieldNull(Lcom/google/gson/FieldAttributes;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-boolean v0, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Lcom/google/gson/FieldAttributes;Lcom/google/gson/JsonElement;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/google/gson/JsonSerializationVisitor;->getFieldValue(Lcom/google/gson/FieldAttributes;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/google/gson/ObjectTypePair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v1}, Lcom/google/gson/JsonSerializationVisitor;->addAsChildOfObject(Lcom/google/gson/FieldAttributes;Lcom/google/gson/ObjectTypePair;)V
    :try_end_0
    .catch Lcom/google/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Lcom/google/gson/CircularReferenceException;->createDetailedException(Lcom/google/gson/FieldAttributes;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final visitPrimitive(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 122
    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    .line 123
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final visitUsingCustomHandler(Lcom/google/gson/ObjectTypePair;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 154
    if-nez v1, :cond_1

    .line 155
    iget-boolean v1, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gson/JsonSerializationVisitor;->findAndInvokeCustomSerializer(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_2

    .line 162
    invoke-direct {p0, v1}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Lcom/google/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gson/CircularReferenceException;->createDetailedException(Lcom/google/gson/FieldAttributes;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 165
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
