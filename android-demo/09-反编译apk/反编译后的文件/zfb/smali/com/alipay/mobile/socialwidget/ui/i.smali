.class final Lcom/alipay/mobile/socialwidget/ui/i;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "mScocialPropertiesRpc.getStatus92!!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    .line 617
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;->getStatus92()Lcom/alipay/mobilerelation/rpc/response/GetStatus92Result;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/mobilerelation/rpc/response/GetStatus92Result;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 620
    iget-boolean v0, v0, Lcom/alipay/mobilerelation/rpc/response/GetStatus92Result;->showLayer:Z

    .line 621
    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "mScocialPropertiesRpc.getStatus92 showlayer = true"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/j;-><init>(Lcom/alipay/mobile/socialwidget/ui/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    .line 641
    :goto_1
    return-void

    .line 632
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "mScocialPropertiesRpc.getStatus92 showlayer = false"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    goto :goto_1

    .line 638
    :catchall_0
    move-exception v0

    .line 639
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v1, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    .line 640
    throw v0
.end method
