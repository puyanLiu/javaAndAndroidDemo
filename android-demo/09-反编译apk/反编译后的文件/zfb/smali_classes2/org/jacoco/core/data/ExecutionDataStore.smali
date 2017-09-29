.class public final Lorg/jacoco/core/data/ExecutionDataStore;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jacoco/core/data/IExecutionDataVisitor;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/jacoco/core/data/ExecutionData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Lorg/jacoco/core/data/IExecutionDataVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/data/ExecutionData;

    invoke-interface {p1, v0}, Lorg/jacoco/core/data/IExecutionDataVisitor;->visitClassExecution(Lorg/jacoco/core/data/ExecutionData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(J)Lorg/jacoco/core/data/ExecutionData;
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/data/ExecutionData;

    return-object v0
.end method

.method public final get(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/core/data/ExecutionData;
    .locals 3

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/data/ExecutionData;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jacoco/core/data/ExecutionData;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p2, p3}, Lorg/jacoco/core/data/ExecutionData;-><init>(JLjava/lang/String;I)V

    iget-object v1, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/jacoco/core/data/ExecutionDataStore;->b:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lorg/jacoco/core/data/ExecutionData;->assertCompatibility(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method public final getContents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jacoco/core/data/ExecutionData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final put(Lorg/jacoco/core/data/ExecutionData;)V
    .locals 2

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/data/ExecutionData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/jacoco/core/data/ExecutionData;->merge(Lorg/jacoco/core/data/ExecutionData;)V

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/data/ExecutionData;

    invoke-virtual {v0}, Lorg/jacoco/core/data/ExecutionData;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final subtract(Lorg/jacoco/core/data/ExecutionData;)V
    .locals 2

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/core/data/ExecutionDataStore;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/data/ExecutionData;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/jacoco/core/data/ExecutionData;->merge(Lorg/jacoco/core/data/ExecutionData;Z)V

    :cond_0
    return-void
.end method

.method public final subtract(Lorg/jacoco/core/data/ExecutionDataStore;)V
    .locals 2

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionDataStore;->getContents()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/data/ExecutionData;

    invoke-virtual {p0, v0}, Lorg/jacoco/core/data/ExecutionDataStore;->subtract(Lorg/jacoco/core/data/ExecutionData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final visitClassExecution(Lorg/jacoco/core/data/ExecutionData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jacoco/core/data/ExecutionDataStore;->put(Lorg/jacoco/core/data/ExecutionData;)V

    return-void
.end method
