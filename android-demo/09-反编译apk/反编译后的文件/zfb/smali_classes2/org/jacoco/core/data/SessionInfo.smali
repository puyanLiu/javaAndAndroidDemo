.class public Lorg/jacoco/core/data/SessionInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jacoco/core/data/SessionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jacoco/core/data/SessionInfo;->a:Ljava/lang/String;

    iput-wide p2, p0, Lorg/jacoco/core/data/SessionInfo;->b:J

    iput-wide p4, p0, Lorg/jacoco/core/data/SessionInfo;->c:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jacoco/core/data/SessionInfo;

    invoke-virtual {p0, p1}, Lorg/jacoco/core/data/SessionInfo;->compareTo(Lorg/jacoco/core/data/SessionInfo;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jacoco/core/data/SessionInfo;)I
    .locals 4

    iget-wide v0, p0, Lorg/jacoco/core/data/SessionInfo;->c:J

    iget-wide v2, p1, Lorg/jacoco/core/data/SessionInfo;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/jacoco/core/data/SessionInfo;->c:J

    iget-wide v2, p1, Lorg/jacoco/core/data/SessionInfo;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDumpTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lorg/jacoco/core/data/SessionInfo;->c:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jacoco/core/data/SessionInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lorg/jacoco/core/data/SessionInfo;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SessionInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jacoco/core/data/SessionInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
