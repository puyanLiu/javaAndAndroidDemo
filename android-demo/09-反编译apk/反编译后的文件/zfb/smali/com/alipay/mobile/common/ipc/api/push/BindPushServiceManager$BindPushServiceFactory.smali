.class public final Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;
.super Ljava/lang/Object;
.source "BindPushServiceManager.java"


# static fields
.field private static final BEAN_CLASS:Ljava/lang/String; = "com.alipay.mobile.common.ipc.push.BindPushServiceManagerImpl"

.field private static BIND_PUSH_SERVICE_MANAGER:Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->BIND_PUSH_SERVICE_MANAGER:Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->BIND_PUSH_SERVICE_MANAGER:Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    .line 63
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->BIND_PUSH_SERVICE_MANAGER:Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->BIND_PUSH_SERVICE_MANAGER:Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 57
    :cond_1
    :try_start_1
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.push.BindPushServiceManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    sput-object v0, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->BIND_PUSH_SERVICE_MANAGER:Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->BIND_PUSH_SERVICE_MANAGER:Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
