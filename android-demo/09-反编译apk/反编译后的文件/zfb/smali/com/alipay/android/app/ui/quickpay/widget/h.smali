.class final Lcom/alipay/android/app/ui/quickpay/widget/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/h;->a:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->c(Landroid/view/View;)V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
