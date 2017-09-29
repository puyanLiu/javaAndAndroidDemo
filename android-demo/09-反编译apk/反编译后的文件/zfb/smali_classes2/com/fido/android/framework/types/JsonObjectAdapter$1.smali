.class final Lcom/fido/android/framework/types/JsonObjectAdapter$1;
.super Ljava/lang/Object;
.source "JsonObjectAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/google/gson/JsonObject;
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method public final bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/fido/android/framework/types/JsonObjectAdapter$1;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method
