.class public Lanetwork/channel/statist/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# static fields
.field private static q:Lanetwork/channel/statist/IReportStatics;


# instance fields
.field protected a:Lanetwork/channel/entity/ConnTypeEnum;

.field protected b:J

.field protected c:J

.field protected d:J

.field protected e:J

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:J

.field protected j:J

.field protected k:I

.field protected l:I

.field protected m:Z

.field private n:Ljava/lang/String;

.field private o:Lanetwork/channel/entity/RequestConfig;

.field private p:Z

.field private r:Lanetwork/channel/statist/StatisticData;


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v2, "ANet.Statistcs"

    iput-object v2, p0, Lanetwork/channel/statist/Statistics;->n:Ljava/lang/String;

    .line 32
    sget-object v2, Lanetwork/channel/entity/ConnTypeEnum;->HTTP:Lanetwork/channel/entity/ConnTypeEnum;

    iput-object v2, p0, Lanetwork/channel/statist/Statistics;->a:Lanetwork/channel/entity/ConnTypeEnum;

    .line 34
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lanetwork/channel/statist/Statistics;->c:J

    .line 44
    iput-boolean v1, p0, Lanetwork/channel/statist/Statistics;->m:Z

    .line 45
    iput-boolean v1, p0, Lanetwork/channel/statist/Statistics;->p:Z

    .line 49
    const/4 v2, 0x0

    iput-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    .line 55
    iput-object p1, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    .line 56
    new-instance v2, Lanetwork/channel/statist/StatisticData;

    invoke-direct {v2}, Lanetwork/channel/statist/StatisticData;-><init>()V

    iput-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lanetwork/channel/statist/StatisticData;->c:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->p()Lanetwork/channel/entity/ConnTypeEnum;

    move-result-object v2

    iput-object v2, p0, Lanetwork/channel/statist/Statistics;->a:Lanetwork/channel/entity/ConnTypeEnum;

    .line 60
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v3, p0, Lanetwork/channel/statist/Statistics;->a:Lanetwork/channel/entity/ConnTypeEnum;

    iput-object v3, v2, Lanetwork/channel/statist/StatisticData;->a:Lanetwork/channel/entity/ConnTypeEnum;

    .line 61
    sget-object v2, Lanetwork/channel/entity/ConnTypeEnum;->SPDY:Lanetwork/channel/entity/ConnTypeEnum;

    iget-object v3, p0, Lanetwork/channel/statist/Statistics;->a:Lanetwork/channel/entity/ConnTypeEnum;

    invoke-virtual {v2, v3}, Lanetwork/channel/entity/ConnTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lanetwork/channel/statist/Statistics;->p:Z

    .line 62
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-boolean v3, p0, Lanetwork/channel/statist/Statistics;->p:Z

    iput-boolean v3, v2, Lanetwork/channel/statist/StatisticData;->e:Z

    .line 63
    iget-boolean v2, p0, Lanetwork/channel/statist/Statistics;->p:Z

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->w()I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    iput-boolean v0, v2, Lanetwork/channel/statist/StatisticData;->f:Z

    .line 70
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-static {v0}, Lmtopsdk/common/util/StringUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lanetwork/channel/statist/StatisticData;->f:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->c:J

    .line 74
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->c:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->d:J

    .line 75
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->c:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->e:J

    .line 76
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->c:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->h:J

    .line 77
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->c:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->i:J

    .line 78
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->c:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->j:J

    .line 79
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->o()Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->c:J

    :goto_0
    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->b:J

    .line 80
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->o()Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object v0

    iget-wide v0, v0, Lanetwork/channel/aidl/ParcelableRequest;->a:J

    goto :goto_0
.end method

.method public final a(J)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 130
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->c:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lanetwork/channel/statist/Statistics;->a()V

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->j:J

    .line 134
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iput-wide p1, v0, Lanetwork/channel/statist/StatisticData;->v:J

    .line 136
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p0, Lanetwork/channel/statist/Statistics;->j:J

    iget-wide v3, p0, Lanetwork/channel/statist/Statistics;->i:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->q:J

    .line 137
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, v1, Lanetwork/channel/statist/StatisticData;->q:J

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->r:J

    .line 138
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v0, v0, Lanetwork/channel/statist/StatisticData;->q:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v0, v0, Lanetwork/channel/statist/StatisticData;->v:J

    iget-object v3, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v3, v3, Lanetwork/channel/statist/StatisticData;->q:J

    div-long/2addr v0, v3

    :goto_0
    iput-wide v0, v2, Lanetwork/channel/statist/StatisticData;->x:J

    .line 140
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->a:Lanetwork/channel/entity/ConnTypeEnum;

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, v1, Lanetwork/channel/statist/StatisticData;->q:J

    iget-boolean v5, p0, Lanetwork/channel/statist/Statistics;->m:Z

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lanetwork/channel/statist/ANetPerformanceStatistics;->a(Lanetwork/channel/entity/ConnTypeEnum;JJZ)V

    .line 141
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v0, v0, Lanetwork/channel/statist/StatisticData;->v:J

    goto :goto_0
