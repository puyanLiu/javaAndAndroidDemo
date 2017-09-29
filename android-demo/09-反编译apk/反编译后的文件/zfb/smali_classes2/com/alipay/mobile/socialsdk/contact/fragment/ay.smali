.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ay;
.super Ljava/lang/Object;
.source "InputContactFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ay;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ay;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ay;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
