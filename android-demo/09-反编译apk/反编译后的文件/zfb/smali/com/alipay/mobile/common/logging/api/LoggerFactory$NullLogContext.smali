.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/LogContext;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;-><init>()V

    return-void
.end method


# virtual methods
.method public appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 0

    .prologue
    .line 361
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 362
    return-void
.end method

.method public flush(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 299
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 300
    return-void
.end method

.method public flush(Z)V
    .locals 0

    .prologue
    .line 304
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 305
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 444
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReleaseCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 392
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 393
    return-void
.end method

.method public putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 268
    return-void
.end method

.method public putLocalParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 284
    return-void
.end method

.method public removeContextParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 272
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 273
    return-void
.end method

.method public removeLocalParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 289
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 433
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 434
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 342
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 347
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 332
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 337
    return-void
.end method

.method public setReleaseCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 321
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 310
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 356
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 357
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 352
    return-void
.end method

.method public setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
    .locals 0

    .prologue
    .line 381
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 382
    return-void
.end method

.method public takedownExceptionHandler()V
    .locals 0

    .prologue
    .line 376
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 377
    return-void
.end method

.method public traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 438
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 439
    return-void
.end method

.method public updateLogStrategyCfg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 372
    return-void
.end method

.method public upload(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 367
    return-void
.end method
