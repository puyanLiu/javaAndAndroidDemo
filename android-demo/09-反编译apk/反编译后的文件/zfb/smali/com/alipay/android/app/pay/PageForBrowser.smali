.class public Lcom/alipay/android/app/pay/PageForBrowser;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/android/app/IAlixPay;

.field private c:Ljava/lang/Integer;

.field private d:Z

.field private e:Landroid/content/ServiceConnection;

.field private f:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->b:Lcom/alipay/android/app/IAlixPay;

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->c:Ljava/lang/Integer;

    .line 36
    iput-boolean v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->d:Z

    .line 64
    new-instance v0, Lcom/alipay/android/app/pay/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/h;-><init>(Lcom/alipay/android/app/pay/PageForBrowser;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->e:Landroid/content/ServiceConnection;

    .line 90
    new-instance v0, Lcom/alipay/android/app/pay/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/i;-><init>(Lcom/alipay/android/app/pay/PageForBrowser;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->f:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/PageForBrowser;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->b:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->f:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/alipay/android/app/pay/PageForBrowser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IAlixPay;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->b:Lcom/alipay/android/app/IAlixPay;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 166
    const-string/jumbo v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string/jumbo v3, "={"

    .line 169
    if-eqz v2, :cond_1

    :try_start_0
    array-length v1, v2

    if-lez v1, :cond_1

    .line 170
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "temp"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v2, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 172
    aget-object v0, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 174
    aget-object v5, v2, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 175
    const-string/jumbo v6, "callBackUrl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    aget-object v4, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "temp"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  s2= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    return-object v0

    .line 170
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/android/app/pay/PageForBrowser;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/pay/PageForBrowser;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->d:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/PageForBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/PageForBrowser;->finish()V

    .line 62
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 49
    const-string/jumbo v1, "alipaymsp://securitypay/?"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "info= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.android.app.IAlixPay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/alipay/android/app/pay/PageForBrowser;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->a:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    iget-boolean v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->d:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->d:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/app/pay/j;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/pay/j;-><init>(Lcom/alipay/android/app/pay/PageForBrowser;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/PageForBrowser;->finish()V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/PageForBrowser;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    return-void

    .line 195
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
