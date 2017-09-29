.class public interface abstract Lcom/alipay/mobile/common/ipc/api/IPCCallManager;
.super Ljava/lang/Object;
.source "IPCCallManager.java"


# virtual methods
.method public abstract getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract setIIPCManager(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V
.end method

.method public abstract setIPCCallRetryHandler(Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;)V
.end method
