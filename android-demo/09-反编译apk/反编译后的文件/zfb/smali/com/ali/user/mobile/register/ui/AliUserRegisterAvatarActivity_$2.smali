.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

.field final synthetic val$preVerifyRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;->val$preVerifyRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;->val$preVerifyRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V

    .line 113
    :cond_0
    return-void
.end method
