.class public abstract Lcom/flybird/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->e:Z

    .line 66
    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->f:Z

    .line 140
    new-instance v0, Lcom/flybird/CountDownTimer$1;

    invoke-direct {v0, p0}, Lcom/flybird/CountDownTimer$1;-><init>(Lcom/flybird/CountDownTimer;)V

    iput-object v0, p0, Lcom/flybird/CountDownTimer;->g:Landroid/os/Handler;

    .line 76
    iput-wide p1, p0, Lcom/flybird/CountDownTimer;->a:J

    .line 77
    iput-wide p3, p0, Lcom/flybird/CountDownTimer;->b:J

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/flybird/CountDownTimer;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/flybird/CountDownTimer;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/flybird/CountDownTimer;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flybird/CountDownTimer;)J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->b:J

    return-wide v0
.end method

.method static synthetic d(Lcom/flybird/CountDownTimer;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/flybird/CountDownTimer;->e:Z

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v0, p0, Lcom/flybird/CountDownTimer;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iput-boolean v1, p0, Lcom/flybird/CountDownTimer;->e:Z

    .line 88
    return-void
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public pause()J
    .locals 4

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flybird/CountDownTimer;->d:J

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->f:Z

    .line 111
    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->d:J

    return-wide v0
.end method

.method public resume()J
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flybird/CountDownTimer;->c:J

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->f:Z

    .line 120
    iget-object v0, p0, Lcom/flybird/CountDownTimer;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/CountDownTimer;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->d:J

    return-wide v0
.end method

.method public final declared-synchronized start()Lcom/flybird/CountDownTimer;
    .locals 4

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flybird/CountDownTimer;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/flybird/CountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 102
    :goto_0
    monitor-exit p0

    return-object v0

    .line 98
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flybird/CountDownTimer;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flybird/CountDownTimer;->c:J

    .line 99
    iget-object v0, p0, Lcom/flybird/CountDownTimer;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flybird/CountDownTimer;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->e:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/CountDownTimer;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 102
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
