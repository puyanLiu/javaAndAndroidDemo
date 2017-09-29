.class final Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x64

    .line 274
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$200(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->incrementYear()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->incrementMonth()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$300(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$000(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->decrementYear()V

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->decrementMonth()V

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker$a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    :cond_5
    return-void
.end method
