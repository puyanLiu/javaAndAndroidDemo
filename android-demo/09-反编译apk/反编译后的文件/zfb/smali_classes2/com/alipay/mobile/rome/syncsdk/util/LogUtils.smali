.class public Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 36
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 66
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 46
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 56
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
