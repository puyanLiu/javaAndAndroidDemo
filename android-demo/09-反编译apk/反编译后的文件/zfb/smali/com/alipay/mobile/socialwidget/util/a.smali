.class final Lcom/alipay/mobile/socialwidget/util/a;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:loadSdk:start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 125
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;

    .line 124
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkLoadService;->loadSdk()V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:loadSdk:done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;->sdkLoaded()V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "contactscommon.db"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "messagecommonchat.db"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    :cond_1
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:loadSdk:done, callback null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
