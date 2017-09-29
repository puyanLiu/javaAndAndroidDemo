.class final Lcom/alipay/mobile/socialsdk/contact/ui/f;
.super Ljava/lang/Object;
.source "AddFriendDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/f;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/f;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/f;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    .line 167
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/f;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 169
    return-void
.end method
