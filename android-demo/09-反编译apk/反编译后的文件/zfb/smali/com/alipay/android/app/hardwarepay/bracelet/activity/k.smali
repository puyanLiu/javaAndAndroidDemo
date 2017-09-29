.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 800
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 801
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 803
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->startActivity(Landroid/content/Intent;)V

    .line 810
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/l;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/l;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;I)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 828
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/k;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 817
    :cond_0
    return-void
.end method
