.class final Lcom/google/gson/DelegatingJsonElementVisitor;
.super Ljava/lang/Object;
.source "DelegatingJsonElementVisitor.java"

# interfaces
.implements Lcom/google/gson/JsonElementVisitor;


# instance fields
.field private final delegate:Lcom/google/gson/JsonElementVisitor;


# direct methods
.method protected constructor <init>(Lcom/google/gson/JsonElementVisitor;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElementVisitor;

    iput-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    .line 54
    return-void
.end method


# virtual methods
.method public final endArray(Lcom/google/gson/JsonArray;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->endArray(Lcom/google/gson/JsonArray;)V

    .line 58
    return-void
.end method

.method public final endObject(Lcom/google/gson/JsonObject;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->endObject(Lcom/google/gson/JsonObject;)V

    .line 62
    return-void
.end method

.method public final startArray(Lcom/google/gson/JsonArray;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->startArray(Lcom/google/gson/JsonArray;)V

    .line 66
    return-void
.end method

.method public final startObject(Lcom/google/gson/JsonObject;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->startObject(Lcom/google/gson/JsonObject;)V

    .line 70
    return-void
.end method

.method public final visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V

    .line 80
    return-void
.end method

.method public final visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V

    .line 85
    return-void
.end method

.method public final visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonPrimitive;Z)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonPrimitive;Z)V

    .line 75
    return-void
.end method

.method public final visitNull()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0}, Lcom/google/gson/JsonElementVisitor;->visitNull()V

    .line 113
    return-void
.end method

.method public final visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2}, Lcom/google/gson/JsonElementVisitor;->visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V

    .line 117
    return-void
.end method

.method public final visitNullObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gson/JsonElementVisitor;->visitNullObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method public final visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V

    .line 95
    return-void
.end method

.method public final visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V

    .line 100
    return-void
.end method

.method public final visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonPrimitive;Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonPrimitive;Z)V

    .line 90
    return-void
.end method

.method public final visitPrimitive(Lcom/google/gson/JsonPrimitive;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->visitPrimitive(Lcom/google/gson/JsonPrimitive;)V

    .line 109
    return-void
.end method
