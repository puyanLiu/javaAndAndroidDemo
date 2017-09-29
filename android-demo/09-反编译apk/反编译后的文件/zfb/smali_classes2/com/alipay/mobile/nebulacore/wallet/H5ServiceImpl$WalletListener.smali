.class Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
.super Ljava/lang/Object;
.source "H5ServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Listener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->a:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->b:Landroid/os/Bundle;

    .line 161
    return-void
.end method


# virtual methods
.method public onPageCreated(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onPageDestroyed(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onSessionCreated(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 4

    .prologue
    .line 165
    instance-of v0, p1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 166
    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->setParams(Landroid/os/Bundle;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "H5ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSessionCreated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Session;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 171
    return-void
.end method

.method public onSessionDestroyed(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "laiwangDomains"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->updateNeedSsoFlag(Ljava/lang/String;Z)V

    .line 178
    return-void
.end method
