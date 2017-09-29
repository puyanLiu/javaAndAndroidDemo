.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

.field final synthetic val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

.field final synthetic val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    iput-object p3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;->val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;->val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->access$201(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    .line 123
    :cond_0
    return-void
.end method
