.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;
.super Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
.source "ExternalDownloadManagerImpl.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    sput-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->a:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
    .locals 4

    .prologue
    .line 34
    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ExternalDownloadManagerImpl"

    const-string/jumbo v2, "\u4e0b\u8f7d\u5730\u5740\u4e3a\u7a7a\uff01"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    const/16 v1, 0x270f

    .line 41
    sget v2, Lcom/alipay/mobile/openplatform/R$string;->v:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-interface {p2, p1, v1, v0}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ExternalDownloadManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "downloadRequest.getDownloadUrl()\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ; downloadRequest.isAutoInstall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 47
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isAutoInstall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-eqz p2, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->registerCallback(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->isAutoInstall()Z

    move-result v0

    if-nez v0, :cond_6

    .line 58
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ExternalDownloadManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "downloadRequestList.size()=>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_4
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->b:Ljava/util/Timer;

    if-nez v0, :cond_5

    .line 64
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->b:Ljava/util/Timer;

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->b:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/download/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/download/b;-><init>(Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;)V

    .line 80
    const-wide/16 v2, 0x1f4

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 85
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string/jumbo v2, "command"

    const-string/jumbo v3, "add"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v2, "isUsedInAppCenter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/Intent;

    .line 110
    const-class v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    .line 109
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string/jumbo v2, "command"

    .line 112
    const-string/jumbo v3, "cancel"

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v2, "downloadUrl"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    :cond_0
    return-void
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 134
    invoke-static {p1}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->isDownloadTaskExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;->b:Ljava/util/Timer;

    .line 130
    :cond_0
    return-void
.end method
