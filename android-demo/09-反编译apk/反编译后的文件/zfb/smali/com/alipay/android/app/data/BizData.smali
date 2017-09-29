.class public final Lcom/alipay/android/app/data/BizData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/data/BizUiData;


# static fields
.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/app/data/BizDataUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private f:Lcom/alipay/android/app/data/BizDataUnit;

.field private g:Lcom/alipay/android/app/data/InteractionData;

.field private h:Lcom/alipay/android/app/data/DataSource;

.field private i:Lcom/alipay/android/app/data/ValidatedFrameData;

.field private j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

.field private k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

.field private l:Lcom/alipay/android/app/data/DataProcessor;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/alipay/android/app/data/BizData;->a:I

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/data/BizData;->b:I

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/alipay/android/app/data/InteractionData;

    invoke-direct {v0}, Lcom/alipay/android/app/data/InteractionData;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->g:Lcom/alipay/android/app/data/InteractionData;

    .line 57
    new-instance v0, Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/data/ValidatedFrameData;-><init>(Lcom/alipay/android/app/data/BizData;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    .line 58
    new-instance v0, Lcom/alipay/android/app/data/DataSource;

    iget-object v1, p0, Lcom/alipay/android/app/data/BizData;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/data/DataSource;-><init>(Lcom/alipay/android/app/data/ValidatedFrameData;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->h:Lcom/alipay/android/app/data/DataSource;

    .line 59
    new-instance v0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    invoke-direct {v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    invoke-virtual {v0, p0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Lcom/alipay/android/app/data/BizUiData;)V

    .line 61
    invoke-static {}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a()Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/data/BizData;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a(I)Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/app/data/BizDataUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    sput-object p0, Lcom/alipay/android/app/data/BizData;->e:Ljava/lang/Class;

    .line 204
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/alipay/android/app/data/BizData;->a:I

    return v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 110
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :catch_0
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "InterruptedException"

    invoke-direct {v0, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/android/app/data/BizData;->d:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public final b()Lcom/alipay/android/app/IRemoteCallback;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/data/BizData;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->e(I)Lcom/alipay/android/app/IRemoteCallback;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/alipay/android/app/data/DataProcessor;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->l:Lcom/alipay/android/app/data/DataProcessor;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/alipay/android/app/data/DataProcessor;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/data/DataProcessor;-><init>(Lcom/alipay/android/app/data/BizData;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->l:Lcom/alipay/android/app/data/DataProcessor;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->l:Lcom/alipay/android/app/data/DataProcessor;

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :catch_0
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "InterruptedException"

    invoke-direct {v0, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    return-object v0
.end method

.method public final g()Lcom/alipay/android/app/data/ValidatedFrameData;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    return-object v0
.end method

.method public final h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/data/BizData;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->b()V

    .line 143
    :cond_0
    invoke-static {}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a()Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/data/BizData;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->b(I)V

    .line 144
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->dispose()V

    .line 147
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iput-object v2, p0, Lcom/alipay/android/app/data/BizData;->l:Lcom/alipay/android/app/data/DataProcessor;

    .line 151
    iput-object v2, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    .line 152
    iput-object v2, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    .line 153
    iput v3, p0, Lcom/alipay/android/app/data/BizData;->a:I

    .line 154
    iput v3, p0, Lcom/alipay/android/app/data/BizData;->b:I

    .line 155
    iput-object v2, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    .line 156
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/alipay/android/app/data/BizData;->b:I

    return v0
.end method

.method public final k()Lcom/alipay/android/app/data/InteractionData;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->g:Lcom/alipay/android/app/data/InteractionData;

    return-object v0
.end method

.method public final l()Lcom/alipay/android/app/data/DataSource;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->h:Lcom/alipay/android/app/data/DataSource;

    return-object v0
.end method

.method public final m()Lcom/alipay/android/app/data/BizDataUnit;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/alipay/android/app/data/BizData;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->f:Lcom/alipay/android/app/data/BizDataUnit;

    if-nez v0, :cond_0

    .line 194
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/data/BizData;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizDataUnit;

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->f:Lcom/alipay/android/app/data/BizDataUnit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->f:Lcom/alipay/android/app/data/BizDataUnit;

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
