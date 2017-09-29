.class public abstract Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.super Ljava/lang/Object;
.source "H5CoreTarget.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5CoreTarget"


# instance fields
.field protected a:Lcom/alipay/mobile/h5container/api/H5Data;

.field private b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

.field private c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5CoreNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->d:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;-><init>(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized addChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    monitor-enter p0

    if-nez p1, :cond_0

    move v0, v1

    .line 80
    :goto_0
    monitor-exit p0

    return v0

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 74
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getData()Lcom/alipay/mobile/h5container/api/H5Data;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5Data;

    return-object v0
.end method

.method public getParent()Lcom/alipay/mobile/h5container/api/H5CoreNode;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    return-object v0
.end method

.method public getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->onRelease()V

    .line 113
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 115
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 116
    return-void
.end method

.method public declared-synchronized removeChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    monitor-enter p0

    if-nez p1, :cond_0

    move v0, v1

    .line 96
    :goto_0
    monitor-exit p0

    return v0

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 89
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .prologue
    .line 135
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "H5CoreTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispatch action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 139
    return-void
.end method

.method public setData(Lcom/alipay/mobile/h5container/api/H5Data;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->a:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 131
    return-void
.end method

.method public setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    if-ne p1, v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->removeChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z

    .line 55
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->c:Lcom/alipay/mobile/h5container/api/H5CoreNode;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/h5container/api/H5CoreNode;->addChild(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Z

    goto :goto_0
.end method
