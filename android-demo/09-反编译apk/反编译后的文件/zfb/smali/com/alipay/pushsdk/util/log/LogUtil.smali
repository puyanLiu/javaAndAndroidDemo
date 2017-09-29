.class public Lcom/alipay/pushsdk/util/log/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static CONFIGURE_ENABLE:Z

.field public static Cname:Ljava/lang/String;

.field public static LOG_LEVEL:I

.field public static LOG_LEVEL_DEBUG:I

.field public static LOG_LEVEL_DETAIL:I

.field public static LOG_LEVEL_ERROR:I

.field public static LOG_LEVEL_INFO:I

.field public static LOG_LEVEL_WARNING:I

.field public static LogPrefix:Ljava/lang/String;

.field public static LogTrace:Ljava/lang/String;

.field public static Mname:Ljava/lang/String;

.field public static isDeepTraceEnable:Z

.field public static isShowTrace:Z

.field public static line:Ljava/lang/String;

.field public static traceDeep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    .line 13
    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isShowTrace:Z

    .line 14
    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    .line 15
    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_ERROR:I

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_WARNING:I

    .line 17
    sput v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_INFO:I

    .line 18
    const/4 v0, 0x4

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_DEBUG:I

    .line 19
    const/4 v0, 0x5

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_DETAIL:I

    .line 20
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->Cname:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->Mname:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "pushlog "

    sput-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogTrace:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isDeepTraceEnable:Z

    .line 25
    sput v1, Lcom/alipay/pushsdk/util/log/LogUtil;->traceDeep:I

    .line 26
    const-string/jumbo v0, "==========================================="

    sput-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->line:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogOut(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isShowTrace:Z

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->a()V

    .line 187
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    .line 189
    :cond_1
    invoke-static {p2}, Lcom/alipay/pushsdk/util/log/LogUtil;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a()V
    .locals 9

    .prologue
    const/4 v2, 0x4

    .line 59
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 61
    array-length v1, v3

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isDeepTraceEnable:Z

    if-eqz v0, :cond_5

    .line 68
    sget v0, Lcom/alipay/pushsdk/util/log/LogUtil;->traceDeep:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    .line 71
    :goto_1
    if-le v0, v1, :cond_1

    move v0, v1

    .line 75
    :cond_1
    :goto_2
    if-lt v0, v2, :cond_2

    if-lt v0, v1, :cond_3

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogTrace:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_3
    aget-object v5, v3, v0

    .line 78
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 79
    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 80
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 81
    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 82
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    if-ne v0, v2, :cond_4

    .line 85
    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 88
    :cond_4
    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isShowTrace:Z

    if-eqz v0, :cond_2

    .line 138
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isDeepTraceEnable:Z

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LogTrace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/pushsdk/util/log/LogUtil;->line:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LogTrace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public static canLog(I)Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    return v0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isShowTrace:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->a()V

    .line 127
    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isShowTrace:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->a()V

    .line 115
    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/pushsdk/util/log/LogUtil;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->isShowTrace:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->a()V

    .line 103
    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/pushsdk/util/log/LogUtil;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCanLog()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    return v0
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printErr(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 195
    if-nez p0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LogPrefix:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static refreshDebugMode()V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-eqz v0, :cond_0

    .line 51
    sget v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_DEBUG:I

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    sget v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_ERROR:I

    sput v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    goto :goto_0
.end method
