.class public Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;
.super Ljava/lang/Object;
.source "LogUtilAmnet.java"


# static fields
.field public static final PRETAG:Ljava/lang/String; = "amnet_"

.field private static volatile traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTraceLogger()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 67
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->checkTraceLogger()V

    .line 30
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->checkTraceLogger()V

    .line 60
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->checkTraceLogger()V

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->checkTraceLogger()V

    .line 20
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->checkTraceLogger()V

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
