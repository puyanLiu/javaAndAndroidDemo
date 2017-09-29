.class final Lcom/alipay/android/app/statistic/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->i()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->i()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 176
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :goto_0
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 181
    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->f()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->j()Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 182
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    .line 184
    :cond_0
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
