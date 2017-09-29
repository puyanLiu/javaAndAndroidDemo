.class public Lcom/alipay/mobile/nebulacore/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Service.MetaInfo"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 24
    const-string/jumbo v0, "H5Service.MetaInfo"

    const-string/jumbo v1, "MetaInfo init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "H5AppContainer"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/MetaInfo;->setEntry(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AppUtil;->getAppIds()Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 37
    const-class v1, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 38
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 40
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 41
    return-void

    .line 27
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    new-instance v3, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 29
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 30
    const-string/jumbo v1, "H5AppContainer"

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 31
    const-class v4, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 32
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/MetaInfo;->addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 33
    const-string/jumbo v1, "H5Service.MetaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "add application description "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
