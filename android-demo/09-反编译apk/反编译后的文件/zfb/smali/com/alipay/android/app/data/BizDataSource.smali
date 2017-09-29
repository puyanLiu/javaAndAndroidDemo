.class public Lcom/alipay/android/app/data/BizDataSource;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/data/BizDataSource;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/data/BizData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/IAlipayCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->e()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->c:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->d:Landroid/util/SparseArray;

    .line 59
    return-void
.end method

.method public static final declared-synchronized a()Lcom/alipay/android/app/data/BizDataSource;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/alipay/android/app/data/BizDataSource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/data/BizDataSource;->a:Lcom/alipay/android/app/data/BizDataSource;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/android/app/data/BizDataSource;

    invoke-direct {v0}, Lcom/alipay/android/app/data/BizDataSource;-><init>()V

    sput-object v0, Lcom/alipay/android/app/data/BizDataSource;->a:Lcom/alipay/android/app/data/BizDataSource;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/android/app/data/BizDataSource;->a:Lcom/alipay/android/app/data/BizDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    .line 49
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->b()V

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/IAlipayCallback;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->d:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    return-void
.end method

.method public final a(Lcom/alipay/android/app/IRemoteCallback;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->c:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method public final declared-synchronized a(I)Z
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)Lcom/alipay/android/app/data/BizData;
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    .line 67
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/alipay/android/app/data/BizData;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/data/BizData;-><init>(I)V

    .line 70
    iget-object v1, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 108
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    move v2, v3

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->j()I

    move-result v6

    .line 115
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 116
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_3

    .line 117
    const/4 v1, 0x1

    :goto_2
    move v4, v1

    .line 119
    goto :goto_1

    .line 120
    :cond_0
    if-nez v4, :cond_1

    .line 121
    invoke-static {p0, v0}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    .line 109
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 125
    :cond_2
    return-void

    :cond_3
    move v1, v4

    goto :goto_2
.end method

.method public final declared-synchronized c(I)Lcom/alipay/android/app/data/BizData;
    .locals 3

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 95
    iget-object v2, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p1, :cond_0

    .line 100
    :goto_1
    monitor-exit p0

    return-object v0

    .line 93
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/alipay/android/app/data/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/data/a;-><init>(Lcom/alipay/android/app/data/BizDataSource;)V

    .line 133
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 135
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->c:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 160
    return-void
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->d:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->c:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 142
    return-void
.end method

.method public final e(I)Lcom/alipay/android/app/IRemoteCallback;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/IRemoteCallback;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->d:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 179
    return-void
.end method

.method public final declared-synchronized f()V
    .locals 3

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 184
    iget-object v2, p0, Lcom/alipay/android/app/data/BizDataSource;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    sget-object v2, Lcom/alipay/android/app/data/BizDataSource;->a:Lcom/alipay/android/app/data/BizDataSource;

    invoke-static {v2, v0}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    :cond_1
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
