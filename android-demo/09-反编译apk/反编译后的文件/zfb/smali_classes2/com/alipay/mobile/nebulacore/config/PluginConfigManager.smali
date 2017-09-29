.class public Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;
.super Ljava/lang/Object;
.source "PluginConfigManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PluginConfigManager"

.field private static a:Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;


# instance fields
.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/config/PluginConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->a:Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->a:Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->a:Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->b:Z

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->initPluginConfig()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move-object v0, v1

    .line 77
    :goto_0
    return-object v0

    .line 62
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 70
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 64
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/config/PluginConfig;

    .line 65
    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/config/PluginConfig;->scope:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 66
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :cond_5
    new-instance v0, Lcom/alipay/mobile/nebulacore/config/PluginProxy;

    invoke-direct {v0, v4, p2}, Lcom/alipay/mobile/nebulacore/config/PluginProxy;-><init>(Ljava/util/List;Lcom/alipay/mobile/h5container/api/H5PluginManager;)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 76
    const-string/jumbo v3, "PluginConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createPlugin "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
.end method

.method public initPluginConfig()V
    .locals 5

    .prologue
    .line 39
    :try_start_0
    const-string/jumbo v0, "PluginConfigManager"

    const-string/jumbo v1, "initPluginConfig"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->b:Z

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "config/h5_plugin.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 44
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/config/PluginConfigParser;->parseConfig(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/config/PluginConfigManager;->c:Ljava/util/List;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 47
    const-string/jumbo v2, "PluginConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initPluginConfig delta "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "PluginConfigManager"

    const-string/jumbo v2, "parse h5 external plugin configuration exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
