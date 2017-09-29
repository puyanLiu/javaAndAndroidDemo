.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;
.super Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 274
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hideLoginHistory()V

    .line 284
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-boolean v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-boolean v2, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 286
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object v3, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    .line 288
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 289
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method
