.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

.field final synthetic val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->access$001(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    .line 97
    :cond_0
    return-void
.end method
