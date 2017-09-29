.class abstract Lcom/google/gson/CompositionFieldNamingPolicy;
.super Lcom/google/gson/RecursiveFieldNamingPolicy;
.source "CompositionFieldNamingPolicy.java"


# instance fields
.field private final fieldPolicies:[Lcom/google/gson/RecursiveFieldNamingPolicy;


# direct methods
.method public varargs constructor <init>([Lcom/google/gson/RecursiveFieldNamingPolicy;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gson/RecursiveFieldNamingPolicy;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "naming policies can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/gson/CompositionFieldNamingPolicy;->fieldPolicies:[Lcom/google/gson/RecursiveFieldNamingPolicy;

    .line 37
    return-void
.end method


# virtual methods
.method protected translateName(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/google/gson/CompositionFieldNamingPolicy;->fieldPolicies:[Lcom/google/gson/RecursiveFieldNamingPolicy;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 42
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/gson/RecursiveFieldNamingPolicy;->translateName(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-object p1
.end method
