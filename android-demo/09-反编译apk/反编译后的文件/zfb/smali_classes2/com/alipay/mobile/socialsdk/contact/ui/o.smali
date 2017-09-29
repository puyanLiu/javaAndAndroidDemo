.class final Lcom/alipay/mobile/socialsdk/contact/ui/o;
.super Ljava/lang/Object;
.source "FriendVerifyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/o;)Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    const/4 v1, 0x2

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/o;->a:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/p;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/p;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/o;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    return-void
.end method