.end method

.method public final a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v11, 0xfe57

    const/4 v10, -0x1

    .line 149
    iget-wide v2, p0, Lanetwork/channel/statist/Statistics;->c:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lanetwork/channel/statist/Statistics;->a()V

    .line 152
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lanetwork/channel/statist/Statistics;->j:J

    .line 153
    invoke-virtual {p1}, Lanetwork/channel/aidl/DefaultFinishEvent;->a()I

    move-result v2

    if-lez v2, :cond_6

    .line 154
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lanetwork/channel/statist/StatisticData;->b:Z

    .line 159
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, p0, Lanetwork/channel/statist/Statistics;->d:J

    iget-wide v8, p0, Lanetwork/channel/statist/Statistics;->c:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->d:J

    iget-wide v6, p0, Lanetwork/channel/statist/Statistics;->c:J

    sub-long/2addr v0, v6

    :cond_1
    long-to-int v0, v0

    iput v0, v2, Lanetwork/channel/statist/StatisticData;->g:I

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p0, Lanetwork/channel/statist/Statistics;->e:J

    iget-wide v6, p0, Lanetwork/channel/statist/Statistics;->c:J

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->i:J

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, v1, Lanetwork/channel/statist/StatisticData;->i:J

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->j:J

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p0, Lanetwork/channel/statist/Statistics;->j:J

    iget-wide v6, p0, Lanetwork/channel/statist/Statistics;->b:J

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->k:J

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p0, Lanetwork/channel/statist/Statistics;->j:J

    iget-wide v6, p0, Lanetwork/channel/statist/Statistics;->c:J

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->l:J

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v2, v0, Lanetwork/channel/statist/StatisticData;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v0, v0, Lanetwork/channel/statist/StatisticData;->l:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :try_start_2
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-boolean v0, v0, Lanetwork/channel/statist/StatisticData;->b:Z

    if-eqz v0, :cond_7

    const-string/jumbo v4, "1"

    :goto_1
    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    new-instance v0, Lanetwork/channel/statist/d;

    invoke-direct {v0}, Lanetwork/channel/statist/d;-><init>()V

    invoke-virtual {v6}, Lanetwork/channel/entity/RequestConfig;->i()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v6}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "://"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_a

    add-int/lit8 v6, v6, 0x3

    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_a

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lanetwork/channel/statist/d;->a:Ljava/lang/String;

    add-int/lit8 v6, v7, 0x1

    iget-object v7, v0, Lanetwork/channel/statist/d;->a:Ljava/lang/String;

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_8

    iget-object v8, v0, Lanetwork/channel/statist/d;->a:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lanetwork/channel/statist/d;->b:Ljava/lang/String;

    iget-object v8, v0, Lanetwork/channel/statist/d;->a:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lanetwork/channel/statist/d;->c:Ljava/lang/String;

    :goto_2
    invoke-static {}, Lanetwork/channel/entity/RequestConfig;->e()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string/jumbo v8, "MTOPSDK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_3
    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v6, v1, Lanetwork/channel/statist/d;->a:Ljava/lang/String;

    iput-object v6, v0, Lanetwork/channel/statist/StatisticData;->d:Ljava/lang/String;

    const-string/jumbo v0, "isRequestSuccess"

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dnsTime"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget v6, v6, Lanetwork/channel/statist/StatisticData;->g:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "isDNSTimeout"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget v6, v6, Lanetwork/channel/statist/StatisticData;->h:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "oneWayTime"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->l:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tcpLinkDate"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->i:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "waitTime"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->o:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "postBodyTime"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->n:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "firstDataTime"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->p:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "serverRT"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->s:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rtt"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->t:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "totalSize"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->v:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "recDataTime"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->q:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataSpeed"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v6, Lanetwork/channel/statist/StatisticData;->x:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "retryTime"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget v6, v6, Lanetwork/channel/statist/StatisticData;->z:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "timeoutType"

    iget-object v6, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v6, v6, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "spdy"

    iget-boolean v0, p0, Lanetwork/channel/statist/Statistics;->p:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "1"

    :goto_4
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "isSSL"

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-boolean v0, v0, Lanetwork/channel/statist/StatisticData;->f:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "1"

    :goto_5
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ip_port"

    iget-object v6, v1, Lanetwork/channel/statist/d;->a:Ljava/lang/String;

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "api"

    iget-object v6, v1, Lanetwork/channel/statist/d;->d:Ljava/lang/String;

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version"

    iget-object v1, v1, Lanetwork/channel/statist/d;->e:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "isIPProxy"

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "1"

    :goto_6
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "nettype"

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "netstatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Page_Network"

    const v1, 0xfe57

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "oneWayTime_ANet"

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->k:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "oneWayTime_Jni"

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->m:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "responseBodySize"

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->w:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "mUncompressSize"

    iget v1, p0, Lanetwork/channel/statist/Statistics;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "compressSize"

    iget v1, p0, Lanetwork/channel/statist/Statistics;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->n:Ljava/lang/String;

    const v1, 0xfe57

    invoke-static {v1, v2, v3, v4, v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :cond_4
    :goto_7
    sget-object v0, Lanetwork/channel/statist/Statistics;->q:Lanetwork/channel/statist/IReportStatics;

    if-eqz v0, :cond_5

    .line 161
    sget-object v0, Lanetwork/channel/statist/Statistics;->q:Lanetwork/channel/statist/IReportStatics;

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    .line 163
    :cond_5
    return-void

    .line 156
    :cond_6
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iput-boolean v5, v2, Lanetwork/channel/statist/StatisticData;->b:Z

    goto/16 :goto_0

    .line 159
    :cond_7
    :try_start_3
    const-string/jumbo v4, "0"

    goto/16 :goto_1

    :cond_8
    iget-object v7, v0, Lanetwork/channel/statist/d;->a:Ljava/lang/String;

    iput-object v7, v0, Lanetwork/channel/statist/d;->b:Ljava/lang/String;

    const-string/jumbo v7, "80"

    iput-object v7, v0, Lanetwork/channel/statist/d;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :goto_8
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->n:Ljava/lang/String;

    invoke-static {v11, v2, v3, v4, v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    :try_start_4
    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v10, :cond_a

    add-int/lit8 v6, v6, 0x1

    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_a

    add-int/lit8 v8, v7, 0x1

    const-string/jumbo v9, "/"

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v8, :cond_a

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lanetwork/channel/statist/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/d;->e:Ljava/lang/String;

    :cond_a
    move-object v1, v0

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v0, "0"

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v0, "0"

    goto/16 :goto_5

    :cond_d
    const-string/jumbo v0, "0"
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v3, v4

    move-object v2, v4

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_8
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v2, v2, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    .line 289
    :cond_0
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v4

    .line 290
    const-string/jumbo v5, "Connect Exception"

    .line 291
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v1

    .line 292
    const-string/jumbo v2, "url"

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0xca

    const-string/jumbo v3, ""

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    :goto_1
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/net/URL;)V
    .locals 6

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v2, v2, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    .line 258
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v4, ""

    .line 259
    :goto_0
    const-string/jumbo v0, "Socket Timeout"

    .line 260
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    .line 261
    const-string/jumbo v1, "url"

    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0xcc

    const-string/jumbo v3, ""

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    :goto_2
    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->h:J

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string/jumbo v0, "s-rt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 102
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lanetwork/channel/statist/StatisticData;->s:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p0, Lanetwork/channel/statist/Statistics;->h:J

    iget-wide v3, p0, Lanetwork/channel/statist/Statistics;->e:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v3, v3, Lanetwork/channel/statist/StatisticData;->s:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->t:J

    .line 116
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, v1, Lanetwork/channel/statist/StatisticData;->t:J

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->u:J

    .line 117
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->n:Ljava/lang/String;

    const-string/jumbo v2, "get serverRT error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lorg/android/spdy/SpdyStatusCode;)V
    .locals 3

    .prologue
    .line 499
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_OK:Lorg/android/spdy/SpdyStatusCode;

    if-eq p1, v0, :cond_0

    .line 500
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v2, v2, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|streamClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    .line 504
    :cond_0
    return-void
.end method

.method public final a(Lorg/android/spdy/SuperviseData;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 343
    if-eqz p1, :cond_6

    .line 379
    iget-wide v0, p1, Lorg/android/spdy/SuperviseData;->sendEnd:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->g:J

    .line 380
    iget-wide v0, p1, Lorg/android/spdy/SuperviseData;->sendStart:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->f:J

    .line 381
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 382
    :cond_0
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->e:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->g:J

    .line 383
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->e:J

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->f:J

    .line 386
    :cond_1
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v4, p0, Lanetwork/channel/statist/Statistics;->f:J

    iget-wide v6, p0, Lanetwork/channel/statist/Statistics;->e:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lanetwork/channel/statist/StatisticData;->o:J

    .line 388
    iget-object v4, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->g:J

    iget-wide v5, p0, Lanetwork/channel/statist/Statistics;->f:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_4

    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->g:J

    iget-wide v5, p0, Lanetwork/channel/statist/Statistics;->f:J

    sub-long/2addr v0, v5

    :goto_0
    iput-wide v0, v4, Lanetwork/channel/statist/StatisticData;->n:J

    .line 389
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v4, p1, Lorg/android/spdy/SuperviseData;->responseEnd:J

    iget-wide v6, p0, Lanetwork/channel/statist/Statistics;->f:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lanetwork/channel/statist/StatisticData;->t:J

    .line 390
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v0, v0, Lanetwork/channel/statist/StatisticData;->t:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 391
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->j:J

    .line 395
    :cond_2
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p0, Lanetwork/channel/statist/Statistics;->j:J

    iget-wide v3, p0, Lanetwork/channel/statist/Statistics;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->t:J

    .line 397
    :cond_3
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, v0, Lanetwork/channel/statist/StatisticData;->t:J

    iget-object v3, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v3, v3, Lanetwork/channel/statist/StatisticData;->s:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->t:J

    .line 398
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, v1, Lanetwork/channel/statist/StatisticData;->t:J

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->u:J

    .line 400
    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->f:J

    iget-wide v3, p0, Lanetwork/channel/statist/Statistics;->e:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->i:J

    iget-wide v3, p0, Lanetwork/channel/statist/Statistics;->f:J

    sub-long/2addr v0, v3

    :goto_1
    iput-wide v0, v2, Lanetwork/channel/statist/StatisticData;->p:J

    .line 403
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    int-to-long v1, v1

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->w:J

    .line 404
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p1, Lorg/android/spdy/SuperviseData;->responseEnd:J

    iget-wide v3, p1, Lorg/android/spdy/SuperviseData;->requestStart:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->m:J

    .line 406
    iget v0, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    iput v0, p0, Lanetwork/channel/statist/Statistics;->k:I

    .line 407
    iget v0, p1, Lorg/android/spdy/SuperviseData;->uncompressSize:I

    iput v0, p0, Lanetwork/channel/statist/Statistics;->l:I

    .line 411
    :goto_2
    return-void

    :cond_4
    move-wide v0, v2

    .line 388
    goto :goto_0

    .line 400
    :cond_5
    iget-wide v0, p0, Lanetwork/channel/statist/Statistics;->i:J

    iget-wide v3, p0, Lanetwork/channel/statist/Statistics;->e:J

    sub-long/2addr v0, v3

    goto :goto_1

    .line 409
    :cond_6
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->n:Ljava/lang/String;

    const-string/jumbo v1, "\u5e95\u5c42\u7edf\u8ba1\u6570\u636e\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(I)Z
    .locals 6

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->u()I

    move-result v1

    invoke-static {v0, v1}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 302
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 303
    const-string/jumbo v2, "url"

    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v0, "ip"

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->s()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v0, "port"

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v0, "isSsl"

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->w()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v0, "errorCode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v0, "degradeKey"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v1, "isIPProxy"

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v0, "nettype"

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v0, "Page_Net_Degrade"

    const v1, 0xfe59

    const/16 v2, -0x2329

    const-string/jumbo v3, ""

    iget-object v4, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v4}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 323
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "host"

    iget-object v1, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDegrade commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_1
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->o:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v0}, Lanetwork/channel/entity/RequestConfig;->j()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 309
    :cond_2
    const-string/jumbo v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->d:J

    .line 84
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 338
    iput-wide p1, p0, Lanetwork/channel/statist/Statistics;->e:J

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/statist/Statistics;->m:Z

    .line 340
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v2, v2, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|sessionClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    .line 509
    :cond_0
    return-void
