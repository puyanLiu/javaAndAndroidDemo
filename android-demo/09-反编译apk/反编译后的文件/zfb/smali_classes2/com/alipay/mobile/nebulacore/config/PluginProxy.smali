.class public Lcom/alipay/mobile/nebulacore/config/PluginProxy;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "PluginProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PluginProxy"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/h5container/api/H5PluginManager;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/alipay/mobile/h5container/api/H5PluginManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/config/PluginConfig;",
            ">;",
            "Lcom/alipay/mobile/h5container/api/H5PluginManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a:Ljava/util/Map;

    .line 40
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/config/PluginConfig;

    .line 44
    iget-boolean v2, v0, Lcom/alipay/mobile/nebulacore/config/PluginConfig;->lazyInit:Z

    if-eqz v2, :cond_3

    .line 45
    new-instance v2, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;-><init>(Lcom/alipay/mobile/nebulacore/config/PluginProxy;)V

    .line 46
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->registered:Z

    .line 47
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 48
    iput-object v0, v2, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebulacore/config/PluginConfig;

    .line 49
    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/config/PluginConfig;->eventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a(Lcom/alipay/mobile/nebulacore/config/PluginConfig;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/nebulacore/config/PluginConfig;)Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 119
    iget-object v0, p1, Lcom/alipay/mobile/nebulacore/config/PluginConfig;->bundleName:Ljava/lang/String;

    .line 120
    iget-object v4, p1, Lcom/alipay/mobile/nebulacore/config/PluginConfig;->className:Ljava/lang/String;

    .line 122
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    move-object v0, v1

    .line 143
    :goto_0
    return-object v0

    .line 128
    :cond_0
    :try_start_0
    const-class v5, Lcom/alipay/mobile/h5container/api/H5Plugin;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Plugin;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    if-nez v0, :cond_2

    move-object v0, v1

    .line 133
    goto :goto_0

    .line 136
    :cond_2
    :try_start_1
    const-string/jumbo v1, "PluginProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "register ext plugin "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v2

    .line 142
    const-string/jumbo v3, "PluginProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "initPlugin "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " elapse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 139
    :goto_2
    const-string/jumbo v5, "PluginProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "failed to initialize plugin "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 138
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;

    .line 96
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->registered:Z

    if-eqz v3, :cond_0

    .line 112
    :goto_0
    return v1

    .line 101
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-nez v3, :cond_1

    .line 102
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebulacore/config/PluginConfig;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a(Lcom/alipay/mobile/nebulacore/config/PluginConfig;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 106
    :cond_1
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v3, :cond_2

    .line 107
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebulacore/config/PluginConfig;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/config/PluginConfig;->className:Ljava/lang/String;

    .line 108
    const-string/jumbo v3, "PluginProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] handle pass "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Plugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->registered:Z

    move v0, v1

    :goto_1
    move v1, v0

    .line 112
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;

    .line 74
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->registered:Z

    if-eqz v3, :cond_0

    .line 89
    :goto_0
    return v1

    .line 79
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-nez v3, :cond_1

    .line 80
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebulacore/config/PluginConfig;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a(Lcom/alipay/mobile/nebulacore/config/PluginConfig;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 83
    :cond_1
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v3, :cond_2

    .line 84
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebulacore/config/PluginConfig;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/config/PluginConfig;->className:Ljava/lang/String;

    .line 85
    const-string/jumbo v3, "PluginProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] intercept pass "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Plugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    .line 87
    iput-boolean v1, v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy$ProxyInfo;->registered:Z

    move v0, v1

    :goto_1
    move v1, v0

    .line 89
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 60
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    return-void
.end method
