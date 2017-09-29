.class final Lcom/alipay/android/app/ui/quickpay/widget/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/i;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 114
    if-eqz p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/i;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/i;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "setting_dialog_container"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/i;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/widget/EditText;ZLandroid/view/View;Landroid/view/View;)V

    .line 117
    :cond_0
    return-void
.end method
