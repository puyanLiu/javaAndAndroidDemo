.class public Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper$1;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/app/Activity;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:Landroid/app/Dialog;

.field private m:Z

.field private n:Z

.field private o:Lcom/alipay/android/app/IAlixPay;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Landroid/content/ServiceConnection;

.field private s:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->h:Landroid/content/BroadcastReceiver;

    .line 99
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->m:Z

    .line 103
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    .line 926
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/ag;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/ag;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->p:Ljava/lang/Runnable;

    .line 1018
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/am;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/am;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->q:Landroid/content/BroadcastReceiver;

    .line 1047
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/x;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/x;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    .line 1065
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/y;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/y;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->s:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 110
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b:Z

    .line 111
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->c:Ljava/lang/String;

    .line 112
    iput-boolean p3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->d:Z

    .line 113
    iput-boolean p4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->e:Z

    .line 114
    iput-boolean p5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->f:Z

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->l:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 77
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    const-string/jumbo v3, "com.alipay.android.app.MspService"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-boolean v6, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    :try_start_0
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    if-nez v2, :cond_1

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    :goto_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v2

    :try_start_5
    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    :goto_4
    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    goto :goto_1

    :cond_2
    :try_start_7
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->s:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->s:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :goto_5
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    goto :goto_4

    :catch_2
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    goto :goto_5

    :catch_3
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_9
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_6
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->n:Z

    throw v0

    :catch_4
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->o:Lcom/alipay/android/app/IAlixPay;

    goto :goto_6

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Z)Z
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->m:Z

    return p1
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 890
    invoke-static {}, Lcom/alipay/android/app/pay/ResultStatus;->c()Lcom/alipay/android/app/pay/ResultStatus;

    move-result-object v0

    .line 891
    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/pay/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V
    .locals 5

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/temp.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->show()V

    invoke-static {}, Lcom/alipay/android/app/down/FileDownloadService;->a()Lcom/alipay/android/app/down/FileDownloadService;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->k:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/window/af;

    invoke-direct {v4, p0, v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/af;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/alipay/android/app/down/FileDownloadService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->p:Ljava/lang/Runnable;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alipay/android/app/util/BaseHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/aj;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/aj;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->q:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->l:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;Lcom/alipay/android/app/ui/quickpay/window/IFormShower;Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)Z
    .locals 11

    .prologue
    .line 120
    new-instance v2, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v2}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 121
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b()I

    move-result v3

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 122
    const/16 v3, 0xb

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 123
    const/4 v9, 0x0

    .line 124
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 125
    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    .line 126
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->j:Landroid/os/Handler;

    .line 127
    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v5

    .line 128
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper$1;->a:[I

    iget-object v4, v5, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 812
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h()V

    :cond_0
    move v2, v9

    .line 816
    :goto_0
    return v2

    .line 130
    :pswitch_0
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->d:Z

    if-nez v2, :cond_0

    .line 131
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->d()Ljava/util/List;

    move-result-object v2

    .line 135
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 136
    instance-of v4, v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v4, :cond_1

    .line 137
    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    .line 138
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->v()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/widget/EditText;)V

    goto :goto_1

    .line 141
    :cond_2
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->f:Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->m()Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_3

    .line 146
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c()V

    .line 147
    const/4 v2, 0x1

    goto :goto_0

    .line 150
    :cond_3
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b:Z

    if-eqz v2, :cond_4

    .line 151
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 153
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->e:Z

    move-object/from16 v0, p6

    invoke-static {v2, v3, p3, v4, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IFormShower;ZLcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    move v2, v9

    goto :goto_0

    .line 156
    :cond_4
    const/4 v2, 0x1

    .line 157
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->i()V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Z)V

    .line 165
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    .line 166
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->i()V

    .line 167
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a()Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->j()V

    move v2, v9

    goto/16 :goto_0

    .line 174
    :pswitch_2
    if-eqz p3, :cond_5

    .line 175
    invoke-interface {p3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->c()V

    .line 177
    :cond_5
    if-eqz p5, :cond_6

    .line 178
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Z)V

    .line 179
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v2

    const-string/jumbo v3, "6001"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_6

    .line 182
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    .line 185
    :cond_6
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    move v2, v9

    .line 186
    goto/16 :goto_0

    .line 188
    :pswitch_3
    const-string/jumbo v3, ""

    .line 189
    const-string/jumbo v4, ""

    .line 190
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    .line 192
    :try_start_0
    const-string/jumbo v5, "code"

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    const-string/jumbo v5, "result"

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 197
    :goto_2
    if-eqz p5, :cond_0

    .line 198
    invoke-static {v3, v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v4

    goto :goto_2

    .line 202
    :pswitch_4
    if-eqz p3, :cond_0

    .line 203
    const-string/jumbo v2, "message"

    invoke-virtual {p2, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-interface {p3, v2}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a_(Ljava/lang/String;)V

    move v2, v9

    .line 205
    goto/16 :goto_0

    .line 208
    :pswitch_5
    if-eqz p3, :cond_7

    .line 209
    invoke-interface {p3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->c()V

    .line 211
    :cond_7
    const/4 v2, 0x1

    .line 212
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->g()V

    goto/16 :goto_0

    .line 216
    :pswitch_6
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V

    .line 217
    const/16 v3, 0xb

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 218
    const/16 v3, 0x3ea

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 219
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    move v2, v9

    .line 220
    goto/16 :goto_0

    .line 223
    :pswitch_7
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    move-result v3

    .line 224
    if-eqz v3, :cond_8

    .line 225
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    move-result v3

    .line 227
    :cond_8
    if-eqz v3, :cond_38

    .line 228
    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;)V

    .line 229
    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    if-eqz v2, :cond_9

    move-object/from16 v2, p6

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->v()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 230
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v2, p6

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    .line 232
    :cond_9
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    .line 239
    :pswitch_8
    const/16 v3, 0xa

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 240
    const/16 v3, 0x3ec

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 241
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->u()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    move v2, v9

    .line 243
    goto/16 :goto_0

    .line 245
    :pswitch_9
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->b(Ljava/lang/String;)V

    move v2, v9

    .line 246
    goto/16 :goto_0

    .line 249
    :pswitch_a
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->e:Z

    if-nez v2, :cond_a

    .line 250
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/window/w;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/w;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 264
    :cond_a
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    move v2, v9

    .line 265
    goto/16 :goto_0

    .line 268
    :pswitch_b
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    move v2, v9

    .line 269
    goto/16 :goto_0

    .line 271
    :pswitch_c
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->t()Z

    move-result v2

    goto/16 :goto_0

    .line 275
    :pswitch_d
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_c

    array-length v3, v2

    if-lez v3, :cond_c

    .line 278
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 279
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    if-nez v2, :cond_b

    .line 280
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->g()J

    move-result-wide v6

    move-object/from16 v5, p6

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;-><init>(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;J)V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    .line 283
    :cond_b
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a()Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V

    .line 285
    :cond_c
    const/4 v2, 0x1

    .line 286
    goto/16 :goto_0

    .line 289
    :pswitch_e
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V

    move v2, v9

    .line 290
    goto/16 :goto_0

    .line 292
    :pswitch_f
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->d(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 293
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->LocalDismiss:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    .line 295
    const/4 v2, 0x1

    .line 296
    goto/16 :goto_0

    .line 298
    :pswitch_10
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->h:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_d

    .line 299
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ab;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/ab;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->h:Landroid/content/BroadcastReceiver;

    .line 309
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 310
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.alipay.security.namecertified"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 313
    :cond_d
    const-string/jumbo v2, "alipays://platformapi/startApp?appId=20000038"

    .line 314
    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;)V

    .line 316
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 317
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 319
    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-interface {p3, v3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Landroid/content/Intent;)V

    .line 322
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->LocalDismiss:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    .line 324
    const/4 v2, 0x1

    .line 325
    goto/16 :goto_0

    .line 328
    :pswitch_11
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 330
    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 331
    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;)V

    move v2, v9

    .line 332
    goto/16 :goto_0

    .line 337
    :pswitch_12
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 338
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 339
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v3, v2}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_0

    .line 344
    :pswitch_13
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 345
    if-eqz v3, :cond_0

    array-length v2, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    array-length v2, v3

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 346
    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 347
    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 348
    const/4 v2, 0x0

    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_f

    .line 349
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_e

    .line 350
    div-int/lit8 v6, v2, 0x2

    aget-object v7, v3, v2

    aput-object v7, v4, v6

    .line 348
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 352
    :cond_e
    div-int/lit8 v6, v2, 0x2

    aget-object v7, v3, v2

    aput-object v7, v5, v6

    goto :goto_4

    .line 355
    :cond_f
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2, v5, v4}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    move v2, v9

    .line 359
    goto/16 :goto_0

    .line 363
    :pswitch_14
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 364
    if-eqz v6, :cond_0

    array-length v2, v6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 365
    const/4 v2, 0x0

    aget-object v2, v6, v2

    .line 366
    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 367
    if-eqz v5, :cond_12

    .line 368
    array-length v2, v5

    new-array v4, v2, [Ljava/lang/String;

    .line 369
    array-length v2, v5

    new-array v3, v2, [Ljava/lang/String;

    .line 370
    const/4 v2, 0x0

    :goto_5
    array-length v7, v5

    if-ge v2, v7, :cond_11

    .line 371
    aget-object v7, v5, v2

    .line 372
    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 373
    if-eqz v7, :cond_10

    array-length v8, v7

    const/4 v10, 0x2

    if-ne v8, v10, :cond_10

    .line 374
    const/4 v8, 0x0

    aget-object v8, v7, v8

    aput-object v8, v4, v2

    .line 375
    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v3, v2

    .line 370
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 378
    :cond_11
    instance-of v2, p1, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;

    if-eqz v2, :cond_12

    .line 379
    check-cast p1, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;

    iget-object v2, p1, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 380
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    const/4 v7, 0x2

    aget-object v6, v6, v7

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v8}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;Ljava/lang/String;)V

    :cond_12
    move v2, v9

    .line 384
    goto/16 :goto_0

    .line 388
    :pswitch_15
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 390
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 394
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v2

    .line 395
    if-eqz v2, :cond_18

    .line 396
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(I)V

    .line 398
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->u()Landroid/view/View;

    move-result-object v3

    .line 399
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->B()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 401
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 402
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 403
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 404
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_14

    .line 405
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 406
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_13

    .line 407
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 411
    :cond_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 413
    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v7, :cond_18

    .line 415
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 417
    const/4 v8, 0x1

    if-ne v5, v8, :cond_16

    .line 418
    const-string/jumbo v8, "mini_block_single_item"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 413
    :cond_15
    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    .line 420
    :cond_16
    const/4 v8, 0x1

    if-le v5, v8, :cond_15

    .line 421
    if-nez v3, :cond_17

    .line 422
    const-string/jumbo v8, "mini_block_item_top_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    .line 425
    :cond_17
    const-string/jumbo v8, "mini_block_item_normal_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    .line 435
    :cond_18
    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    if-eqz v2, :cond_0

    .line 436
    check-cast p6, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e()Ljava/util/List;

    move-result-object v5

    .line 440
    if-eqz v5, :cond_0

    .line 441
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 442
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v6, :cond_1a

    .line 443
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 444
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(I)V

    .line 442
    :cond_19
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    :cond_1a
    move v2, v9

    .line 448
    goto/16 :goto_0

    .line 453
    :pswitch_16
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 454
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 455
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 459
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v2

    .line 460
    if-eqz v2, :cond_20

    .line 461
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(I)V

    .line 463
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->u()Landroid/view/View;

    move-result-object v3

    .line 464
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_20

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->B()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 466
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 467
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 468
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 469
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v5, :cond_1c

    .line 470
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 471
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1b

    .line 472
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 476
    :cond_1c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 478
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v7, :cond_20

    .line 480
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 482
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1e

    .line 483
    const-string/jumbo v8, "mini_block_single_item"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 478
    :cond_1d
    :goto_c
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b

    .line 485
    :cond_1e
    const/4 v8, 0x1

    if-le v5, v8, :cond_1d

    .line 486
    if-nez v3, :cond_1f

    .line 487
    const-string/jumbo v8, "mini_block_item_top_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    .line 490
    :cond_1f
    const-string/jumbo v8, "mini_block_item_normal_bg"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    .line 499
    :cond_20
    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    if-eqz v2, :cond_0

    .line 500
    check-cast p6, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e()Ljava/util/List;

    move-result-object v5

    .line 504
    if-eqz v5, :cond_0

    .line 505
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 506
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v6, :cond_22

    .line 507
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 508
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(I)V

    .line 506
    :cond_21
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    :cond_22
    move v2, v9

    .line 511
    goto/16 :goto_0

    .line 515
    :pswitch_17
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 516
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 517
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 518
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 519
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v2

    .line 520
    instance-of v3, v2, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    if-eqz v3, :cond_23

    .line 521
    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UILabel;->M()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    move v2, v9

    .line 523
    goto/16 :goto_0

    .line 527
    :pswitch_18
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 528
    if-eqz v4, :cond_0

    array-length v2, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    if-eqz v2, :cond_0

    .line 529
    check-cast p6, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-virtual/range {p6 .. p6}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e()Ljava/util/List;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_26

    .line 532
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 533
    instance-of v2, v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    if-eqz v2, :cond_24

    move-object v2, v3

    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->l()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 534
    const/4 v2, 0x0

    aget-object v2, v4, v2

    const-string/jumbo v6, "true"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 535
    check-cast v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Z)V

    goto :goto_e

    .line 537
    :cond_25
    check-cast v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Z)V

    goto :goto_e

    :cond_26
    move v2, v9

    .line 542
    goto/16 :goto_0

    .line 546
    :pswitch_19
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 547
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 548
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 549
    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 550
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v3

    .line 551
    iput-object v2, v3, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    move v2, v9

    .line 552
    goto/16 :goto_0

    .line 556
    :pswitch_1a
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 557
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 558
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 559
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 560
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v3

    .line 561
    instance-of v2, v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v2, :cond_27

    move-object v2, v3

    .line 562
    check-cast v2, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->v()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 563
    check-cast v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->v()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    move v2, v9

    .line 565
    goto/16 :goto_0

    .line 569
    :pswitch_1b
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 570
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 571
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DIAL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 573
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v2, v9

    .line 575
    goto/16 :goto_0

    .line 579
    :pswitch_1c
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;)V

    move v2, v9

    .line 580
    goto/16 :goto_0

    .line 583
    :pswitch_1d
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;)V

    move v2, v9

    .line 584
    goto/16 :goto_0

    .line 590
    :pswitch_1e
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/16 v3, 0x8

    move-object/from16 v0, p6

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    .line 591
    const/4 v2, 0x0

    .line 592
    instance-of v3, p1, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    if-eqz v3, :cond_28

    .line 593
    check-cast p1, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    .line 594
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->M()Ljava/lang/String;

    move-result-object v2

    .line 595
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    .line 596
    invoke-virtual {p1, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V

    .line 598
    :cond_28
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    move v2, v9

    .line 605
    goto/16 :goto_0

    .line 608
    :pswitch_1f
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 609
    if-eqz v4, :cond_0

    array-length v2, v4

    if-lez v2, :cond_0

    .line 610
    const/4 v2, 0x0

    aget-object v2, v4, v2

    const-string/jumbo v3, "wear"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 613
    :try_start_1
    const-string/jumbo v3, "type"

    const/4 v6, 0x3

    invoke-virtual {v2, v3, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 615
    const-string/jumbo v3, "data"

    const/4 v6, 0x2

    aget-object v6, v4, v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string/jumbo v3, "version"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 617
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v3, p4, v6, v7}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(J)V

    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    if-eqz v2, :cond_29

    move-object/from16 v0, p6

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->v()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p6

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->w()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V

    :goto_f
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/16 v3, 0x8

    move-object/from16 v0, p6

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/z;

    move-object v3, p0

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/alipay/android/app/ui/quickpay/window/z;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;[Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;J)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "bracelet_authenticate_result"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    move v2, v9

    .line 622
    goto/16 :goto_0

    .line 619
    :cond_29
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    .line 620
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move v2, v9

    .line 623
    goto/16 :goto_0

    .line 628
    :pswitch_20
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 629
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const-string/jumbo v4, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 633
    if-eqz v3, :cond_2a

    array-length v4, v3

    const/4 v6, 0x3

    if-le v4, v6, :cond_2a

    .line 634
    const-string/jumbo v4, "protocol"

    const-string/jumbo v6, "old"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const-string/jumbo v4, "type"

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string/jumbo v4, "action"

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string/jumbo v4, "reqMsg"

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string/jumbo v4, "submitMsgName"

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string/jumbo v3, "bizId"

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    :cond_2a
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v9

    .line 642
    goto/16 :goto_0

    .line 645
    :pswitch_21
    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 646
    if-eqz v2, :cond_2c

    array-length v3, v2

    if-lez v3, :cond_2c

    .line 647
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string/jumbo v4, "wear"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 649
    :try_start_2
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 650
    const-string/jumbo v4, "type"

    const/16 v5, 0x1f7

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 651
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 653
    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 687
    :cond_2b
    :goto_10
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v5, 0x2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 694
    :cond_2c
    :goto_11
    if-eqz p3, :cond_2d

    .line 695
    invoke-interface {p3}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->c()V

    .line 697
    :cond_2d
    if-eqz p5, :cond_0

    .line 698
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v2

    .line 699
    if-eqz v2, :cond_2e

    .line 700
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    :cond_2e
    move v2, v9

    .line 702
    goto/16 :goto_0

    .line 654
    :cond_2f
    const/4 v4, 0x1

    :try_start_3
    aget-object v4, v2, v4

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 655
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 656
    const-string/jumbo v5, "type"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 658
    const-string/jumbo v5, "data"

    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 661
    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto :goto_10

    :catch_2
    move-exception v2

    goto :goto_11

    .line 662
    :cond_30
    const/4 v4, 0x1

    aget-object v4, v2, v4

    sget-object v5, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->query:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    invoke-virtual {v5}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 663
    const/4 v4, 0x2

    aget-object v4, v2, v4

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 664
    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 665
    :cond_31
    const/4 v4, 0x2

    aget-object v2, v2, v4

    const-string/jumbo v4, "false"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 666
    const-string/jumbo v2, "result"

    const/16 v4, 0xc8

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 668
    :cond_32
    const-string/jumbo v2, "result"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 670
    :cond_33
    const/4 v4, 0x1

    aget-object v4, v2, v4

    sget-object v5, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->close:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    invoke-virtual {v5}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 671
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 672
    const-string/jumbo v4, "result"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 673
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 674
    const-string/jumbo v5, "type"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 677
    :try_start_4
    const-string/jumbo v5, "data"

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const-string/jumbo v6, "utf-8"

    invoke-static {v2, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 681
    :goto_12
    :try_start_5
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 684
    :cond_34
    const-string/jumbo v2, "result"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V
    :try_end_5
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_10

    .line 706
    :pswitch_22
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->w:Lcom/alipay/android/app/json/JSONArray;

    if-eqz v2, :cond_0

    .line 707
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->w:Lcom/alipay/android/app/json/JSONArray;

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    .line 708
    new-array v4, v3, [Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 709
    new-array v5, v3, [Ljava/lang/String;

    .line 710
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_36

    .line 711
    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->w:Lcom/alipay/android/app/json/JSONArray;

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v6

    .line 712
    if-eqz v6, :cond_35

    .line 713
    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 714
    const-string/jumbo v7, "text"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 715
    aput-object v7, v5, v2

    .line 716
    const-string/jumbo v7, "action"

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v6

    .line 717
    aput-object v6, v4, v2

    .line 710
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 721
    :cond_36
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->i:Landroid/app/Activity;

    move-object/from16 v0, p6

    invoke-static {v2, v4, v5, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;[Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;[Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    move v2, v9

    .line 722
    goto/16 :goto_0

    .line 726
    :pswitch_23
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ac;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v5, v0}, Lcom/alipay/android/app/ui/quickpay/window/ac;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/ac;->start()V

    move v2, v9

    .line 767
    goto/16 :goto_0

    .line 770
    :pswitch_24
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ad;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v5, v0}, Lcom/alipay/android/app/ui/quickpay/window/ad;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/ad;->start()V

    move v2, v9

    .line 794
    goto/16 :goto_0

    .line 797
    :pswitch_25
    invoke-static {p4}, Lcom/alipay/android/app/sys/DeviceInfo;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 798
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ae;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/ae;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/ae;->start()V

    move v2, v9

    goto/16 :goto_0

    .line 804
    :cond_37
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h()V

    move v2, v9

    .line 806
    goto/16 :goto_0

    .line 809
    :pswitch_26
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    move v2, v9

    .line 810
    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto/16 :goto_12

    :cond_38
    move v2, v3

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method
