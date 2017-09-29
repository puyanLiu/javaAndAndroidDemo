.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;
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
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "SeePwdBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onRdsControlClick(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 325
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->eye_1:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    .line 326
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "n"

    iput-object v1, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputType:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 330
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->eye_2:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    .line 331
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "y"

    iput-object v1, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputType:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    goto :goto_0
.end method
