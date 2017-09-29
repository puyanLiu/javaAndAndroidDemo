.class final Lcom/alipay/android/app/ui/quickpay/widget/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;ZZ)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/v;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/v;->a:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/ui/quickpay/widget/v;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/v;->a:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/v;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/v;->b:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->increment(Z)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/v;->c:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/v;->b:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->decrement(Z)V

    goto :goto_0
.end method
