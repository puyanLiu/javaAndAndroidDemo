.class public Lanetwork/channel/task/DelayTaskMgr;
.super Ljava/lang/Object;
.source "DelayTaskMgr.java"


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lanetwork/channel/task/Task;",
            ">;"
        }
    .end annotation
.end field

.field static b:Lanetwork/channel/task/a;

.field static c:Ljava/lang/Object;

.field private static d:J

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lanetwork/channel/task/DelayTaskMgr;->a:Ljava/util/ArrayList;

    .line 18
    const-wide/32 v0, 0xea60

    sput-wide v0, Lanetwork/channel/task/DelayTaskMgr;->d:J

    .line 19
    const-wide/16 v0, 0xc8

    sput-wide v0, Lanetwork/channel/task/DelayTaskMgr;->e:J

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lanetwork/channel/task/DelayTaskMgr;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 14
    sget-wide v0, Lanetwork/channel/task/DelayTaskMgr;->e:J

    return-wide v0
.end method

.method public static a(Lanetwork/channel/task/Task;)V
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lanetwork/channel/task/DelayTaskMgr;->a(Lanetwork/channel/task/Task;J)V

    .line 32
    return-void
.end method

.method public static a(Lanetwork/channel/task/Task;J)V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lanetwork/channel/task/Task;->b:J

    .line 24
    sget-object v1, Lanetwork/channel/task/DelayTaskMgr;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    sget-object v1, Lanetwork/channel/task/DelayTaskMgr;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->b:Lanetwork/channel/task/a;

    if-nez v0, :cond_0

    new-instance v0, Lanetwork/channel/task/a;

    const-string/jumbo v2, "ANet.DelayTaskThread"

    invoke-direct {v0, v2}, Lanetwork/channel/task/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanetwork/channel/task/DelayTaskMgr;->b:Lanetwork/channel/task/a;

    :cond_0
    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->b:Lanetwork/channel/task/a;

    iget-boolean v0, v0, Lanetwork/channel/task/a;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->b:Lanetwork/channel/task/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lanetwork/channel/task/a;->a:Z

    sget-object v0, Lanetwork/channel/task/DelayTaskMgr;->b:Lanetwork/channel/task/a;

    invoke-virtual {v0}, Lanetwork/channel/task/a;->start()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 27
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 14
    sget-wide v0, Lanetwork/channel/task/DelayTaskMgr;->d:J

    return-wide v0
.end method