.end method

.method public final b(Ljava/net/URL;)V
    .locals 6

    .prologue
    .line 270
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v2, v2, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|connect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    .line 274
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v4, ""

    .line 275
    :goto_0
    const-string/jumbo v0, "Connect Timeout"

    .line 276
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lanetwork/channel/statist/StatisticsUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v5

    .line 277
    const-string/jumbo v1, "url"

    if-nez p1, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v0, "Page_Net_Exception"

    const v1, 0xfe5a

    const/16 v2, 0xcb

    const-string/jumbo v3, ""

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 282
    :goto_2
    return-void

    .line 274
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 282
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->e:J

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/statist/Statistics;->m:Z

    .line 89
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-object v2, v2, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    .line 514
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->g:J

    .line 94
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p0, Lanetwork/channel/statist/Statistics;->g:J

    iget-wide v3, p0, Lanetwork/channel/statist/Statistics;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->n:J

    .line 95
    return-void
.end method

.method public final e()V
    .locals 5

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/statist/Statistics;->i:J

    .line 122
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    iget-wide v1, p0, Lanetwork/channel/statist/Statistics;->i:J

    iget-wide v3, p0, Lanetwork/channel/statist/Statistics;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->p:J

    .line 123
    return-void
.end method

.method public final f()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lanetwork/channel/statist/Statistics;->r:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method
