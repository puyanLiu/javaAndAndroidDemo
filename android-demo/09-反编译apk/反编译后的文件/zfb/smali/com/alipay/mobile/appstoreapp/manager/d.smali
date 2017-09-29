.class final Lcom/alipay/mobile/appstoreapp/manager/d;
.super Ljava/lang/Object;
.source "AppManageServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/manager/c;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic c:Z

.field private final synthetic d:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/manager/c;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;ZLcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->a:Lcom/alipay/mobile/appstoreapp/manager/c;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-boolean p3, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->c:Z

    iput-object p4, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->d:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_0

    .line 1732
    const-string/jumbo v0, "AppManageServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "H5app appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " install, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1733
    iget-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1732
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->a:Lcom/alipay/mobile/appstoreapp/manager/c;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->d:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    .line 1735
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->a:Lcom/alipay/mobile/appstoreapp/manager/c;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Ljava/lang/String;)V

    .line 1748
    :goto_0
    return-void

    .line 1738
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->c:Z

    if-eqz v0, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->a:Lcom/alipay/mobile/appstoreapp/manager/c;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->d:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    goto :goto_0

    .line 1741
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1742
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->a:Lcom/alipay/mobile/appstoreapp/manager/c;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->d:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    goto :goto_0

    .line 1744
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->a:Lcom/alipay/mobile/appstoreapp/manager/c;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1745
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/d;->d:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto :goto_0
.end method
