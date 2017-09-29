.class Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;
.super Ljava/lang/Object;
.source "BaseExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

.field private final synthetic val$info:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    iput-object p2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;->val$info:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->access$1(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;)Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->access$1(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;)Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;->this$0:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    iget-object v2, p0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$2;->val$info:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;->onSuccess(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V

    .line 65
    :cond_0
    return-void
.end method
