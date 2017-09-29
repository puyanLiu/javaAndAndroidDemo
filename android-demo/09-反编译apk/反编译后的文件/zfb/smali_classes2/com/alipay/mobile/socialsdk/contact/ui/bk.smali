.class final Lcom/alipay/mobile/socialsdk/contact/ui/bk;
.super Ljava/lang/Object;
.source "SetRemarkNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v0, 0x20

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->c(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V

    .line 103
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bk;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method
