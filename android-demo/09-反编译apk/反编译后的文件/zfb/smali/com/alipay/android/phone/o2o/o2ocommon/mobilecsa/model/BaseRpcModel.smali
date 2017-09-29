.class public abstract Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;
.super Ljava/lang/Object;
.source "BaseRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Service:",
        "Ljava/lang/Object;",
        "T:",
        "Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TService;>;"
        }
    .end annotation
.end field

.field protected mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TService;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mClazz:Ljava/lang/Class;

    .line 24
    return-void
.end method

.method public static findServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/MicroService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    return-object v0
.end method

.method private isNetWorkError(I)Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    .line 91
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    .line 92
    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    .line 93
    const/4 v0, 0x6

    if-eq v0, p1, :cond_0

    .line 94
    const/4 v0, 0x7

    if-eq v0, p1, :cond_0

    .line 95
    const/16 v0, 0x8

    if-eq v0, p1, :cond_0

    .line 96
    const/16 v0, 0x10

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public doRequest()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 43
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->findServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;-><init>(I)V

    throw v0

    .line 48
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 49
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->requestData(Ljava/lang/Object;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 51
    const-string/jumbo v0, "O2OHOME_RPC"

    iget-object v4, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mClazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v3}, Lcom/alipay/android/phone/o2o/o2ocommon/util/MonitorLogHelper;->performance(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    if-nez v0, :cond_6

    .line 76
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;

    invoke-direct {v0, v7}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;-><init>(I)V

    throw v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "O2OHOME_RPC"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mClazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->isNetWorkError(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;-><init>(I)V

    throw v0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;->desc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;->desc:Ljava/lang/String;

    .line 64
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-static {v6}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->getRpcExceptionMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_2
    new-instance v2, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;

    iget-object v3, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    if-nez v3, :cond_5

    :goto_1
    invoke-direct {v2, v6, v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    const/16 v3, 0x1b5b

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 62
    :cond_4
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->getRpcExceptionMsg(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;->resultCode:Ljava/lang/String;

    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "O2OHOME_Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v6}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->getRpcExceptionMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v2, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;

    invoke-direct {v2, v6, v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;->success:Z

    if-nez v0, :cond_7

    .line 79
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;->desc:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;->resultCode:Ljava/lang/String;

    invoke-direct {v0, v6, v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_7
    return-void

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method public getResponse()Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->mResponse:Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    return-object v0
.end method

.method protected abstract requestData(Ljava/lang/Object;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TService;)TT;"
        }
    .end annotation
.end method
