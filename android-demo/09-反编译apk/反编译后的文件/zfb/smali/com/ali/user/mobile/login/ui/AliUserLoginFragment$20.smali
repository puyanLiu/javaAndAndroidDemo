.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->showProgress(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    const-string/jumbo v1, "quickBind"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/service/UserLoginService;->taobaoAccountBinding(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    move-result-object v0

    .line 892
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->afterBindAlipayViaRpc(Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 893
    :catch_0
    move-exception v0

    .line 894
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 895
    throw v0
.end method
