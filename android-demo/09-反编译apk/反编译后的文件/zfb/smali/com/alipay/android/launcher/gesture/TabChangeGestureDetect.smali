.class public Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect;
.super Ljava/lang/Object;
.source "TabChangeGestureDetect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TabChangeGestureDetect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const-string/jumbo v0, ""

    .line 101
    :goto_0
    return-object v0

    .line 86
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 87
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 94
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 98
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static setGestureDetectListener(Landroid/view/View;Landroid/os/Handler;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabChangeGestureDetect"

    const-string/jumbo v3, "setGestureDetectListener"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 69
    :goto_0
    return v0

    .line 27
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/android/launcher/gesture/TrackReflector;->getInstance()Lcom/alipay/android/launcher/gesture/TrackReflector;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/android/launcher/gesture/TrackReflector;->getOnClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabChangeGestureDetect"

    const-string/jumbo v3, "can not get view clicklistener"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v1, "UC-SECURITY-150715-02"

    const-string/jumbo v2, "20000006"

    const-string/jumbo v3, "listenerfail"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TabChangeGestureDetect"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const-string/jumbo v2, "UC-SECURITY-150715-01"

    const-string/jumbo v3, "20000006"

    const-string/jumbo v4, "listenerexception"

    invoke-static {v1}, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect;->getExceptionMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    :try_start_1
    new-instance v2, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;

    invoke-direct {v2, p1, v1}, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;-><init>(Landroid/os/Handler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 75
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 80
    return-void
.end method
