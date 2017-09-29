.class final Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;
.super Ljava/lang/Object;
.source "SerializedNameAnnotationInterceptingNamingPolicy.java"

# interfaces
.implements Lcom/google/gson/FieldNamingStrategy2;


# instance fields
.field private final delegate:Lcom/google/gson/FieldNamingStrategy2;


# direct methods
.method constructor <init>(Lcom/google/gson/FieldNamingStrategy2;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;->delegate:Lcom/google/gson/FieldNamingStrategy2;

    .line 42
    return-void
.end method


# virtual methods
.method public final translateName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Lcom/google/gson/FieldAttributes;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/SerializedName;

    .line 46
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;->delegate:Lcom/google/gson/FieldNamingStrategy2;

    invoke-interface {v0, p1}, Lcom/google/gson/FieldNamingStrategy2;->translateName(Lcom/google/gson/FieldAttributes;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
