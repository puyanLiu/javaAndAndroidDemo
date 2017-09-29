.class public Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;
.super Lcom/alipay/android/app/AbsActivity;


# instance fields
.field private b:Lcom/alipay/android/app/base/pay/IActivityAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    if-eqz p1, :cond_1

    .line 37
    :try_start_0
    const-string/jumbo v0, "CallingPid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    :goto_0
    invoke-static {p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/app/Activity;)V

    .line 47
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-nez v1, :cond_0

    .line 48
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

    .line 50
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-eqz v1, :cond_4

    .line 51
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/alipay/android/app/base/pay/IActivityAdapter;->a(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 65
    :goto_2
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->finish()V

    .line 62
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v2, "\u521d\u59cb\u5316\u51fa\u9519"

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/LogAgent;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "cs"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 48
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/android/app/base/trade/Trade;->j()Lcom/alipay/android/app/base/pay/IActivityAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    goto :goto_1

    .line 53
    :cond_4
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "\u521d\u59cb\u5316\u51fa\u9519"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->b:Lcom/alipay/android/app/base/pay/IActivityAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/pay/IActivityAdapter;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/AbsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
