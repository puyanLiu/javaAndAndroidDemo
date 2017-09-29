.class public final Lcom/alipay/pushsdk/b;
.super Ljava/lang/Object;
.source "PushIpcHelper.java"


# direct methods
.method public static final a()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    .locals 1

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/alipay/pushsdk/c;->a()Lcom/alipay/pushsdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/c;->d()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    .line 42
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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
    .line 60
    invoke-static {}, Lcom/alipay/pushsdk/c;->a()Lcom/alipay/pushsdk/c;

    move-result-object v0

    .line 62
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/pushsdk/c;->c()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/pushsdk/c;->a()Lcom/alipay/pushsdk/c;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/pushsdk/c;->b()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;->hashRegister()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method
