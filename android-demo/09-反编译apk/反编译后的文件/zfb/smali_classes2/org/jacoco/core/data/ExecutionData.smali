.class public final Lorg/jacoco/core/data/ExecutionData;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:[Z


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/jacoco/core/data/ExecutionData;->a:J

    iput-object p3, p0, Lorg/jacoco/core/data/ExecutionData;->b:Ljava/lang/String;

    new-array v0, p4, [Z

    iput-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->c:[Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/jacoco/core/data/ExecutionData;->a:J

    iput-object p3, p0, Lorg/jacoco/core/data/ExecutionData;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/jacoco/core/data/ExecutionData;->c:[Z

    return-void
.end method


# virtual methods
.method public final assertCompatibility(JLjava/lang/String;I)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-wide v0, p0, Lorg/jacoco/core/data/ExecutionData;->a:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Different ids (%016x and %016x)."

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lorg/jacoco/core/data/ExecutionData;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->b:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Different class names %s and %s for id %016x."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jacoco/core/data/ExecutionData;->b:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->c:[Z

    array-length v0, v0

    if-eq v0, p4, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Incompatible execution data for class %s with id %016x."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lorg/jacoco/core/data/ExecutionData;->a:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getProbes()[Z
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->c:[Z

    return-object v0
.end method

.method public final merge(Lorg/jacoco/core/data/ExecutionData;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jacoco/core/data/ExecutionData;->merge(Lorg/jacoco/core/data/ExecutionData;Z)V

    return-void
.end method

.method public final merge(Lorg/jacoco/core/data/ExecutionData;Z)V
    .locals 4

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getProbes()[Z

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/jacoco/core/data/ExecutionData;->assertCompatibility(JLjava/lang/String;I)V

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getProbes()[Z

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/jacoco/core/data/ExecutionData;->c:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jacoco/core/data/ExecutionData;->c:[Z

    aput-boolean p2, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->c:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "ExecutionData[name=%s, id=%016x]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jacoco/core/data/ExecutionData;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/jacoco/core/data/ExecutionData;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
