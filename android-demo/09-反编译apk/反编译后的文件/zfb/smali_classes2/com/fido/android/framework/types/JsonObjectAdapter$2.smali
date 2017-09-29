.class final Lcom/fido/android/framework/types/JsonObjectAdapter$2;
.super Ljava/lang/Object;
.source "JsonObjectAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serialize(Lcom/google/gson/JsonObject;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .prologue
    .line 34
    return-object p1
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fido/android/framework/types/JsonObjectAdapter$2;->serialize(Lcom/google/gson/JsonObject;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
