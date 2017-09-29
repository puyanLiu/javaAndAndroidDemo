.class final Lcom/alipay/mobile/socialwidget/ui/v;
.super Landroid/os/Handler;
.source "StrangerSessionPage.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 253
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Ljava/lang/ref/WeakReference;

    .line 254
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 267
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b()V

    .line 261
    :cond_0
    return-void
.end method
