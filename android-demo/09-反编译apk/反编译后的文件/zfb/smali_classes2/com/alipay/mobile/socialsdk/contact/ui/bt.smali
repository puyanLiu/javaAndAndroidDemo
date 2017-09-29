.class final Lcom/alipay/mobile/socialsdk/contact/ui/bt;
.super Ljava/lang/Object;
.source "SignaturePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bt;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bt;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bt;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bt;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bt;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity;->setSignature(Ljava/lang/String;)V

    .line 52
    return-void
.end method
