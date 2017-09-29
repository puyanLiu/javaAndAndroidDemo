.class final Lcom/google/gson/MemoryRefStack;
.super Ljava/lang/Object;
.source "MemoryRefStack.java"


# instance fields
.field private final stack:Ljava/util/Stack;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final contains(Lcom/google/gson/ObjectTypePair;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 76
    if-nez p1, :cond_0

    move v0, v1

    .line 86
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/ObjectTypePair;

    .line 81
    invoke-virtual {v0}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    iget-object v0, v0, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    iget-object v3, p1, Lcom/google/gson/ObjectTypePair;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final peek()Lcom/google/gson/ObjectTypePair;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/ObjectTypePair;

    return-object v0
.end method

.method public final pop()Lcom/google/gson/ObjectTypePair;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/ObjectTypePair;

    return-object v0
.end method

.method public final push(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/ObjectTypePair;
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/google/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/ObjectTypePair;

    return-object v0
.end method
