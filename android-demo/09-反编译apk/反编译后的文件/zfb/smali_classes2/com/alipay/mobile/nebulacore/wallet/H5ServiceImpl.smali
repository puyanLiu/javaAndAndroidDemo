.class public Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
.super Lcom/alipay/mobile/h5container/service/H5Service;
.source "H5ServiceImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ServiceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/service/H5Service;-><init>()V

    return-void
.end method


# virtual methods
.method public createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 5

    .prologue
    .line 121
    if-nez p2, :cond_0

    .line 122
    new-instance p2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 125
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 129
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getMicroApplication(Lcom/alipay/mobile/h5container/api/H5Context;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 133
    const/4 v0, 0x0

    .line 134
    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_2
    const-string/jumbo v2, "H5ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createPage appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V

    .line 141
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->createPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    return-object v0
.end method

.method public getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    return-object v0
.end method

.method public getSharedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 40
    const-string/jumbo v0, "H5ServiceImpl"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->init(Landroid/content/Context;)V

    .line 45
    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5Engine;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/wallet/H5Engine;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    .line 47
    const-string/jumbo v4, "H5App"

    .line 46
    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->negotiate()V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 51
    const-string/jumbo v2, "H5ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCrate delta "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "H5ServiceImpl"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public removeSharedData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Data;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    return-void
.end method

.method public sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p2, :cond_0

    .line 96
    const-string/jumbo v0, "H5ServiceImpl"

    const-string/jumbo v1, "invalid start page parameters!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 101
    :cond_0
    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_1
    const-string/jumbo v2, "H5ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startPage appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    if-nez v0, :cond_1

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 111
    :cond_1
    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p2, v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V

    .line 114
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 117
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->startPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;)V

    .line 82
    return-void
.end method

.method public startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 90
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 92
    return-void
.end method
