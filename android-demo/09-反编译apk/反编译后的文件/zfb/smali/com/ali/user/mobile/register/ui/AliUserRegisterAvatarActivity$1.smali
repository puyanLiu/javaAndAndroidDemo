.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 966
    if-nez p1, :cond_0

    .line 988
    :goto_0
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    .line 970
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Ljava/lang/String;)I

    move-result v0

    .line 971
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 972
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "change nick pre nick length bigger than limit"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$7(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Landroid/text/Editable;)V

    goto :goto_0

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 977
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "\u5b57\u7b26\u6570\u8d85\uff0c\u622a\u6389"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 979
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 981
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5904\u7406\u4e4b\u540e\uff0c\u5185\u5bb9\u4e3a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$7(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 983
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 962
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 958
    return-void
.end method
