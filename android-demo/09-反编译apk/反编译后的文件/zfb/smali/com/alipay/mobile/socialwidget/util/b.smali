.class final Lcom/alipay/mobile/socialwidget/util/b;
.super Ljava/lang/Object;
.source "SocialSdkLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:refreshSdk:start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 156
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;

    .line 155
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;->refreshSdk()V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:refreshSdk:done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;->sdkRefreshed()V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:refreshSdk:done, callback null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
