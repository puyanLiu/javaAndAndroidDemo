.class final Lcom/alipay/android/app/ui/quickpay/widget/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/x;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/x;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$200(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/x;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$202(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/x;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$300(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/x;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$302(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;Z)Z

    .line 198
    :cond_2
    return v2
.end method
