.class public Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "NebulaServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/api/NebulaService;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NebulaService"


# instance fields
.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Session;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Ljava/util/Map;

    .line 57
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    .line 58
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d:Z

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 60
    const-string/jumbo v2, "H5NebulaService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init nebula service delta "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 64
    const-string/jumbo v0, "H5NebulaService"

    const-string/jumbo v1, "initPlugins"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d:Z

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v2

    .line 69
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5ServicePlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ServicePlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 70
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 71
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 72
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5SecurePlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5SecurePlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 73
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 74
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 75
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 76
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 77
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;-><init>()V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;

    move-result-object v3

    .line 80
    const-string/jumbo v4, "service"

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 84
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 85
    const-string/jumbo v2, "H5NebulaService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initPlugins delta "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public addSession(Lcom/alipay/mobile/h5container/api/H5Session;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 167
    if-nez p1, :cond_0

    move v0, v1

    .line 181
    :goto_0
    return v0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5Session;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v2

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public createPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d:Z

    if-nez v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a()V

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 100
    :cond_1
    const-string/jumbo v1, "H5NebulaService"

    const-string/jumbo v2, "invalid h5 context!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-object v0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 105
    const-string/jumbo v1, "H5NebulaService"

    const-string/jumbo v2, "not activity context!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_3
    if-eqz p2, :cond_5

    .line 111
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getSessionId(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string/jumbo v2, "H5NebulaService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createPage for session "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getListeners()Ljava/util/List;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 116
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v1, v0

    .line 120
    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 121
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    move-object v0, v2

    .line 122
    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public exitService()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 246
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->exitSession()Z

    goto :goto_0
.end method

.method public getData()Lcom/alipay/mobile/h5container/api/H5Data;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Lcom/alipay/mobile/h5container/api/H5Data;

    if-nez v0, :cond_0

    .line 259
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Data;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a:Lcom/alipay/mobile/h5container/api/H5Data;

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 5

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    monitor-enter v2

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 186
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-nez v0, :cond_4

    .line 198
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;-><init>()V

    .line 199
    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Session;->setId(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->addSession(Lcom/alipay/mobile/h5container/api/H5Session;)Z

    move-object v1, v0

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    :cond_1
    return-object v1

    .line 187
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 188
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 205
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 206
    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Session;->addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public getSessions()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    return-object v0
.end method

.method public getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    monitor-exit v1

    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 239
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->onRelease()V

    .line 91
    return-void
.end method

.method public removeSession(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 230
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    monitor-enter v2

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 219
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    monitor-exit v2

    move v0, v1

    .line 230
    goto :goto_0

    .line 220
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Session;

    .line 221
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 224
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Session;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 225
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->onRelease()V

    .line 226
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public startPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Z
    .locals 6

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->d:Z

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a()V

    .line 131
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    .line 137
    :goto_0
    const/4 v0, 0x0

    .line 139
    if-eqz p2, :cond_3

    .line 140
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5ParamParser;->transParamParse(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 142
    const-string/jumbo v0, "tt"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    const-string/jumbo v0, "transparent"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_1
    const-string/jumbo v3, "YES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    const-string/jumbo v0, "supportTrans"

    const-string/jumbo v3, "use TransparentH5Activity"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    :goto_1
    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getSessionId(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string/jumbo v3, "H5NebulaService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startPage for session "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Bundle;->getListeners()Ljava/util/List;

    move-result-object v3

    .line 156
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 162
    :cond_3
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 163
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 150
    :cond_5
    const-string/jumbo v0, "supportTrans"

    const-string/jumbo v3, "use H5Activity"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1
.end method
