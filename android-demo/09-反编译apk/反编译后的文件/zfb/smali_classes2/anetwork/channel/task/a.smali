.class final Lanetwork/channel/task/a;
.super Ljava/lang/Thread;
.source "DelayTaskMgr.java"


# instance fields
.field a:Z

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/task/a;->a:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanetwork/channel/task/a;->b:J

    .line 52
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 57
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lanetwork/channel/task/a;->a:Z

    if-eqz v0, :cond_8

    .line 58
    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lanetwork/channel/task/a;->b:J

    move v1, v2

    move-object v3, v4

    .line 61
    :goto_1
    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 62
    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/task/Task;

    .line 63
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    iget-boolean v5, v0, Lanetwork/channel/task/Task;->d:Z

    if-eqz v5, :cond_3

    .line 65
    if-nez v3, :cond_1

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_2
    :goto_2
    monitor-exit v0

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 69
    :cond_3
    iget-wide v5, v0, Lanetwork/channel/task/Task;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    .line 70
    iget-object v5, v0, Lanetwork/channel/task/Task;->a:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lanetwork/channel/task/Task;->c:J

    add-long/2addr v5, v7

    iput-wide v5, v0, Lanetwork/channel/task/Task;->b:J

    .line 72
    iget-boolean v5, v0, Lanetwork/channel/task/Task;->e:Z

    if-nez v5, :cond_2

    .line 73
    if-nez v3, :cond_4

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 79
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v1, "ANet.DelayTaskMgr"

    const-string/jumbo v2, "task thread error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_3
    return-void

    .line 81
    :cond_5
    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 82
    sget-object v1, Lanetwork/channel/task/DelayTaskMgr;->a:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 83
    :try_start_4
    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 84
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    :cond_6
    :try_start_5
    invoke-static {}, Lanetwork/channel/task/DelayTaskMgr;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 100
    :goto_4
    :try_start_6
    iget-wide v0, p0, Lanetwork/channel/task/a;->b:J

    invoke-static {}, Lanetwork/channel/task/DelayTaskMgr;->b()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-ltz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/task/a;->a:Z

    goto/16 :goto_0

    .line 84
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    const-string/jumbo v1, "ANet.DelayTaskMgr"

    const-string/jumbo v3, "thread sleep error"

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 93
    :cond_7
    :try_start_7
    invoke-static {}, Lanetwork/channel/task/DelayTaskMgr;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 94
    iget-wide v0, p0, Lanetwork/channel/task/a;->b:J

    invoke-static {}, Lanetwork/channel/task/DelayTaskMgr;->a()J

    move-result-wide v5

    add-long/2addr v0, v5

    iput-wide v0, p0, Lanetwork/channel/task/a;->b:J
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .line 95
    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 104
    :cond_8
    sget-object v1, Lanetwork/channel/task/DelayTaskMgr;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 105
    const/4 v0, 0x0

    :try_start_9
    sput-object v0, Lanetwork/channel/task/DelayTaskMgr;->b:Lanetwork/channel/task/a;

    .line 106
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
.end method
