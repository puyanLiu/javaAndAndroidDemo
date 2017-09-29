.class public Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "GlobalSearchApp.java"


# static fields
.field private static a:J


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->a:J

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 75
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 77
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 78
    const-string/jumbo v3, "actionSrc"

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-class v3, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    const-string/jumbo v0, "actionSrc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->b:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    const-string/jumbo v0, "friendTab"

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->b:Ljava/lang/String;

    .line 34
    :cond_1
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 42
    const-string/jumbo v0, "GlobalSearchApp"

    const-string/jumbo v1, "GlobalSearchApp onRestart !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-eqz p1, :cond_1

    .line 44
    const-string/jumbo v0, "actionSrc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->b:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "friendTab"

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->b:Ljava/lang/String;

    .line 52
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 53
    const-string/jumbo v0, "GlobalSearchApp"

    const-string/jumbo v1, "onRestart laststarttime < 1000"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    return-void

    .line 49
    :cond_1
    const-string/jumbo v0, "friendTab"

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->b:Ljava/lang/String;

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 59
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->a:J

    .line 60
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->a()V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 65
    const-string/jumbo v0, "GlobalSearchApp"

    const-string/jumbo v1, "GlobalSearchApp onStart !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->a:J

    .line 67
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/app/GlobalSearchApp;->a()V

    .line 68
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
