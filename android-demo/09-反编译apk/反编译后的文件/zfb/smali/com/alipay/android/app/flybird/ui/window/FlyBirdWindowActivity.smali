.class public Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;
.super Lcom/alipay/android/app/AbsActivity;


# instance fields
.field private b:Lcom/alipay/android/app/base/pay/IActivityAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->finish()V

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(I)V

    .line 119
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/AbsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/base/pay/IActivityAdapter;->a(IILandroid/content/Intent;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    const-string/jumbo v0, "_FWAAINIT"

    invoke-static {v0}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;)V

    .line 33
    if-eqz p1, :cond_1

    .line 36
    :try_start_0
    const-string/jumbo v0, "CallingPid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    :goto_0
    invoke-static {p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/app/Activity;)V

    .line 46
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-nez v1, :cond_0

    .line 47
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "\u521d\u59cb\u5316\u51fa\u9519"

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    .line 49
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-eqz v1, :cond_4

    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/alipay/android/app/base/pay/IActivityAdapter;->a(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 63
    :goto_2
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->finish()V

    .line 61
    const-string/jumbo v1, "cs"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 47
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/android/app/base/trade/Trade;->i()Lcom/alipay/android/app/base/pay/IActivityAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    goto :goto_1

    .line 52
    :cond_4
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "\u521d\u59cb\u5316\u51fa\u9519"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/base/pay/IActivityAdapter;->b()V

    .line 93
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/pay/IActivityAdapter;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/AbsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/base/pay/IActivityAdapter;->a()V

    .line 85
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onStop()V

    .line 98
    return-void
.end method
