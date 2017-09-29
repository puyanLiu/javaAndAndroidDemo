.class final Lcom/google/gson/SyntheticFieldExclusionStrategy;
.super Ljava/lang/Object;
.source "SyntheticFieldExclusionStrategy.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# instance fields
.field private final skipSyntheticFields:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/google/gson/SyntheticFieldExclusionStrategy;->skipSyntheticFields:Z

    .line 34
    return-void
.end method


# virtual methods
.method public final shouldSkipClass(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/gson/SyntheticFieldExclusionStrategy;->skipSyntheticFields:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
