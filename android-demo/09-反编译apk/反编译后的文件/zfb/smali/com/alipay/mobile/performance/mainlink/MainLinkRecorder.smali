.class public Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;
.super Ljava/lang/Object;
.source "MainLinkRecorder.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;


# instance fields
.field private mClientStartupTime:J

.field private mLinkRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/performance/mainlink/LinkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhaseStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mClientStartupTime:J

    .line 22
    iput-object v2, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    .line 24
    iput-object v2, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    invoke-direct {v0}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;-><init>()V

    sput-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    .line 34
    :cond_0
    sget-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 4

    .prologue
    .line 41
    const-class v1, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mClientStartupTime:J

    .line 43
    sget-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    iget-object v0, v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 44
    sget-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    iget-object v0, v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->sInstance:Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v1

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    const-wide/16 v0, -0x1

    .line 149
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    :goto_1
    sub-long v0, v2, v0

    .line 148
    iget-object v2, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_1
.end method

.method public declared-synchronized commitLinkRecord(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    .line 179
    if-nez v0, :cond_2

    .line 180
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "commitLinkRecord but no LinkRecord exist for linkId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->commit()V

    .line 185
    const-string/jumbo v1, "LINK_SCAN_CODE_IND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->destroy()V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .prologue
    const-wide/16 v1, -0x1

    .line 118
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-wide v0, v1

    .line 131
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 121
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 122
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 123
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "endLinkRecordPhase with no start linkId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phaseId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v1

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 128
    iget-object v2, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->submitLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;J)V

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "endLinkRecordPhase linkId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phaseId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " timeCost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/performance/mainlink/LinkRecord;
    .locals 3

    .prologue
    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getLinkRecord got null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    goto :goto_0
.end method

.method public declared-synchronized initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/performance/mainlink/LinkRecord;
    .locals 5

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    .line 198
    if-nez v0, :cond_1

    .line 199
    new-instance v0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;-><init>(Ljava/lang/String;)V

    .line 200
    iget-wide v1, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mClientStartupTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mClientStartupTime:J

    const-wide/32 v3, 0x249f0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 201
    iget-wide v1, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mClientStartupTime:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->setClientStartupTime(J)V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    monitor-exit p0

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recordClientStartupTime(J)V
    .locals 4

    .prologue
    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 61
    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mClientStartupTime:J

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordClientStartupTime : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 62
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    iget-wide v2, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mClientStartupTime:J

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->setClientStartupTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_1
    :try_start_1
    const-string/jumbo v0, "PHASE_SCAN_CODE_IND_LAUNCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    const-string/jumbo v0, "PHASE_SCAN_CODE_LAUNCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    const-string/jumbo v0, "PHASE_PAY_CODE_LAUNCH_OFFLINE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const-string/jumbo v0, "PHASE_PAY_CODE_LAUNCH_ONLINE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    const-string/jumbo v0, "PHASE_TRANSFER_LAUNCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    const-string/jumbo v0, "PHASE_FUND_LAUNCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const-string/jumbo v0, "PHASE_O2O_LAUNCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    const-string/jumbo v0, "PHASE_SOCIAL_LAUNCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    const-string/jumbo v0, "PHASE_SOCIAL_PUSH_SESSION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    const-string/jumbo v0, "PHASE_SCAN_PAY_LAUNCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    const-string/jumbo v0, "PHASE_SCAN_PAY_FIXED_PAY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    .line 97
    :cond_3
    const-string/jumbo v0, "PHASE_SCAN_CODE_USER_PROFILE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    const-string/jumbo v0, "LINK_SCAN_CODE"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    .line 106
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 107
    iget-object v2, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mPhaseStartTimeMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startLinkRecordPhase linkId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " phaseId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submitLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->mLinkRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    .line 163
    if-nez v0, :cond_2

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submitLinkRecordPhase but no LinkRecord exist for linkId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_2
    :try_start_2
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
