.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Landroid/view/View$OnFocusChangeListener;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->a:Landroid/view/View$OnFocusChangeListener;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 297
    if-nez p2, :cond_1

    .line 298
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->a:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 305
    :cond_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hideLoginHistory()V

    goto :goto_0
.end method
