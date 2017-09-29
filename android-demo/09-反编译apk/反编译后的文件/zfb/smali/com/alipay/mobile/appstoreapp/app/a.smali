.class final Lcom/alipay/mobile/appstoreapp/app/a;
.super Ljava/lang/Object;
.source "AppStoreApp.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->b:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 177
    sget v2, Lcom/alipay/mobile/openplatform/R$string;->r:I

    .line 176
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    const/4 v2, 0x0

    .line 176
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppStoreApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "open url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/app/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2, v4, v4}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 162
    return-void
.end method

.method public final onUserCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/openplatform/R$string;->s:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    const/4 v2, 0x0

    .line 147
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    return-void
.end method
