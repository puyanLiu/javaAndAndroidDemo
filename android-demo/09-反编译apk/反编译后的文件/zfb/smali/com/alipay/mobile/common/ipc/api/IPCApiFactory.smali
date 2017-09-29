.class public final Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;
.super Ljava/lang/Object;
.source "IPCApiFactory.java"


# static fields
.field private static IPC_CONTEXT_MANAGER:Lcom/alipay/mobile/common/ipc/api/IPCContextManager; = null

.field private static final IPC_CONTEXT_MNG_CLASS:Ljava/lang/String; = "com.alipay.mobile.common.ipc.biz.IPCContextManagerImpl"

.field private static IPC_MANAGER:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager; = null

.field private static final IPC_MANAGER_CLASS:Ljava/lang/String; = "com.alipay.mobile.common.ipc.biz.IPCManagerService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.biz.IPCContextManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    return-object v0
.end method

.method public static final getIPCManager()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.biz.IPCManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    return-object v0
.end method

.method public static final getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_CONTEXT_MANAGER:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_CONTEXT_MANAGER:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    .line 85
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_CONTEXT_MANAGER:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_CONTEXT_MANAGER:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 82
    :cond_1
    :try_start_1
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.biz.IPCContextManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    sput-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_CONTEXT_MANAGER:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    .line 83
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_CONTEXT_MANAGER:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    goto :goto_0
.end method

.method public static final getSingletonIPCManager()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_MANAGER:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_MANAGER:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_MANAGER:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_MANAGER:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 46
    :cond_1
    :try_start_1
    const-string/jumbo v0, "com.alipay.mobile.common.ipc.biz.IPCManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    sput-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_MANAGER:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 47
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sget-object v0, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->IPC_MANAGER:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    goto :goto_0
.end method

.method public static final getSingletonServiceBeanManager()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    .locals 2

    .prologue
    .line 90
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getServiceBeanManager()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
