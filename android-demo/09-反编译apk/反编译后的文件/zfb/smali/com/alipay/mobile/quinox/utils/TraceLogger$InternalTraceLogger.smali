.class Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;
.super Lcom/alipay/android/phone/thirdparty/common/log/Logger;
.source "TraceLogger.java"


# static fields
.field private static final TRACE_LEVEL_DEBUG:Ljava/lang/String; = "debug"

.field private static final TRACE_LEVEL_DEBUG_INT:I = 0x1

.field private static final TRACE_LEVEL_ERROR:Ljava/lang/String; = "error"

.field private static final TRACE_LEVEL_ERROR_INT:I = 0x4

.field private static final TRACE_LEVEL_INFO:Ljava/lang/String; = "info"

.field private static final TRACE_LEVEL_INFO_INT:I = 0x2

.field private static final TRACE_LEVEL_VERBOSE:Ljava/lang/String; = "verbose"

.field private static final TRACE_LEVEL_VERBOSE_INT:I = 0x0

.field private static final TRACE_LEVEL_WARN:Ljava/lang/String; = "warn"

.field private static final TRACE_LEVEL_WARN_INT:I = 0x3

.field private static methodD:Ljava/lang/reflect/Method;

.field private static methodE:Ljava/lang/reflect/Method;

.field private static methodI:Ljava/lang/reflect/Method;

.field private static methodV:Ljava/lang/reflect/Method;

.field private static methodW:Ljava/lang/reflect/Method;

.field private static traceLoggerObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    .line 29
    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodV:Ljava/lang/reflect/Method;

    .line 30
    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodD:Ljava/lang/reflect/Method;

    .line 31
    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodI:Ljava/lang/reflect/Method;

    .line 32
    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodW:Ljava/lang/reflect/Method;

    .line 33
    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodE:Ljava/lang/reflect/Method;

    .line 14
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;-><init>()V

    return-void
.end method

.method private static trace(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 37
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 38
    const-class v0, Lcom/alipay/mobile/quinox/utils/TraceLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "getTraceLogger"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 40
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    .line 44
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 91
    :goto_0
    return v5

    .line 46
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodV:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "verbose"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodV:Ljava/lang/reflect/Method;

    .line 50
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodV:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string/jumbo v1, "TraceLogger"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodD:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 55
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "debug"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodD:Ljava/lang/reflect/Method;

    .line 58
    :cond_2
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodD:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodI:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    .line 63
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodI:Ljava/lang/reflect/Method;

    .line 66
    :cond_3
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodI:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodW:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    .line 71
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "warn"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodW:Ljava/lang/reflect/Method;

    .line 74
    :cond_4
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodW:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 78
    :pswitch_4
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodE:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    .line 79
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "error"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodE:Ljava/lang/reflect/Method;

    .line 82
    :cond_5
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->methodE:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->traceLoggerObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->trace(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->trace(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->trace(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->trace(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger$InternalTraceLogger;->trace(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
