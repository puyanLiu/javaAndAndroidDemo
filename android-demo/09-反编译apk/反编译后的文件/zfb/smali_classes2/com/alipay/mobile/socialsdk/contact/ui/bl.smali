.class final Lcom/alipay/mobile/socialsdk/contact/ui/bl;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bl;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bl;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method
