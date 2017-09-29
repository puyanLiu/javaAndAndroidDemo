.class public Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;
.super Ljava/lang/Object;
.source "ServiceBeanManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "IPC_ServiceBeanManager"


# instance fields
.field private objMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;->objMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getServiceBean(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "IPC_ServiceBeanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getServiceBean className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;->objMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "IPC_ServiceBeanManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getServiceBean obj is "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object v1

    .line 53
    :cond_0
    const-string/jumbo v0, "not null"

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;->objMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;->objMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string/jumbo v0, "IPC_ServiceBeanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerAndOverride(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;->objMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v0, "IPC_ServiceBeanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerAndOverride className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;->objMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v0, "IPC_ServiceBeanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregister className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public unregisterAll()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;->objMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    const-string/jumbo v0, "IPC_ServiceBeanManager"

    const-string/jumbo v1, "unregisterAll"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
