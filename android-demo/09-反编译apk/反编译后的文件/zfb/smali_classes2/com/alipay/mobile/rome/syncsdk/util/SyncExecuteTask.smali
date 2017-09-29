.class public Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;
.super Ljava/lang/Object;
.source "SyncExecuteTask.java"


# static fields
.field protected static sHandler:Landroid/os/Handler;

.field protected static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static declared-synchronized a()V
    .locals 3

    .prologue
    .line 42
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "SyncExecuteTask"

    const-string/jumbo v2, "useDefaultHandler"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->startThread()V

    .line 46
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask$DefaultTaskHandler;

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask$DefaultTaskHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit v1

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static cancel(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->a()V

    .line 159
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 160
    return-void
.end method

.method public static hasScheduleRunnable(Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->a()V

    .line 102
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasSubmitRunnable(Ljava/lang/Runnable;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 111
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->a()V

    .line 116
    :cond_0
    :try_start_0
    const-string/jumbo v0, "android.os.Handler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    const-string/jumbo v2, "hasCallbacks"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Runnable;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 119
    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string/jumbo v2, "SyncExecuteTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "hasSubmitRunnable: Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static remove(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->a()V

    .line 89
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public static schedule(Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->a()V

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->hasScheduleRunnable(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string/jumbo v0, "SyncExecuteTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "already have a Ruunable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 144
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 146
    const/16 v1, 0x1000

    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected static startThread()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "sync_send"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    return-void
.end method

.method public static submit(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submitDelayed(Ljava/lang/Runnable;J)V

    .line 65
    return-void
.end method

.method public static submitDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->a()V

    .line 77
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method


# virtual methods
.method protected declared-synchronized useCustomHandler()V
    .locals 2

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SyncExecuteTask"

    const-string/jumbo v1, "useCustomHandler"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
