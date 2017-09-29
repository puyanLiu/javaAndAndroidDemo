.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$10;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$10;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$10;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    if-nez v0, :cond_0

    .line 341
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "can not taobao sso"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "can taobao sso"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$10;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->openTaobaoSsoInfoActivity(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V

    goto :goto_0
.end method
