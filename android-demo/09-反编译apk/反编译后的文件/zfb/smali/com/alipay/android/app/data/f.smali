.class final Lcom/alipay/android/app/data/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/script/IPhoneScriptable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/data/ValidatedFrameData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/alipay/android/app/util/SmsReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/data/f;->b:Z

    .line 41
    new-instance v0, Lcom/alipay/android/app/util/SmsReader;

    invoke-direct {v0}, Lcom/alipay/android/app/util/SmsReader;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/f;->c:Lcom/alipay/android/app/util/SmsReader;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/data/f;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;JJ)V
    .locals 9

    .prologue
    .line 32
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-object v3, p0, Lcom/alipay/android/app/data/f;->c:Lcom/alipay/android/app/util/SmsReader;

    invoke-virtual {v3}, Lcom/alipay/android/app/util/SmsReader;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p6

    cmp-long v3, v3, p8

    if-gez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x9c4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/alipay/android/app/data/f;->c:Lcom/alipay/android/app/util/SmsReader;

    iget-object v1, p0, Lcom/alipay/android/app/data/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v1}, Lcom/alipay/android/app/data/ValidatedFrameData;->g()J

    move-result-wide v5

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/util/SmsReader;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    move-object v2, v1

    move-wide v0, v7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/f;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/data/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/data/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/ValidatedFrameData;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p4, v2}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/app/data/f;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/data/f;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/data/ValidatedFrameData;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/f;->a:Ljava/lang/ref/WeakReference;

    .line 46
    return-void
.end method

.method public final call(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/data/f;->c:Lcom/alipay/android/app/util/SmsReader;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/android/app/data/f;->c:Lcom/alipay/android/app/util/SmsReader;

    invoke-virtual {v0}, Lcom/alipay/android/app/util/SmsReader;->a()V

    .line 53
    :cond_0
    return-void
.end method

.method public final varargs readsms(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/alipay/android/app/data/f;->b:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/f;->c:Lcom/alipay/android/app/util/SmsReader;

    invoke-virtual {v0}, Lcom/alipay/android/app/util/SmsReader;->b()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/data/f;->b:Z

    .line 135
    new-instance v0, Lcom/alipay/android/app/data/g;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    move-object v5, p1

    move v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/data/g;-><init>(Lcom/alipay/android/app/data/f;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final sendMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    .line 65
    const-string/jumbo v0, "demo_global_settings"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    const-string/jumbo v2, "is_auto_send_fake_sms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    :try_start_0
    sget-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {v1, p1, p2}, Lcom/alipay/android/app/util/BizDebugUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string/jumbo v2, "time_start"

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    const-string/jumbo v3, "com.alipay.receiver.sms.sent"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v3, "com.alipay.receiver.sms.successed"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v3, Lcom/alipay/android/app/SmsSendReceiver;

    invoke-direct {v3}, Lcom/alipay/android/app/SmsSendReceiver;-><init>()V

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 81
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 82
    const-string/jumbo v4, "com.alipay.receiver.sms.sent"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 84
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 86
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 87
    const-string/jumbo v5, "com.alipay.receiver.sms.successed"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 93
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setPreferredSmsSubscription"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 96
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/app/sys/GlobalContext;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_1
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 98
    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
