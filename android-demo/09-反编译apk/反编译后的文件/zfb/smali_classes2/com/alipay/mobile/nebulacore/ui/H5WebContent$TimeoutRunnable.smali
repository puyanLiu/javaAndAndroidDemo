.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 349
    const-string/jumbo v0, "H5WebContent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TimeoutRunnable timeout,pullFreshTimeOut :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "TimeoutRunnable timeout,invoke restorePullToRefresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/view/H5Progress;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Progress;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->fitContent()V

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->g(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 360
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    goto :goto_0
.end method
