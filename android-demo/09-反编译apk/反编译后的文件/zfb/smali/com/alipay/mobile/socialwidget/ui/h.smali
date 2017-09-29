.class final Lcom/alipay/mobile/socialwidget/ui/h;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/g;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/h;->a:Lcom/alipay/mobile/socialwidget/ui/g;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/h;->a:Lcom/alipay/mobile/socialwidget/ui/g;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/g;->a(Lcom/alipay/mobile/socialwidget/ui/g;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/h;->a:Lcom/alipay/mobile/socialwidget/ui/g;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/g;->a(Lcom/alipay/mobile/socialwidget/ui/g;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobilerelation/rpc/ScocialPropertiesRpc;->enable92()Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/h;->a:Lcom/alipay/mobile/socialwidget/ui/g;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/g;->a(Lcom/alipay/mobile/socialwidget/ui/g;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "mScocialPropertiesRpc.enable92() success!!!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/h;->a:Lcom/alipay/mobile/socialwidget/ui/g;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/g;->a(Lcom/alipay/mobile/socialwidget/ui/g;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/h;->a:Lcom/alipay/mobile/socialwidget/ui/g;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/g;->a(Lcom/alipay/mobile/socialwidget/ui/g;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    throw v0
.end method
