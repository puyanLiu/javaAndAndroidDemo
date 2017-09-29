.class Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;
.super Ljava/lang/Object;
.source "AliuserRegisterSetSixPasswordActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

.field final synthetic val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;->val$rsaPulibKey:Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->access$001(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    .line 87
    :cond_0
    return-void
.end method
