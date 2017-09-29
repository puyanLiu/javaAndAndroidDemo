.class final Lcom/google/gson/DefaultTypeAdapters$LongSerializer;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# instance fields
.field private final longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;


# direct methods
.method private constructor <init>(Lcom/google/gson/LongSerializationPolicy;)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-object p1, p0, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 759
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/LongSerializationPolicy;Lcom/google/gson/DefaultTypeAdapters$1;)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;-><init>(Lcom/google/gson/LongSerializationPolicy;)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Long;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    invoke-virtual {v0, p1}, Lcom/google/gson/LongSerializationPolicy;->serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 754
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;->serialize(Ljava/lang/Long;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    const-class v0, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
