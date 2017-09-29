.class public Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;
.super Ljava/lang/Object;
.source "ServiceManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/core/ServiceManager;


# instance fields
.field private a:Ljava/util/Map;
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

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->b:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public exit()V
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 131
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 133
    instance-of v4, v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v4, :cond_0

    .line 134
    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    .line 135
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/MicroService;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/MicroService;->destroy(Landroid/os/Bundle;)V

    .line 132
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    return-void
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 65
    :try_start_1
    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/CommonService;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_1
    if-eqz v1, :cond_3

    .line 78
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/CommonService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 79
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v2, "ServiceManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "findServiceByInterface => Load Lzay CommonServie:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_3
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    const-string/jumbo v4, "ServiceManagerImpl"

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 76
    goto :goto_1

    .line 72
    :catch_1
    move-exception v1

    .line 73
    const-string/jumbo v4, "ServiceManagerImpl"

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 76
    goto :goto_1

    .line 74
    :catch_2
    move-exception v1

    .line 75
    const-string/jumbo v4, "ServiceManagerImpl"

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    move-object v0, v2

    .line 85
    goto/16 :goto_0
.end method

.method public onDestroyService(Lcom/alipay/mobile/framework/service/MicroService;)V
    .locals 4

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    instance-of v3, v1, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v3, :cond_2

    .line 111
    check-cast v1, Lcom/alipay/mobile/framework/service/MicroService;

    .line 112
    if-ne v1, p1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    instance-of v2, p2, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->b:Ljava/util/Map;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 95
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 156
    instance-of v2, v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v2, :cond_0

    .line 157
    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/MicroService;->restoreState(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 147
    instance-of v2, v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v2, :cond_0

    .line 148
    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/MicroService;->saveState(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method
