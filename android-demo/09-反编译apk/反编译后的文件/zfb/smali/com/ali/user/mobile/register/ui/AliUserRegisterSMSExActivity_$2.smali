.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

.field final synthetic val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    .line 107
    :cond_0
    return-void
.end method
