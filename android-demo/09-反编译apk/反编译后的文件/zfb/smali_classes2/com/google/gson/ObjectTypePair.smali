.class final Lcom/google/gson/ObjectTypePair;
.super Ljava/lang/Object;
.source "ObjectTypePair.java"


# instance fields
.field private obj:Ljava/lang/Object;

.field private final preserveType:Z

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    .line 34
    iput-boolean p3, p0, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    .line 35
    return-void
.end method

.method static getActualTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 93
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 94
    check-cast v0, Ljava/lang/Class;

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    .line 98
    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    move-object p0, p1

    .line 102
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    check-cast p1, Lcom/google/gson/ObjectTypePair;

    .line 124
    iget-object v2, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 125
    iget-object v2, p1, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    if-nez v2, :cond_6

    .line 132
    iget-object v2, p1, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_7

    move v0, v1

    .line 133
    goto :goto_0

    .line 135
    :cond_6
    iget-object v2, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    iget-object v3, p1, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_7
    iget-boolean v2, p0, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    iget-boolean v3, p1, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final getMatchingHandler(Lcom/google/gson/ParameterizedTypeHandlerMap;)Lcom/google/gson/Pair;
    .locals 3

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/gson/ObjectTypePair;->toMoreSpecificType()Lcom/google/gson/ObjectTypePair;

    move-result-object v1

    .line 60
    iget-object v0, v1, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    new-instance v0, Lcom/google/gson/Pair;

    invoke-direct {v0, v2, v1}, Lcom/google/gson/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->getHandlerFor(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/gson/Pair;

    invoke-direct {v0, v1, p0}, Lcom/google/gson/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final getMoreSpecificType()Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gson/ObjectTypePair;->getActualTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method final getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isPreserveType()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    return v0
.end method

.method final setObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method final toMoreSpecificType()Lcom/google/gson/ObjectTypePair;
    .locals 4

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object p0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gson/ObjectTypePair;->getActualTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 75
    iget-object v0, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    if-eq v1, v0, :cond_0

    .line 78
    new-instance v0, Lcom/google/gson/ObjectTypePair;

    iget-object v2, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    invoke-direct {v0, v2, v1, v3}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "preserveType: %b, type: %s, obj: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/gson/ObjectTypePair;->preserveType:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/gson/ObjectTypePair;->obj:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
