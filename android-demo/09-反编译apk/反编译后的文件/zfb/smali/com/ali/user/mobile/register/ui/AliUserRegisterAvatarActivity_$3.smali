.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

.field final synthetic val$codeRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->val$codeRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->val$codeRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->access$201(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V

    .line 129
    :cond_0
    return-void
.end method
