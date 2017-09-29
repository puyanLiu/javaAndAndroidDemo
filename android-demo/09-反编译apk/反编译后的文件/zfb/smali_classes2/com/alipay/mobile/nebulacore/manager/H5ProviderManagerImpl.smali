.class public Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
.super Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.source "H5ProviderManagerImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ProviderManagerImpl"

.field private static c:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/config/ProviderConfig;",
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    .line 58
    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    .line 36
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->c:Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized getProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
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
    const/4 v1, 0x0

    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 101
    :try_start_1
    const-string/jumbo v0, "H5ProviderManagerImpl"

    const-string/jumbo v2, "initProviderConfig"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v4, "config/h5_provider.json"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Ljava/util/Map;

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulacore/config/ProviderConfigParser;->parseConfig(Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-string/jumbo v0, "H5ProviderManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initProviderConfig delta "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 111
    :goto_2
    monitor-exit p0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "H5ProviderManagerImpl"

    const-string/jumbo v3, "parse h5 external provider configuration exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/config/ProviderConfig;

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/config/ProviderConfig;->bundleName:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/config/ProviderConfig;->className:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_6
    const-string/jumbo v0, "H5ProviderManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initialize ext provider "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_4
    const-string/jumbo v4, "H5ProviderManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "failed to initialize provider "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :cond_3
    move-object v0, v1

    .line 111
    goto :goto_2

    .line 105
    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public final declared-synchronized removeProvider(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 117
    :goto_0
    monitor-exit p0

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 117
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setProvider(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
