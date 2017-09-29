.class public Lcom/alipay/mobile/common/ipc/biz/IPCCallBackService;
.super Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub;
.source "IPCCallBackService.java"


# instance fields
.field private localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack$Stub;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallBackService;->localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/ipc/api/LocalCallManager;->call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    return-object v0
.end method

.method public setLocalCallManager(Lcom/alipay/mobile/common/ipc/api/LocalCallManager;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallBackService;->localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    .line 30
    return-void
.end method
