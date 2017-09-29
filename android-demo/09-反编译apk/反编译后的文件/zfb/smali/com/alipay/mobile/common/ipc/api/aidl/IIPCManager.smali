.class public interface abstract Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;
.super Ljava/lang/Object;
.source "IIPCManager.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
.end method

.method public abstract hashRegister()Z
.end method

.method public abstract registerCallBack(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;)V
.end method

.method public abstract unregisterCallBack(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;)V
.end method
