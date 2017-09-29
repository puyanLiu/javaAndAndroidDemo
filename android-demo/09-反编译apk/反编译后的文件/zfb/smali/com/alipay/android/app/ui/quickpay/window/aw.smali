.class final Lcom/alipay/android/app/ui/quickpay/window/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->a:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iput p3, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->a:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 235
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/aw;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->g(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    .line 236
    const-string/jumbo v1, "tl"

    const-string/jumbo v2, "0010020"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
