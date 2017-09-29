.class public Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;
.super Ljava/lang/Object;
.source "QuicTestController.java"


# static fields
.field private static final APP_SUB_DIR_STR:Ljava/lang/String; = "quic_libs"

.field private static final EXTERNAL_FILE:Ljava/lang/String; = "quic_fils"

.field private static final LIB_QUIC_SO_FILE_NAME:Ljava/lang/String; = "libquic.so"

.field private static final QUIC_ZIP:Ljava/lang/String; = "quic.zip"

.field private static final TAG:Ljava/lang/String; = "QuicTestController"


# instance fields
.field private appSubDir:Ljava/io/File;

.field private context:Landroid/content/Context;

.field private externalFilesDir:Ljava/io/File;

.field private futureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private loadedSo:Z

.field private quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

.field private quicSoFile:Ljava/io/File;

.field private quicZipFile:Ljava/io/File;

.field private taskCheckTimer:Ljava/util/Timer;

.field private tmpQuicSoFile:Ljava/io/File;

.field private working:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->loadedSo:Z

    .line 81
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->working:Z

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->working:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)Ljava/util/concurrent/FutureTask;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->futureTask:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->innerTriggerTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    const-string/jumbo v1, "quic_fils"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->externalFilesDir:Ljava/io/File;

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->externalFilesDir:Ljava/io/File;

    const-string/jumbo v2, "quic.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->externalFilesDir:Ljava/io/File;

    const-string/jumbo v2, "libquic.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tmpQuicSoFile:Ljava/io/File;

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "quic_libs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->appSubDir:Ljava/io/File;

    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->appSubDir:Ljava/io/File;

    const-string/jumbo v2, "libquic.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    .line 103
    return-void
.end method

