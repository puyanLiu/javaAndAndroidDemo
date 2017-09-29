.class final Lcom/alipay/android/app/hardwarepay/fingerprint/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 269
    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/j;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/i;)V

    .line 302
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "Action_FlyBirdWindowActivity_OnResume"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 312
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(ILjava/lang/String;I)Ljava/lang/String;

    .line 317
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 320
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 321
    return-void
.end method
