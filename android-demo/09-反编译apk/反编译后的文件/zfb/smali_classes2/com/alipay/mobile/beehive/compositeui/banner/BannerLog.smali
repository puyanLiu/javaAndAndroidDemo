.class public Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;
.super Ljava/lang/Object;
.source "BannerLog.java"


# static fields
.field private static mSwitch:Z

.field private static mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mSwitch:Z

    .line 17
    const-string/jumbo v0, "Bannerview"

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mTag:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 49
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->e(Ljava/lang/String;)V

    .line 50
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static isSwitch()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mSwitch:Z

    return v0
.end method

.method public static printStackTraceAndMore(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mSwitch:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
