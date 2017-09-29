.class final Lcom/alipay/mobile/socialsdk/contact/view/r;
.super Ljava/lang/Object;
.source "VarifyNameMgrForContacts.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/r;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/r;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/r;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/r;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->i:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/r;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/r;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/r;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
