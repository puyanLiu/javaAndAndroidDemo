.class public Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static WIFI_SDK_EXP_HANDLER:Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;


# instance fields
.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->WIFI_SDK_EXP_HANDLER:Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->WIFI_SDK_EXP_HANDLER:Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->WIFI_SDK_EXP_HANDLER:Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->WIFI_SDK_EXP_HANDLER:Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->unsetDefaultUncaughtExceptionHandler()V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->WIFI_SDK_EXP_HANDLER:Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultUncaughtExceptionHandler()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized unsetDefaultUncaughtExceptionHandler()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->WIFI_SDK_EXP_HANDLER:Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/api/NfdExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
