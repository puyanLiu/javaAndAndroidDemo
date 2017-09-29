.class public abstract Lcom/alipay/mobile/h5container/service/H5Service;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "H5Service.java"


# static fields
.field public static final H5APP_ENGINE_TYPE:Ljava/lang/String; = "H5App"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public abstract createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;
.end method

.method public abstract getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.end method

.method public abstract getSharedData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeSharedData(Ljava/lang/String;)V
.end method

.method public abstract sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
.end method

.method public abstract setSharedData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V
.end method

.method public abstract startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
