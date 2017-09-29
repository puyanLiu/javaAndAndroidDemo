.class final Lcom/alipay/mobile/socialsdk/contact/ui/p;
.super Ljava/lang/Object;
.source "FriendVerifyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/o;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/p;->a:Lcom/alipay/mobile/socialsdk/contact/ui/o;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/p;->a:Lcom/alipay/mobile/socialsdk/contact/ui/o;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a(Lcom/alipay/mobile/socialsdk/contact/ui/o;)Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getSelectionEnd()I

    move-result v0

    .line 143
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/StringUtil;->getWordCount(Ljava/lang/String;)I

    move-result v1

    .line 144
    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    .line 145
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/p;->a:Lcom/alipay/mobile/socialsdk/contact/ui/o;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a(Lcom/alipay/mobile/socialsdk/contact/ui/o;)Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/p;->a:Lcom/alipay/mobile/socialsdk/contact/ui/o;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a(Lcom/alipay/mobile/socialsdk/contact/ui/o;)Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
