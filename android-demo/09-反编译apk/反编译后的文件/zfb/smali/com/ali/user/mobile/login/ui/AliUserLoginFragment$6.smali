.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "YWUC-JTTYZH-C23"

    const-string/jumbo v2, "dropdown"

    const-string/jumbo v3, "loginAccountSelectView"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->access$1(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->showLoginHistory()V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hideLoginHistory()V

    goto :goto_0
.end method
