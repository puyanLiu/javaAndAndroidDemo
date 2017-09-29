.class public Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;
    }
.end annotation


# static fields
.field private static f:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:Z

.field private d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/android/app/util/SmsReader;

.field private g:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;

.field private h:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->b:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->c:Z

    .line 26
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->d:Ljava/util/Stack;

    .line 27
    new-instance v0, Lcom/alipay/android/app/util/SmsReader;

    invoke-direct {v0}, Lcom/alipay/android/app/util/SmsReader;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->e:Lcom/alipay/android/app/util/SmsReader;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->h:Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;-><init>(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;

    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->g:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->start()V

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 47
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->f:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->f:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->f:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;Lcom/alipay/android/app/util/SmsReader;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJJ)V
    .locals 11

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v9, v0

    move-object v0, v2

    move-wide v1, v9

    .line 139
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/app/util/SmsReader;->c()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p6

    cmp-long v3, v3, p8

    if-gez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->b()V

    .line 143
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 144
    const-wide/16 v3, 0x9c4

    sub-long v1, v3, v1

    .line 145
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 150
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->d()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    move-object/from16 v1, p5

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide/from16 v5, p10

    .line 155
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/util/SmsReader;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    move-wide v1, v7

    .line 160
    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;->readSuccess(Ljava/lang/String;)V

    .line 163
    :cond_4
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V
    .locals 12

    .prologue
    .line 20
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->b()Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;

    move-result-object v0

    const-string/jumbo v1, "rules"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "temp"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "tmp_group"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "read_time"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    mul-int/lit16 v1, v8, 0x3e8

    int-to-long v8, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " ReadSms runnable"

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, "  "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->b()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->e:Lcom/alipay/android/app/util/SmsReader;

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->a()J

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;Lcom/alipay/android/app/util/SmsReader;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJJ)V

    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->f:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->f:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->e:Lcom/alipay/android/app/util/SmsReader;

    invoke-virtual {v0}, Lcom/alipay/android/app/util/SmsReader;->a()V

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->d:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->e:Lcom/alipay/android/app/util/SmsReader;

    invoke-virtual {v0}, Lcom/alipay/android/app/util/SmsReader;->b()V

    .line 56
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 61
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
