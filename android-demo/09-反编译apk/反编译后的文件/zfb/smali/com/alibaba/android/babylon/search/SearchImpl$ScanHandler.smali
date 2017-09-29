.class Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;
.super Landroid/os/Handler;
.source "SearchImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/babylon/search/SearchImpl;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/babylon/search/SearchImpl;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/babylon/search/SearchImpl;Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;-><init>(Lcom/alibaba/android/babylon/search/SearchImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$1(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$1(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$3(Lcom/alibaba/android/babylon/search/SearchImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "global-search"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "scanAll"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$1(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->lastScanTime:J

    sub-long/2addr v3, v5

    iget v1, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->minScanTimeSpan:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    .line 84
    const-string/jumbo v1, "SearchImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start scan in Handler ,tableName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "retryTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->retryTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    iget-object v3, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->dbName:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->tableName:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->indexName:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$2(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4

    .line 96
    iget v3, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->retryTime:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->retryTime:I

    .line 97
    const-string/jumbo v3, "SearchImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scan over in Handler ,tableName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " res : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz v1, :cond_2

    iget v1, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->retryTime:I

    if-nez v1, :cond_6

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$4(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 100
    :try_start_0
    const-string/jumbo v3, "SearchImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleMessage remove: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v3}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$1(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    iget-object v3, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v3}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$5(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_3
    :goto_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_0

    .line 90
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$3(Lcom/alibaba/android/babylon/search/SearchImpl;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x1f4

    .line 91
    :goto_4
    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 93
    :catch_0
    move-exception v1

    const-string/jumbo v1, "SearchImpl"

    const-string/jumbo v3, "scan thread sleep fail"

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 90
    :cond_5
    const/16 v1, 0xc8

    goto :goto_4

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 105
    :cond_6
    const-string/jumbo v1, "SearchImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleMessage start retry: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->lastScanTime:J

    .line 107
    iget v1, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->minScanTimeSpan:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->minScanTimeSpan:I

    goto :goto_3

    .line 119
    :cond_7
    const v0, 0x57b12c00

    .line 121
    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->this$0:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-static {v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->access$1(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 126
    int-to-long v0, v1

    invoke-virtual {p0, v7, v0, v1}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 121
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;

    .line 122
    iget v3, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->minScanTimeSpan:I

    if-le v1, v3, :cond_8

    .line 123
    iget v0, v0, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->minScanTimeSpan:I

    move v1, v0

    goto :goto_5
.end method
