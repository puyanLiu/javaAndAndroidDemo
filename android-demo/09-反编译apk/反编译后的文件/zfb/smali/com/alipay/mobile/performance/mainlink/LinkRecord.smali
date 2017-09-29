.class public Lcom/alipay/mobile/performance/mainlink/LinkRecord;
.super Ljava/lang/Object;
.source "LinkRecord.java"


# static fields
.field private static final KEY_TIME_PREFIX:Ljava/lang/String; = "LastCommitTime"

.field private static final MAIN_LINK_RECORD:Ljava/lang/String; = "MainLinkRecord"

.field private static final SP_NAME:Ljava/lang/String; = "MainLinkRecorder"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientStartupTime:J

.field private mLastCommitTime:J

.field private mLinkId:Ljava/lang/String;

.field private mParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSP:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v2, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mClientStartupTime:J

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    .line 43
    iput-object v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    .line 176
    iput-object v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mSP:Landroid/content/SharedPreferences;

    .line 177
    iput-wide v2, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLastCommitTime:J

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private declared-synchronized shouldReport()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mSP:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 187
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    const-string/jumbo v2, "MainLinkRecorder"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mSP:Landroid/content/SharedPreferences;

    .line 189
    :cond_0
    iget-wide v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLastCommitTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mSP:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LastCommitTime"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLastCommitTime:J

    .line 192
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 193
    iget-wide v3, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLastCommitTime:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x1499700

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 194
    iput-wide v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLastCommitTime:J

    .line 195
    iget-object v3, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "LastCommitTime"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const/4 v0, 0x1

    .line 202
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 10

    .prologue
    const/16 v9, 0x2c

    const/16 v8, 0x5e

    const/16 v7, 0x3d

    const-wide/16 v4, -0x1

    const/16 v6, 0x20

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->shouldReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    const-string/jumbo v1, "LINK_SCAN_PAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    const-string/jumbo v1, "LINK_SCAN_PAY_FIXED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SCAN_CODE_IND"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_5

    .line 94
    const-string/jumbo v1, "PHASE_SCAN_CODE_IND_LAUNCH"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 95
    cmp-long v3, v1, v4

    if-eqz v3, :cond_3

    .line 96
    const-string/jumbo v3, "PHASE_SCAN_CODE_IND_LAUNCH"

    invoke-virtual {p0, v3, v1, v2}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 99
    :cond_3
    const-string/jumbo v1, "PHASE_SCAN_CODE_IND_SCAN"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 100
    cmp-long v3, v1, v4

    if-eqz v3, :cond_4

    .line 101
    const-string/jumbo v3, "PHASE_SCAN_CODE_IND_SCAN"

    invoke-virtual {p0, v3, v1, v2}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 104
    :cond_4
    const-string/jumbo v1, "PHASE_SCAN_CODE_IND_SCAN_RPC"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 105
    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 106
    const-string/jumbo v2, "PHASE_SCAN_CODE_IND_SCAN_RPC"

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    const-string/jumbo v1, "LINK_SCAN_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SCAN_CODE_IND"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_8

    .line 114
    const-string/jumbo v1, "PHASE_SCAN_CODE_IND_LAUNCH"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 115
    cmp-long v3, v1, v4

    if-eqz v3, :cond_6

    .line 116
    const-string/jumbo v3, "PHASE_SCAN_CODE_LAUNCH"

    invoke-virtual {p0, v3, v1, v2}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 119
    :cond_6
    const-string/jumbo v1, "PHASE_SCAN_CODE_IND_SCAN"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 120
    cmp-long v3, v1, v4

    if-eqz v3, :cond_7

    .line 121
    const-string/jumbo v3, "PHASE_SCAN_CODE_SCAN"

    invoke-virtual {p0, v3, v1, v2}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 124
    :cond_7
    const-string/jumbo v1, "PHASE_SCAN_CODE_IND_SCAN_RPC"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->getPhaseTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 125
    cmp-long v2, v0, v4

    if-eqz v2, :cond_8

    .line 126
    const-string/jumbo v2, "PHASE_SCAN_CODE_SCAN_RPC"

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->recordPhase(Ljava/lang/String;J)V

    .line 130
    :cond_8
    new-instance v3, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 132
    const-string/jumbo v0, "MainLinkRecord"

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const/4 v0, 0x1

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_9
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "commit linkId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " phases:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 141
    if-eqz v2, :cond_c

    .line 142
    const/4 v2, 0x0

    .line 146
    :goto_3
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 144
    :cond_c
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 155
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    if-eqz v2, :cond_a

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v0, "^"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 170
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mClientStartupTime:J

    .line 171
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mLinkId:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    return-void
.end method

.method public getPhaseTime(Ljava/lang/String;)J
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v1

    .line 68
    :goto_0
    return-wide v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method

.method public recordPhase(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public removeParam(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    return-void
.end method

.method public setClientStartupTime(J)V
    .locals 4

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mClientStartupTime:J

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mPhaseMap:Ljava/util/Map;

    const-string/jumbo v1, "PHASE_CLIENT_STARTUP"

    iget-wide v2, p0, Lcom/alipay/mobile/performance/mainlink/LinkRecord;->mClientStartupTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
