.class public Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransIPCRetryHandler;
.super Ljava/lang/Object;
.source "ExtTransIPCRetryHandler.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtTransIPCRetryHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryIPCCall(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/ipc/api/IPCException;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 23
    const-string/jumbo v1, "ExtTransIPCRetryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "retryIPCCall. method=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], ipcException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alipay/mobile/common/ipc/api/IPCException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", retryTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v1, 0x5

    if-le p4, v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    if-eqz p3, :cond_0

    iget v1, p3, Lcom/alipay/mobile/common/ipc/api/IPCException;->errorCode:I

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->getInstance()Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;->unbindService()V

    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->waitToUnBinded()V

    .line 36
    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;->bindService()V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->waitToBinded()V

    .line 38
    const/4 v0, 0x1

    goto :goto_0
.end method
