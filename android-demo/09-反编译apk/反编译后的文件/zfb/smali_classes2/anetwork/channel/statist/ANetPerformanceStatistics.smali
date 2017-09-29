.class public Lanetwork/channel/statist/ANetPerformanceStatistics;
.super Ljava/lang/Object;
.source "ANetPerformanceStatistics.java"


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 21
    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->a:J

    .line 22
    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->b:J

    .line 23
    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->c:J

    .line 24
    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->d:J

    .line 25
    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->e:J

    .line 26
    sput v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->f:I

    .line 27
    sput v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->g:I

    .line 28
    sput v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->h:I

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->i:Ljava/lang/Object;

    return-void
.end method

.method private static a()V
    .locals 4

    .prologue
    .line 160
    sget-object v1, Lanetwork/channel/statist/ANetPerformanceStatistics;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    const-wide/16 v2, 0x0

    :try_start_0
    sput-wide v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->a:J

    .line 163
    const-wide/16 v2, 0x0

    sput-wide v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->c:J

    .line 164
    const/4 v0, 0x0

    sput v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->f:I

    .line 165
    const-wide/16 v2, 0x0

    sput-wide v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->e:J

    .line 167
    const-wide/16 v2, 0x0

    sput-wide v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->b:J

    .line 168
    const/4 v0, 0x0

    sput v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->g:I

    .line 169
    const-wide/16 v2, 0x0

    sput-wide v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->d:J

    .line 171
    const/4 v0, 0x0

    sput v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->h:I

    .line 172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lanetwork/channel/entity/ConnTypeEnum;JJZ)V
    .locals 9

    .prologue
    const/16 v4, 0x14

    .line 42
    sget-object v6, Lanetwork/channel/statist/ANetPerformanceStatistics;->i:Ljava/lang/Object;

    monitor-enter v6

    .line 43
    :try_start_0
    sget-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->a:J

    add-long/2addr v0, p3

    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->a:J

    .line 44
    sget-object v0, Lanetwork/channel/entity/ConnTypeEnum;->HTTP:Lanetwork/channel/entity/ConnTypeEnum;

    invoke-virtual {v0, p0}, Lanetwork/channel/entity/ConnTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    sget-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->e:J

    add-long/2addr v0, p1

    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->e:J

    .line 46
    sget v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->f:I

    .line 47
    sget-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->c:J

    add-long/2addr v0, p3

    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->c:J

    .line 57
    :cond_0
    :goto_0
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "ANet.ANetPerformanceStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",httpSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",spdySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lanetwork/channel/statist/ANetPerformanceStatistics;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    sget v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->f:I

    if-ge v0, v4, :cond_2

    sget v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->g:I

    if-lt v0, v4, :cond_4

    .line 64
    :cond_2
    sget v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->h:I

    sget v1, Lanetwork/channel/statist/ANetPerformanceStatistics;->g:I

    const-string/jumbo v2, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "requestCount"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "spdy"

    const-string/jumbo v1, "1"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Page_Net_LinkReuse"

    const v1, 0xfe58

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    sget-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sget-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->e:J

    sget-wide v3, Lanetwork/channel/statist/ANetPerformanceStatistics;->d:J

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    sget-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "SpdyTime"

    sget-wide v7, Lanetwork/channel/statist/ANetPerformanceStatistics;->d:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HttpDataTotalSize"

    sget-wide v7, Lanetwork/channel/statist/ANetPerformanceStatistics;->c:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HttpTime"

    sget-wide v7, Lanetwork/channel/statist/ANetPerformanceStatistics;->e:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SpdyRequestTime"

    sget v1, Lanetwork/channel/statist/ANetPerformanceStatistics;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HttpRequestTime"

    sget v1, Lanetwork/channel/statist/ANetPerformanceStatistics;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ANet.ANetPerformanceStatistics"

    const v1, 0xfb5f

    invoke-static {v1, v2, v3, v4, v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "Page_Network"

    const v1, 0xfb5f

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lanetwork/channel/statist/ANetPerformanceStatistics;->a()V

    .line 68
    :cond_4
    :goto_1
    monitor-exit v6

    return-void

    .line 49
    :cond_5
    sget-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->d:J

    add-long/2addr v0, p1

    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->d:J

    .line 50
    sget v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->g:I

    .line 51
    sget-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->b:J

    add-long/2addr v0, p3

    sput-wide v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->b:J

    .line 53
    if-eqz p5, :cond_0

    .line 54
    sget v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lanetwork/channel/statist/ANetPerformanceStatistics;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 66
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "ANet.ANetPerformanceStatistics"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "commit msg error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v8, 0xfb5f

    invoke-static {v8, v2, v3, v4, v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    :try_start_4
    invoke-static {}, Lanetwork/channel/statist/ANetPerformanceStatistics;->a()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lanetwork/channel/statist/ANetPerformanceStatistics;->a()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
