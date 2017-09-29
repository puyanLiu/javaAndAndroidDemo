.class final Lcom/alipay/mobile/socialsdk/contact/ui/g;
.super Ljava/lang/Object;
.source "AddFriendDialogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/g;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/g;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/g;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getSelectionEnd()I

    move-result v0

    .line 185
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/StringUtil;->getWordCount(Ljava/lang/String;)I

    move-result v1

    .line 186
    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    .line 187
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/g;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/g;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method
