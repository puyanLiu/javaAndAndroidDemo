.class public Lcom/alipay/pushsdk/c;
.super Ljava/lang/Object;
.source "PushIpcManager.java"


# static fields
.field private static d:Lcom/alipay/pushsdk/c;


# instance fields
.field private a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

.field private b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

.field private c:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static final a()Lcom/alipay/pushsdk/c;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/pushsdk/c;->d:Lcom/alipay/pushsdk/c;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/alipay/pushsdk/c;->d:Lcom/alipay/pushsdk/c;

    .line 41
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-class v1, Lcom/alipay/pushsdk/c;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/c;->d:Lcom/alipay/pushsdk/c;

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/alipay/pushsdk/c;->d:Lcom/alipay/pushsdk/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 38
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/pushsdk/c;

    invoke-direct {v0}, Lcom/alipay/pushsdk/c;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/c;->d:Lcom/alipay/pushsdk/c;

    .line 33
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    sget-object v0, Lcom/alipay/pushsdk/c;->d:Lcom/alipay/pushsdk/c;

    goto :goto_0
.end method


# virtual methods
.method public final b()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/pushsdk/c;->b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getIPCManager()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/c;->b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/c;->b:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    return-object v0
.end method

.method public final c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/pushsdk/c;->a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/c;->a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/c;->a:Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    return-object v0
.end method

.method public final d()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/pushsdk/c;->c:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/alipay/pushsdk/c;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getServiceBeanManager()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/c;->c:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/c;->c:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    return-object v0
.end method
