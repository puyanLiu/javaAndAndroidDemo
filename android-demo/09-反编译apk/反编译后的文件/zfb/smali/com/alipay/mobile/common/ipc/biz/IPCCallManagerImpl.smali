.class public Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;
.super Ljava/lang/Object;
.source "IPCCallManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/IPCCallManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "IPC_IPCCallManager"


# instance fields
.field private ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

.field private ipcRetryHandler:Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;)Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;->ipcRetryHandler:Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;

    return-object v0
.end method


# virtual methods
.method public getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;-><init>(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$1;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setIIPCManager(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 45
    return-void
.end method

.method public setIPCCallRetryHandler(Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;->ipcRetryHandler:Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;

    .line 50
    return-void
.end method
