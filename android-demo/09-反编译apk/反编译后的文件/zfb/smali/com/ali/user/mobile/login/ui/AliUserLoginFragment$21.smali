.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

.field private final synthetic b:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->a:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->b:Ljava/lang/String;

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 906
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->a:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    iget-boolean v0, v0, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->success:Z

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->bind_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->bind_success_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->bindIKnow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 909
    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21$1;

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->b:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;Ljava/lang/String;)V

    move-object v6, v5

    .line 907
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;->a:Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
