.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "alipay_hw_buildmodle"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->k(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 106
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 107
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const/4 v2, 0x2

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 111
    const/16 v2, 0x69

    if-eq v0, v2, :cond_0

    const/16 v2, 0x6a

    if-ne v0, v2, :cond_1

    .line 114
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->b()[Ljava/lang/String;

    move-result-object v2

    .line 115
    const/4 v3, 0x5

    aget-object v2, v2, v3

    .line 116
    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v4, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;

    invoke-direct {v4, p0, v2, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const/4 v2, 0x2

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 144
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/c;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 157
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 155
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->finish()V

    goto :goto_1

    .line 152
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->d(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
