.class public Lcom/alipay/mobile/quinox/engine/ApkEngineManager;
.super Ljava/lang/Object;
.source "ApkEngineManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Lcom/alipay/mobile/apk/common/AbstractEngine;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/alipay/mobile/quinox/engine/ApkEngineManager;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/abq/qba/a/b;

    invoke-direct {v0}, Lcom/abq/qba/a/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->c:Lcom/alipay/mobile/apk/common/AbstractEngine;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->c:Lcom/alipay/mobile/apk/common/AbstractEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUnsupportedCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "DefaultEngine"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getUnsupportedCause(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedCause(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getUnsupportedCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "DefaultEngine"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->isSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->isSupported(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
