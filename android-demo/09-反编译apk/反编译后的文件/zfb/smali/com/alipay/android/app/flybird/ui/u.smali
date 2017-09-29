.class final Lcom/alipay/android/app/flybird/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/u;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/u;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 552
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 553
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/u;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/u;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->p()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/u;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/u;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    goto :goto_0
.end method
