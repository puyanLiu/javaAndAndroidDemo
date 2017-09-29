.class Lcom/flybird/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# instance fields
.field final synthetic a:Lcom/flybird/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/flybird/CountDownTimer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    .line 140
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 145
    iget-object v2, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    invoke-static {v0}, Lcom/flybird/CountDownTimer;->a(Lcom/flybird/CountDownTimer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    invoke-static {v0}, Lcom/flybird/CountDownTimer;->b(Lcom/flybird/CountDownTimer;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 149
    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    .line 150
    iget-object v0, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    invoke-virtual {v0}, Lcom/flybird/CountDownTimer;->onFinish()V

    .line 145
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    invoke-static {v3}, Lcom/flybird/CountDownTimer;->c(Lcom/flybird/CountDownTimer;)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 153
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/flybird/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/flybird/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 155
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 156
    iget-object v5, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    invoke-virtual {v5, v0, v1}, Lcom/flybird/CountDownTimer;->onTick(J)V

    .line 159
    iget-object v0, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    invoke-static {v0}, Lcom/flybird/CountDownTimer;->c(Lcom/flybird/CountDownTimer;)J

    move-result-wide v0

    add-long/2addr v0, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 163
    :goto_1
    cmp-long v3, v0, v6

    if-ltz v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    invoke-static {v3}, Lcom/flybird/CountDownTimer;->d(Lcom/flybird/CountDownTimer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/flybird/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/flybird/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 163
    :cond_3
    iget-object v3, p0, Lcom/flybird/CountDownTimer$1;->a:Lcom/flybird/CountDownTimer;

    invoke-static {v3}, Lcom/flybird/CountDownTimer;->c(Lcom/flybird/CountDownTimer;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_1
.end method
