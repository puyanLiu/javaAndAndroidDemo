.class final Lcom/alipay/android/app/ui/quickpay/widget/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/n;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/n;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->onFocusChange(Landroid/view/View;Z)V

    .line 134
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/n;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/n;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/n;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/n;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->removeIcon()V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/n;->a:Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;->access$200(Lcom/alipay/android/app/ui/quickpay/widget/MiniLabelInput;)V

    goto :goto_0
.end method
