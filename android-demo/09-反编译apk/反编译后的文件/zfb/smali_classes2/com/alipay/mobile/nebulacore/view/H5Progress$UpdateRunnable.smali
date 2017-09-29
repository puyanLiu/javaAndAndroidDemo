.class Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;
.super Ljava/lang/Object;
.source "H5Progress.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5Progress;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;Z)V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->getMax()I

    move-result v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;Z)V

    .line 219
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 176
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->b(Lcom/alipay/mobile/nebulacore/view/H5Progress;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 178
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->c(Lcom/alipay/mobile/nebulacore/view/H5Progress;)J

    move-result-wide v3

    iget v5, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->c:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    int-to-long v5, v0

    div-long/2addr v3, v5

    .line 179
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;Z)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->d(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I

    move-result v0

    .line 185
    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->c:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->c(Lcom/alipay/mobile/nebulacore/view/H5Progress;)J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 184
    add-int/2addr v0, v1

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->e(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->getMax()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;->onProgressEnd()V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->g(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 196
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->g(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;I)V

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->h(Lcom/alipay/mobile/nebulacore/view/H5Progress;)V

    .line 207
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->e(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I

    move-result v1

    if-le v0, v1, :cond_7

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->getMax()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->j(Lcom/alipay/mobile/nebulacore/view/H5Progress;)V

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;Z)V

    goto/16 :goto_0

    .line 200
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->i(Lcom/alipay/mobile/nebulacore/view/H5Progress;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 201
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->f(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress$ProgressNotifier;->onProgressBegin()V

    .line 203
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->setProgress(I)V

    .line 204
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->b(Lcom/alipay/mobile/nebulacore/view/H5Progress;I)V

    goto :goto_1

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->a:Lcom/alipay/mobile/nebulacore/view/H5Progress;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->a(Lcom/alipay/mobile/nebulacore/view/H5Progress;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public setPeriodValue(I)V
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->b:I

    .line 160
    return-void
.end method

.method public setdeltaProgressValue(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Progress$UpdateRunnable;->c:I

    .line 164
    return-void
.end method
