.class public Lmtopsdk/mtop/offline/OfflineRequestStatistic;
.super Ljava/lang/Object;
.source "OfflineRequestStatistic.java"


# static fields
.field public static final EVENT_ID:I = 0xfe7f

.field public static final OFFLINE_OP_COUNT:Ljava/lang/String; = "offlineOpCount"

.field public static final OFFLINE_REQUEST_STATISTIC:Ljava/lang/String; = "offlineRequest_statistic"

.field public static final OP_ENQUEUE_FAIL_COUNT:Ljava/lang/String; = "opEnqueueFailCount"

.field public static final PAGE_NAME:Ljava/lang/String; = "Page_OfflineOp"

.field public static final SEND_FAIL_COUNT:Ljava/lang/String; = "sendFailCount"

.field public static final STATISTIC_DATE:Ljava/lang/String; = "statisticDate"

.field public static final TAG:Ljava/lang/String; = "mtopsdk.OfflineRequestStatistic"

.field public static final TOTAL_OP_COUNT:Ljava/lang/String; = "totalOpCount"

.field private static volatile instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;


# instance fields
.field private offlineOpCount:I

.field private opEnqueueFailCount:I

.field private sendFailCount:I

.field private sp:Landroid/content/SharedPreferences;

.field private statisticDate:I

.field private totalOpCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    .line 30
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    .line 31
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    .line 32
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    .line 33
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->statisticDate:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sp:Landroid/content/SharedPreferences;

    .line 159
    return-void
.end method

.method private checkNeedUTCommit()Z
    .locals 3

    .prologue
    .line 136
    iget v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->statisticDate:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lmtopsdk/mtop/offline/OfflineRequestStatistic;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    invoke-direct {v0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;-><init>()V

    .line 44
    sput-object v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    invoke-direct {v0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->init()V

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 53
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "offlineRequest_statistic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sp:Landroid/content/SharedPreferences;

    .line 54
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    invoke-direct {v0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->recoverFromSharedPreferences()V

    .line 55
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "mtopsdk.OfflineRequestStatistic"

    sget-object v1, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    invoke-virtual {v1}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    invoke-direct {v0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->checkNeedUTCommit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->instance:Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    invoke-direct {v0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->performUTCommit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "mtopsdk.OfflineRequestStatistic"

    const-string/jumbo v2, "initialize failed."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private performUTCommit()V
    .locals 6

    .prologue
    .line 140
    const-string/jumbo v0, "mtopsdk.OfflineRequestStatistic"

    const-string/jumbo v1, "performUTCommit"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 142
    const-string/jumbo v0, "totalOpCount"

    iget v1, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v0, "sendFailCount"

    iget v1, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v0, "opEnqueueFailCount"

    iget v1, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v0, "Page_OfflineOp"

    const v1, 0xfe7f

    const-string/jumbo v2, "offlineOp"

    iget v3, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->resetStatisticCount()V

    .line 148
    return-void
.end method

.method private persistToSharedPreferences()V
    .locals 3

    .prologue
    .line 117
    const-string/jumbo v0, "mtopsdk.OfflineRequestStatistic"

    const-string/jumbo v1, "persistToSharedPreferences"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "totalOpCount"

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string/jumbo v1, "offlineOpCount"

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string/jumbo v1, "sendFailCount"

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string/jumbo v1, "opEnqueueFailCount"

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string/jumbo v1, "statisticDate"

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->statisticDate:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method private recoverFromSharedPreferences()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "totalOpCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    .line 129
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "offlineOpCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    .line 130
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sendFailCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    .line 131
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "opEnqueueFailCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    .line 132
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "statisticDate"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->statisticDate:I

    .line 133
    return-void
.end method

.method private resetStatisticCount()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    .line 152
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    .line 153
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    .line 154
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->statisticDate:I

    .line 156
    return-void
.end method

.method private trackEvent()V
    .locals 3

    .prologue
    .line 100
    :try_start_0
    iget v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    iget v1, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    add-int/2addr v0, v1

    .line 101
    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    .line 102
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "mtopsdk.OfflineRequestStatistic"

    invoke-virtual {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->checkNeedUTCommit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->performUTCommit()V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->persistToSharedPreferences()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string/jumbo v1, "mtopsdk.OfflineRequestStatistic"

    const-string/jumbo v2, "track event failed."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onOfflineOpCount()V
    .locals 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    .line 76
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "mtopsdk.OfflineRequestStatistic"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onOfflineOpCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->trackEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOpEnqueueFailCount()V
    .locals 3

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    .line 92
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v0, "mtopsdk.OfflineRequestStatistic"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onOpEnqueueFailCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->trackEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSendFailCount()V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    .line 84
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v0, "mtopsdk.OfflineRequestStatistic"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSendFailCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->trackEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTotalOpCount()V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    .line 68
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v0, "mtopsdk.OfflineRequestStatistic"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onTotalOpCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->trackEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    const-string/jumbo v1, "[OfflineRequestStatistic]: totalOpCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->totalOpCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " offlineOpCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->offlineOpCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sendFailCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->sendFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " opEnqueueFailCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->opEnqueueFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statisticDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->statisticDate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
