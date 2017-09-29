.class final Lcom/alipay/android/app/pay/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/pay/PageForBrowser;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/PageForBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    iput-object p2, p0, Lcom/alipay/android/app/pay/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->b(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->c(Lcom/alipay/android/app/pay/PageForBrowser;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->c(Lcom/alipay/android/app/pay/PageForBrowser;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 136
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->b(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/j;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 140
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 141
    iget-object v1, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 144
    :try_start_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/PageForBrowser;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 153
    :cond_0
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->d(Lcom/alipay/android/app/pay/PageForBrowser;)Z

    .line 161
    :goto_1
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 155
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 157
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
