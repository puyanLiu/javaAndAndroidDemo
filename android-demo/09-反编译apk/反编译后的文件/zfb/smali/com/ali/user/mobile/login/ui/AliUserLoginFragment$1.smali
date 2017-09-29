.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;
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
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hideLoginHistory()V

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    .line 535
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    iget-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setLoginHistoryAccount(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 539
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    .line 541
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginHistorySelected(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 542
    return-void
.end method
