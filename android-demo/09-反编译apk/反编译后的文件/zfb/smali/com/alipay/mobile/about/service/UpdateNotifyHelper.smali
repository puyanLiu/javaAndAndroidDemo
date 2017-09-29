.class public Lcom/alipay/mobile/about/service/UpdateNotifyHelper;
.super Ljava/lang/Object;


# static fields
.field public static final MSG_CACEL_UPDATE:Ljava/lang/String; = "com.alipay.mobile.about.updateservice.cancelupdate"

.field private static b:I


# instance fields
.field private a:Ljava/lang/String;

.field private c:I

.field private d:I

.field private final e:Landroid/app/NotificationManager;

.field private final f:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final g:Landroid/app/Application;

.field private h:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x698

    sput v0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x698

    iput v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->d:I

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->e:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    sget v1, Lcom/alipay/mobile/a/f;->h:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->init()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UpdateNotifyHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancelNotification:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DOWNLOAD"

    iget v2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->e:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->c:I

    return v0
.end method


# virtual methods
.method public downloadFailedNotification()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    sget v2, Lcom/alipay/mobile/a/f;->f:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public downloadFinishNotification()V
    .locals 6

    const/16 v5, 0x64

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    sget v2, Lcom/alipay/mobile/a/f;->g:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "download_process_title_txt"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    sget v4, Lcom/alipay/mobile/a/f;->g:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "progress_text"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "100%"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "download_process_bar"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "DOWNLOAD"

    iget v2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->c:I

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-direct {p0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 7

    const/high16 v6, 0x10000000

    const/4 v5, 0x0

    sget v0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->b:I

    const v1, 0x186a0

    if-le v0, v1, :cond_0

    const/16 v0, 0x698

    sput v0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->b:I

    :cond_0
    sget v0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->b:I

    iput v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->c:I

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    sget v3, Lcom/alipay/mobile/a/f;->e:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "layout"

    const-string/jumbo v4, "download_progress"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "download_process_bar"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "download_process_title_txt"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.alipay.mobile.about.updateservice.cancelupdate"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->f:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "update_cancel_btn"

    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string/jumbo v2, "drawable"

    const-string/jumbo v3, "download_icon"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.about.updateservice.cancelupdate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->g:Landroid/app/Application;

    invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->h:Landroid/app/Notification;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->updateNotificationProcess(I)V

    return-void
.end method

.method public updateNotificationProcess(I)V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->d:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;-><init>(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
