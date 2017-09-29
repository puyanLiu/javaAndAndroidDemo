.class final Lcom/google/gson/JsonTreeNavigator;
.super Ljava/lang/Object;
.source "JsonTreeNavigator.java"


# instance fields
.field private final visitNulls:Z

.field private final visitor:Lcom/google/gson/JsonElementVisitor;


# direct methods
.method constructor <init>(Lcom/google/gson/JsonElementVisitor;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    .line 33
    iput-boolean p2, p0, Lcom/google/gson/JsonTreeNavigator;->visitNulls:Z

    .line 34
    return-void
.end method

.method private visitChild(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonElement;Z)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p3}, Lcom/google/gson/JsonElementVisitor;->visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V

    .line 98
    invoke-virtual {p0, p2}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v1, p1, v0, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v1, p1, v0, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonPrimitive;Z)V

    goto :goto_0
.end method

.method private visitChild(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;Z)Z
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-boolean v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitNulls:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p4}, Lcom/google/gson/JsonElementVisitor;->visitNullObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    .line 89
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v1, p1, p2, v0, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v1, p1, p2, v0, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonTreeNavigator;->navigate(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonPrimitive;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final navigate(Lcom/google/gson/JsonElement;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0}, Lcom/google/gson/JsonElementVisitor;->visitNull()V

    .line 64
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 41
    iget-object v1, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v1, v3}, Lcom/google/gson/JsonElementVisitor;->startArray(Lcom/google/gson/JsonArray;)V

    .line 43
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 44
    invoke-direct {p0, v3, v0, v1}, Lcom/google/gson/JsonTreeNavigator;->visitChild(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonElement;Z)V

    .line 45
    if-eqz v1, :cond_6

    move v0, v2

    :goto_2
    move v1, v0

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, v3}, Lcom/google/gson/JsonElementVisitor;->endArray(Lcom/google/gson/JsonArray;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 52
    iget-object v1, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v1, v4}, Lcom/google/gson/JsonElementVisitor;->startObject(Lcom/google/gson/JsonObject;)V

    .line 54
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-direct {p0, v4, v1, v0, v3}, Lcom/google/gson/JsonTreeNavigator;->visitChild(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;Z)Z

    move-result v0

    .line 56
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    move v0, v2

    :goto_4
    move v3, v0

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, v4}, Lcom/google/gson/JsonElementVisitor;->endObject(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/google/gson/JsonTreeNavigator;->visitor:Lcom/google/gson/JsonElementVisitor;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gson/JsonElementVisitor;->visitPrimitive(Lcom/google/gson/JsonPrimitive;)V

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_2
.end method
