.class public interface abstract Lcom/google/gson/ObjectNavigator$Visitor;
.super Ljava/lang/Object;
.source "ObjectNavigator.java"


# virtual methods
.method public abstract end(Lcom/google/gson/ObjectTypePair;)V
.end method

.method public abstract getTarget()Ljava/lang/Object;
.end method

.method public abstract start(Lcom/google/gson/ObjectTypePair;)V
.end method

.method public abstract startVisitingObject(Ljava/lang/Object;)V
.end method

.method public abstract visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.end method

.method public abstract visitArrayField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
.end method

.method public abstract visitFieldUsingCustomHandler(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
.end method

.method public abstract visitObjectField(Lcom/google/gson/FieldAttributes;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
.end method

.method public abstract visitPrimitive(Ljava/lang/Object;)V
.end method

.method public abstract visitUsingCustomHandler(Lcom/google/gson/ObjectTypePair;)Z
.end method
