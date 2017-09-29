.class public Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "H5SessionImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Session;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Session"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/h5container/api/H5Scenario;

.field private d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Listener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Z

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    .line 54
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PreRenderPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;

    move-result-object v1

    const-string/jumbo v2, "session"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 56
    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "utl"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 126
    return-void
.end method


# virtual methods
.method public addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
    .locals 2

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public addPage(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    .line 87
    if-eqz v4, :cond_1

    .line 88
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 101
    invoke-interface {p1, p0}, Lcom/alipay/mobile/h5container/api/H5Page;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    const-string/jumbo v1, "com.alipay.mobile.h5container.hidePage"

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v5, v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessions()Ljava/util/Stack;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 112
    if-ne v0, v2, :cond_4

    if-eqz v4, :cond_4

    .line 113
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_FROM_NATIVE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 85
    :cond_4
    monitor-exit v3

    move v0, v2

    .line 117
    goto :goto_0

    .line 90
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 91
    invoke-interface {v0, p0}, Lcom/alipay/mobile/h5container/api/H5Listener;->onSessionCreated(Lcom/alipay/mobile/h5container/api/H5Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 95
    :cond_6
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    monitor-exit v3

    move v0, v1

    goto/16 :goto_0

    .line 106
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 107
    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5Listener;->onPageCreated(Lcom/alipay/mobile/h5container/api/H5Page;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public exitSession()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 239
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Z

    if-eqz v0, :cond_0

    .line 240
    const-string/jumbo v0, "H5Session"

    const-string/jumbo v1, "session already exited!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    .line 243
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->e:Z

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;->releaseContent()V

    .line 253
    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;

    :cond_1
    move v0, v1

    .line 255
    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 247
    const-string/jumbo v2, "com.alipay.mobile.h5container.pageClose"

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v2, "h5PageClose"

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPages()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Lcom/alipay/mobile/h5container/api/H5Scenario;

    return-object v0
.end method

.method public getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    monitor-exit v1

    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWebProvider()Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->f:Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;

    return-object v0
.end method

.method public removeListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
    .locals 1

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removePage(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 130
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v3

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    monitor-enter v4

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 137
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v2, v1

    .line 151
    :goto_1
    if-eqz v2, :cond_5

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    if-nez v0, :cond_8

    move v0, v3

    .line 153
    :goto_2
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-gez v1, :cond_9

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->removeSession(Ljava/lang/String;)Z

    .line 160
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->exitSession()Z

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    if-nez v0, :cond_a

    move v0, v3

    .line 162
    :goto_4
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-gez v1, :cond_b

    .line 168
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSessions()Ljava/util/Stack;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_TO_NATIVE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 173
    :cond_4
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->onRelease()V

    .line 174
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->setParent(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 135
    :cond_5
    monitor-exit v4

    .line 178
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 138
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    const-string/jumbo v1, "com.alipay.mobile.h5container.hidePage"

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v1, v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 142
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v5, "com.alipay.mobile.h5container.showPage"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 144
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->d:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v1, v5, v6, v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v2, v0

    .line 147
    goto/16 :goto_1

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_2

    .line 154
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 155
    invoke-interface {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Listener;->onPageDestroyed(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 153
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_3

    .line 161
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_4

    .line 163
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 164
    invoke-interface {v0, p0}, Lcom/alipay/mobile/h5container/api/H5Listener;->onSessionDestroyed(Lcom/alipay/mobile/h5container/api/H5Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_5

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->h:Landroid/os/Bundle;

    .line 204
    return-void
.end method

.method public setScenario(Lcom/alipay/mobile/h5container/api/H5Scenario;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->c:Lcom/alipay/mobile/h5container/api/H5Scenario;

    .line 214
    return-void
.end method
