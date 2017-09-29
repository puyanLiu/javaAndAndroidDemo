.class Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$1;
.super Ljava/lang/Object;
.source "BaseExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$1;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$1;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->access$0(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;)Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;->doRequest()V

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$1;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->onSuccess(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;

    iget-object v2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$1;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;)V

    .line 42
    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->getErrorCode()I

    move-result v2

    iput v2, v1, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->code:I

    .line 43
    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->getBizCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->bizCode:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/MyRpcInvokeException;->getErrorStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->Str:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$1;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->onFailed(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V

    goto :goto_0
.end method
