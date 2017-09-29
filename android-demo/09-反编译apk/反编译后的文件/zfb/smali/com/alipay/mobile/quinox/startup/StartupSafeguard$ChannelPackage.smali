.class public Lcom/alipay/mobile/quinox/startup/StartupSafeguard$ChannelPackage;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"


# static fields
.field public static final FLAG:Z


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const-string/jumbo v0, "ChannelPackage"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$ChannelPackage;->TAG:Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method public waitForUserConform(Landroid/app/Application;Landroid/content/res/Resources;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 298
    const-string/jumbo v0, "ChannelPackage"

    const-string/jumbo v4, "LauncherApplication\uff1asynchronized (getClass())"

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 303
    const-string/jumbo v0, "ChannelPackage"

    const-string/jumbo v4, "Start Get userTipValue "

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 305
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v6, "channel.config"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 307
    :try_start_3
    invoke-virtual {v5, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 308
    const-string/jumbo v3, "ChannelPackage"

    const-string/jumbo v6, "Get userTipValue success"

    invoke-static {v3, v6}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 311
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 317
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 325
    :cond_0
    :goto_1
    :try_start_6
    const-string/jumbo v0, "isShowUserTip"

    invoke-virtual {v5, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string/jumbo v3, "ChannelPackage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "userTipValue "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz v0, :cond_6

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 328
    :goto_2
    if-eqz v0, :cond_1

    .line 329
    const-string/jumbo v3, "ChannelPackage"

    const-string/jumbo v4, "LauncherApplication\uff1aLauncherApplication.this.wait() start"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 333
    :cond_1
    const-string/jumbo v3, "usertip"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 334
    const-string/jumbo v4, "ChannelPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "showTip "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "showTip"

    const/4 v7, 0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    if-eqz v0, :cond_9

    const-string/jumbo v0, "android.permission.GET_TASKS"

    invoke-static {p1, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_7

    :cond_2
    :goto_3
    if-eqz v1, :cond_9

    const-string/jumbo v0, "showTip"

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    const-string/jumbo v0, "ChannelPackage"

    const-string/jumbo v1, "LauncherActivityStarted Start,Wait User Click"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    monitor-enter p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 338
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    .line 337
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 346
    :goto_4
    const-string/jumbo v0, "ChannelPackage"

    const-string/jumbo v1, "LauncherApplication\uff1aLauncherApplication.this.wait() end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void

    :catch_0
    move-exception v0

    move-object v0, v3

    .line 311
    :goto_5
    if-eqz v3, :cond_3

    .line 313
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 317
    :cond_3
    :goto_6
    if-eqz v0, :cond_0

    .line 319
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 320
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 310
    :catchall_0
    move-exception v0

    move-object v4, v3

    .line 311
    :goto_7
    if-eqz v4, :cond_4

    .line 313
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 317
    :cond_4
    :goto_8
    if-eqz v3, :cond_5

    .line 319
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 323
    :cond_5
    :goto_9
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 343
    :catch_2
    move-exception v0

    .line 344
    const-string/jumbo v1, "ChannelPackage"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    move v0, v1

    .line 327
    goto/16 :goto_2

    .line 335
    :cond_7
    :try_start_d
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "ChannelPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "top activity name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "com.alipay.mobile.quinox.LauncherActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_a
    move v1, v0

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto :goto_a

    .line 337
    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0

    .line 341
    :cond_9
    const-string/jumbo v0, "ChannelPackage"

    const-string/jumbo v1, "BroadcastReciever or Other Activity Start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_4

    :catch_3
    move-exception v3

    goto/16 :goto_6

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v3

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_1

    .line 310
    :catchall_2
    move-exception v0

    goto/16 :goto_7

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_7

    :catch_8
    move-exception v0

    move-object v0, v3

    move-object v3, v4

    goto/16 :goto_5

    :catch_9
    move-exception v3

    move-object v3, v4

    goto/16 :goto_5
.end method
