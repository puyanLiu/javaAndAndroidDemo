.class public abstract Lcom/alipay/android/phone/thirdparty/common/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final D:Ljava/lang/String; = "d"

.field public static final DEBUG:I = 0x3

.field public static final E:Ljava/lang/String; = "e"

.field public static final ERROR:I = 0x6

.field public static final I:Ljava/lang/String; = "i"

.field public static final INFO:I = 0x4

.field public static final LEVEL_TO_LVL:[Ljava/lang/String;

.field private static LOG_LEVEL:I = 0x0

.field public static final V:Ljava/lang/String; = "v"

.field public static final VERBOSE:I = 0x2

.field public static final W:Ljava/lang/String; = "w"

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 42
    sput v3, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const-string/jumbo v1, "i"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LEVEL_TO_LVL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 268
    const-string/jumbo v0, ""

    .line 285
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 274
    :goto_1
    if-eqz v0, :cond_2

    .line 275
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_1

    .line 276
    const-string/jumbo v0, ""

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 281
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 282
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 283
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 284
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 285
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    .line 54
    sput p0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "level should between [2 , 7]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 109
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 124
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 132
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 133
    invoke-static {p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 232
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 247
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 255
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 256
    invoke-static {p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 148
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 163
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 171
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 172
    invoke-static {p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 85
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 93
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 94
    invoke-static {p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract verbose(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 187
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 202
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 216
    sget v0, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 217
    invoke-static {p2}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)I
.end method
