.class public Lcom/alipay/mobile/common/ipc/biz/IPCCallable;
.super Ljava/lang/Object;
.source "IPCCallable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPCCallable"


# instance fields
.field private ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallable;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 23
    return-void
.end method


# virtual methods
.method public call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
    .locals 3

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallable;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    instance-of v0, v0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallable;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    check-cast v0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;

    .line 29
    invoke-virtual {v0}, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->hashRegister()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->callback(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 33
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 34
    const-string/jumbo v1, "Peer not registered"

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 45
    const-string/jumbo v0, "IPCCallable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 48
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_3

    .line 49
    const/16 v1, 0xc9

    iput v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 50
    const-string/jumbo v1, "android.os.DeadObjectException"

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallable;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;->call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "remote return ipcResult is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :cond_3
    const/16 v2, 0xc8

    iput v2, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    goto :goto_0
.end method
