.class final Lcom/alipay/mobile/appstoreapp/manager/b;
.super Ljava/lang/Object;
.source "AppManageServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 2

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    .line 1671
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1672
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 1673
    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1693
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 1695
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 1694
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/CommonLogAgentUtil;->LOG_DOWNLOAD_RESULT(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V

    .line 1698
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1699
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 1700
    return-void
.end method

.method public final onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1677
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 1679
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 1678
    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/CommonLogAgentUtil;->LOG_DOWNLOAD_RESULT(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyInstallStatus(I)V

    .line 1682
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1683
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    .line 1688
    :goto_0
    return-void

    .line 1685
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1686
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto :goto_0
.end method

.method public final onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 3

    .prologue
    .line 1656
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1657
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 1658
    sget v2, Lcom/alipay/mobile/openplatform/R$string;->q:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1659
    const/4 v2, 0x0

    .line 1657
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 1660
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    .line 1661
    return-void
.end method

.method public final onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V

    .line 1666
    return-void
.end method
