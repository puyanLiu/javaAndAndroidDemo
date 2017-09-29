.class final Lanetwork/channel/degrade/util/b;
.super Ljava/lang/Object;
.source "DegradeHelper.java"


# instance fields
.field public a:Z

.field public b:J


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/degrade/util/b;->a:Z

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanetwork/channel/degrade/util/b;->b:J

    .line 23
    iput-boolean p1, p0, Lanetwork/channel/degrade/util/b;->a:Z

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/degrade/util/b;->b:J

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 28
    iget-boolean v0, p0, Lanetwork/channel/degrade/util/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lanetwork/channel/degrade/util/b;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
