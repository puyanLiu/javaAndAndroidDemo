.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 219
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 234
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 244
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 238
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 239
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 209
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 249
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 253
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 254
    return-void
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 214
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 224
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 228
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 229
    return-void
.end method
