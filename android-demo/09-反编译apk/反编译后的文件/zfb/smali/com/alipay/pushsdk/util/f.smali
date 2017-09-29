.class final Lcom/alipay/pushsdk/util/f;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/util/e;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/util/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/util/f;->a:Lcom/alipay/pushsdk/util/e;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->a:Lcom/alipay/pushsdk/util/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Lcom/alipay/pushsdk/util/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->a:Lcom/alipay/pushsdk/util/e;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/f;->a:Lcom/alipay/pushsdk/util/e;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->b(Lcom/alipay/pushsdk/util/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Lcom/alipay/pushsdk/util/e;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->a:Lcom/alipay/pushsdk/util/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Lcom/alipay/pushsdk/util/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 402
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->a:Lcom/alipay/pushsdk/util/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->c(Lcom/alipay/pushsdk/util/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/util/f;->a:Lcom/alipay/pushsdk/util/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->c(Lcom/alipay/pushsdk/util/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 402
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