.method private innerTriggerTest()V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->isNoTimeTo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 129
    :cond_0
    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->working:Z

    if-eqz v0, :cond_1

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->working:Z

    .line 134
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getFgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->futureTask:Ljava/util/concurrent/FutureTask;

    .line 151
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->startTaskCheckTimer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->working:Z

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->unregister(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V

    .line 157
    const-string/jumbo v1, "QuicTestController"

    const-string/jumbo v2, "unregister quicAppEventListener."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 161
    const-string/jumbo v1, "QuicTestController"

    const-string/jumbo v2, "taskCheckTimer cancel."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_3
    const-string/jumbo v1, "QuicTestController"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isNoTimeTo()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 189
    :try_start_0
    const-string/jumbo v1, ""

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    .line 193
    const-string/jumbo v3, "QuicTestController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The on time to. nextTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    const-string/jumbo v2, "QuicTestController"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startTaskCheckTimer()V
    .locals 4

    .prologue
    .line 169
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "startTaskCheckTimer"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "QuicTaskCheck"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$2;-><init>(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 180
    return-void
.end method


# virtual methods
.method protected copyToAppDir()V
    .locals 4

    .prologue
    .line 372
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "================ copyToAppDir ============="

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tmpQuicSoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "No need uncompress file!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tmpQuicSoFile:Ljava/io/File;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->cpyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tmpQuicSoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 389
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 394
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "Copy success!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cpyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 480
    .line 484
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    const-string/jumbo v2, "QuicTestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " create fail !"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 518
    :goto_0
    return v0

    .line 490
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 492
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 495
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 496
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 498
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 499
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 500
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 501
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 511
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 515
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 503
    :goto_3
    :try_start_5
    const-string/jumbo v3, "QuicTestController"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 505
    if-eqz v2, :cond_2

    .line 507
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 511
    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    .line 513
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_5
    move v0, v6

    .line 518
    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    move-object v8, v1

    :goto_6
    if-eqz v8, :cond_4

    .line 507
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 511
    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 513
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 515
    :cond_5
    :goto_8
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_8

    .line 505
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v7

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v8, v2

    goto :goto_6

    .line 502
    :catch_7
    move-exception v0

    move-object v2, v8

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_3
.end method

.method protected donwloadOrUpdateFile()V
    .locals 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Currently no network\uff01 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isWiFiMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "Not wifi network, don\'t download task. return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->isLoadedConfig()Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "no config! return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->QUIC_ZIP_SIZE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    .line 233
    if-gtz v1, :cond_3

    .line 234
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "Illegal zip file size. return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_3
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->QUIC_DOWN_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "download url is empty. return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 246
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string/jumbo v3, "alipayobjects.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "alipay.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 250
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v3, "download host only support \'alipayobjects.com\' or \'tfs.alipay.com\', return."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string/jumbo v3, "QuicTestController"

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->externalFilesDir:Ljava/io/File;

    if-nez v0, :cond_6

    .line 267
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "externalFilesDir is null, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 274
    :cond_7
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 276
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setRedownload(Z)V

    .line 277
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    new-instance v2, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 281
    const-wide/16 v2, 0x1e

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 286
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "file download fail!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :catch_1
    move-exception v0

    .line 283
    const-string/jumbo v2, "QuicTestController"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 289
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v0, v1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_9

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 291
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "file download fail!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_9
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "download success!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected executeTest()V
    .locals 6

    .prologue
    .line 425
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "================ executeTest ============="

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->loadedSo:Z

    if-nez v0, :cond_2

    .line 430
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "loadedSo=false"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->unregister(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V

    .line 463
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "unregister quicAppEventListener."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 467
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "taskCheckTimer cancel."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 436
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;-><init>()V

    .line 437
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->setQuicProxy(Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;)V

    .line 440
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$MyLibQuicCallback;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$MyLibQuicCallback;-><init>(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;->Init(Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicCallback;)V

    .line 443
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v2

    .line 444
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v3

    .line 445
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v4

    .line 448
    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-virtual {v5, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;->onNetWorkEvent(ZII)V

    .line 451
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->QUIC_HOST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 452
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->QUIC_PORT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v3

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->externalFilesDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/work"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 456
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicNative;->ConnectAndSendRequest([BII[BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->unregister(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V

    .line 463
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "unregister quicAppEventListener."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 467
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "taskCheckTimer cancel."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    :try_start_2
    const-string/jumbo v1, "QuicTestController"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    if-eqz v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->unregister(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V

    .line 463
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "unregister quicAppEventListener."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 467
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "taskCheckTimer cancel."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    if-eqz v1, :cond_5

    .line 462
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->unregister(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V

    .line 463
    const-string/jumbo v1, "QuicTestController"

    const-string/jumbo v2, "unregister quicAppEventListener."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    if-eqz v1, :cond_6

    .line 466
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->taskCheckTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 467
    const-string/jumbo v1, "QuicTestController"

    const-string/jumbo v2, "taskCheckTimer cancel."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    throw v0
.end method

.method public declared-synchronized goTest()V
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->donwloadOrUpdateFile()V

    .line 207
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->unzip()V

    .line 208
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->copyToAppDir()V

    .line 209
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->loadSo()V

    .line 210
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->executeTest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadSo()V
    .locals 2

    .prologue
    .line 400
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "================ loadSo ============="

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "loadSo:   quic so is not exists!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "loadSo:  quic so not permissions"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicSoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->loadedSo:Z

    .line 416
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "load success!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    const-string/jumbo v1, "QuicTestController"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public tryTriggerTest()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->QUIC_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(Ljava/lang/String;)Z

    move-result v0

    .line 108
    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->isNoTimeTo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->working:Z

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;-><init>(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicAppEventListener:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$QuicAppEventListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->register(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V

    goto :goto_0
.end method

.method protected unzip()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 300
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "================ unzip ============="

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->externalFilesDir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 305
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "externalFilesDir is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    :cond_2
    const-string/jumbo v0, "QuicTestController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not exists or not permissions!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tmpQuicSoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tmpQuicSoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 318
    const-string/jumbo v0, "QuicTestController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tmpQuicSoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " deleted !"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_4
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 325
    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 326
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_5

    .line 330
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string/jumbo v1, "libquic.so"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tmpQuicSoFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    :goto_2
    if-eqz v0, :cond_5

    .line 339
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 340
    const/16 v0, 0x400

    :try_start_3
    new-array v0, v0, [B

    .line 341
    :goto_3
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 342
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 347
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_6

    .line 348
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_6
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 354
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 355
    :goto_5
    :try_start_5
    const-string/jumbo v1, "QuicTestController"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 358
    if-eqz v2, :cond_0

    .line 360
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 344
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 345
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 347
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 358
    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v3, :cond_8

    .line 360
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 362
    :cond_8
    :goto_7
    throw v0

    .line 351
    :cond_9
    :try_start_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->quicZipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 353
    const-string/jumbo v0, "QuicTestController"

    const-string/jumbo v1, "unzip success!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 358
    :try_start_b
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    .line 362
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_7

    .line 358
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 354
    :catch_4
    move-exception v0

    goto :goto_5

    .line 347
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :cond_a
    move-object v0, v2

    goto :goto_2
.end method
