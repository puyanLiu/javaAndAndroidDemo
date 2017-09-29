.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "AliUserRegisterSMSExActivity_.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

.field final synthetic val$mobile:Ljava/lang/String;

.field final synthetic val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iput-object p5, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;->val$mobile:Ljava/lang/String;

    iput-object p6, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;->val$type:Ljava/lang/String;

    iput-object p7, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;->val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;->val$mobile:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;->val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->access$401(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
