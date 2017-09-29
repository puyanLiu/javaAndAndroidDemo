.class public Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;
.super Ljava/lang/Object;
.source "BaseExecutor.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;

.field private final rpcModel:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->handler:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->rpcModel:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;)Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->rpcModel:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;)Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->listener:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;

    return-object v0
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->listener:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;

    .line 28
    return-void
.end method

.method protected getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$1;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;)V

    return-object v0
.end method

.method protected onFailed(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->handler:Landroid/os/Handler;

    .line 72
    new-instance v1, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$3;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method protected onSuccess(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->handler:Landroid/os/Handler;

    .line 59
    new-instance v1, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method public setListener(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->listener:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;

    .line 24
    return-void
.end method
