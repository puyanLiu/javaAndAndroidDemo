.class interface abstract Lcom/google/gson/JsonElementVisitor;
.super Ljava/lang/Object;
.source "JsonElementVisitor.java"


# virtual methods
.method public abstract endArray(Lcom/google/gson/JsonArray;)V
.end method

.method public abstract endObject(Lcom/google/gson/JsonObject;)V
.end method

.method public abstract startArray(Lcom/google/gson/JsonArray;)V
.end method

.method public abstract startObject(Lcom/google/gson/JsonObject;)V
.end method

.method public abstract visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V
.end method

.method public abstract visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V
.end method

.method public abstract visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonPrimitive;Z)V
.end method

.method public abstract visitNull()V
.end method

.method public abstract visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V
.end method

.method public abstract visitNullObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V
.end method

.method public abstract visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V
.end method

.method public abstract visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V
.end method

.method public abstract visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonPrimitive;Z)V
.end method

.method public abstract visitPrimitive(Lcom/google/gson/JsonPrimitive;)V
.end method
