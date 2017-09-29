.class public Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;
.super Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;


# instance fields
.field private data:Ljava/lang/String;

.field private dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

.field private fpRetryTimes:I

.field private fpSensorStatus:Z

.field private isValidateOk:Z

.field private iscancel:Z

.field private mHandleSuccessFlag:Z

.field private object:Ljava/lang/Object;

.field private scanType:I

.field private supportHardwarePay:I

.field private tipsMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;-><init>()V

    .line 52
    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    .line 53
    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    .line 54
    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->mHandleSuccessFlag:Z

    .line 393
    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    .line 394
    iput v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    .line 395
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    .line 396
    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    .line 397
    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toSubmit(Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    return v0
.end method

.method static synthetic access$1208(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    return v0
.end method

.method static synthetic access$1300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    return v0
.end method

.method static synthetic access$502(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    return p1
.end method

.method static synthetic access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->mHandleSuccessFlag:Z

    return v0
.end method

.method static synthetic access$902(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->mHandleSuccessFlag:Z

    return p1
.end method

.method public static addInitJson(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    move-result-object v1

    .line 657
    if-eqz v1, :cond_0

    .line 658
    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->b()[Ljava/lang/String;

    move-result-object v0

    .line 660
    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    .line 674
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    const-string/jumbo v1, "authInfoType"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string/jumbo v1, "vendor"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string/jumbo v1, "phoneModel"

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string/jumbo v1, "protocolVersion"

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v1, "protocolType"

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string/jumbo v1, "mfacDownloadUrl"

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string/jumbo v1, "deviceId"

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    .line 671
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 612
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 614
    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 615
    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string/jumbo v0, "result"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 619
    :cond_0
    :try_start_1
    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 380
    const-string/jumbo v1, "type"

    const/16 v2, 0x259

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 381
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 382
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    .line 383
    return-void
.end method

.method private toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Ljava/lang/Object;ILjava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b()V

    .line 389
    return-void
.end method

.method private toRegister(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;ILcom/alipay/android/app/json/JSONObject;Landroid/content/Context;ILcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V
    .locals 18

    .prologue
    .line 409
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->mHandleSuccessFlag:Z

    .line 410
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    .line 411
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    .line 412
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    .line 413
    const-string/jumbo v1, "scanType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const-string/jumbo v1, "scanType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    .line 415
    const-string/jumbo v1, "tipsMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    .line 418
    :cond_0
    :try_start_0
    const-string/jumbo v1, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    .line 419
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p5

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    .line 425
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    .line 426
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 427
    new-instance v5, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v5}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 428
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    .line 430
    new-instance v8, Lcom/alipay/android/app/hardwarepay/fingerprint/l;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/l;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)V

    .line 465
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 469
    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/m;

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/alipay/android/app/hardwarepay/fingerprint/m;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Landroid/content/BroadcastReceiver;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    move-object/from16 v2, p4

    .line 554
    check-cast v2, Landroid/app/Activity;

    .line 555
    new-instance v9, Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p3

    move-object v14, v5

    move-object v15, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    invoke-direct/range {v9 .. v17}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v2, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 593
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "msp.fp.register.broadcaster"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-static/range {p4 .. p4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 596
    return-void

    .line 421
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private toSubmit(Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    .line 601
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "flybird_fp_validating"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    .line 603
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 604
    iput p2, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 605
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    aput-object p4, v1, v3

    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 606
    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 607
    const/16 v1, 0x7d3

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 608
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 609
    return-void
.end method


# virtual methods
.method public createInitReplyJson(III)Ljava/lang/String;
    .locals 3

    .prologue
    .line 638
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 640
    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 641
    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 644
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 645
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->addInitJson(Lcom/alipay/android/app/json/JSONObject;)V

    .line 646
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 647
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs execute(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    move-result-object v2

    .line 108
    if-nez v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 113
    :cond_0
    array-length v4, p3

    move v3, v0

    move-object v1, v7

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, p3, v3

    .line 114
    if-eqz v0, :cond_3

    .line 115
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 117
    check-cast v0, Ljava/lang/String;

    .line 113
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 118
    :cond_1
    instance-of v5, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v5, :cond_2

    .line 119
    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-object v7, v0

    move-object v0, v1

    goto :goto_2

    .line 121
    :cond_2
    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 125
    :cond_4
    new-instance v8, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v8, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "type"

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 127
    const-string/jumbo v0, "authType"

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 128
    const-string/jumbo v0, "wearType"

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 129
    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    .line 131
    :sswitch_0
    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/hardwarepay/fingerprint/a;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Landroid/content/Context;III)V

    .line 148
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :sswitch_1
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, v8

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/hardwarepay/fingerprint/b;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Landroid/content/Context;ILcom/alipay/android/app/json/JSONObject;I)V

    .line 167
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 171
    :sswitch_2
    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->c()I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, p2, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :sswitch_3
    const-string/jumbo v0, "version"

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "data"

    invoke-virtual {v8, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v9}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-direct {p0, v9, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, p2, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6307\u7eb9\u652f\u4ed8\uff1atype:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v8, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-virtual {v8, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 189
    const-string/jumbo v0, "version"

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v0, "data"

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    move v3, v9

    move v6, p2

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 194
    :sswitch_5
    new-instance v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/alipay/android/app/hardwarepay/fingerprint/c;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;I)V

    .line 341
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 342
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 345
    :sswitch_6
    const/4 v3, 0x2

    move-object v1, p0

    move-object v4, v8

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toRegister(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;ILcom/alipay/android/app/json/JSONObject;Landroid/content/Context;ILcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V

    goto/16 :goto_0

    .line 349
    :sswitch_7
    const/16 v0, 0x64

    invoke-direct {p0, v2, v0, p2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    goto/16 :goto_0

    .line 352
    :sswitch_8
    const-string/jumbo v0, "false"

    invoke-static {p2, v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :sswitch_9
    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string/jumbo v0, "data"

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move v6, p2

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V

    .line 357
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 358
    const-string/jumbo v1, "type"

    const/16 v3, 0x25d

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 359
    const-string/jumbo v1, "result"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 360
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, p2, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :sswitch_a
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 364
    const-string/jumbo v1, "type"

    sget v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->d:I

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 365
    const-string/jumbo v1, "result"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 366
    sget-object v1, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, p2, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0xd -> :sswitch_2
        0xe -> :sswitch_1
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x1fa -> :sswitch_a
        0x259 -> :sswitch_5
        0x25a -> :sswitch_6
        0x25b -> :sswitch_7
        0x25c -> :sswitch_9
        0x25d -> :sswitch_8
    .end sparse-switch
.end method

.method public varargs init(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    aget-object v0, p3, v1

    instance-of v0, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    .line 67
    aget-object v0, p3, v1

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    .line 69
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    move-result-object v2

    .line 70
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 76
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    .line 77
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6307\u7eb9\u652f\u4ed8\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 79
    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 84
    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "com.eg.android.AlipayGphoneRC"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 89
    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->c()I

    move-result v2

    .line 90
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    .line 91
    if-lez v2, :cond_4

    .line 92
    const/4 v1, 0x1

    .line 95
    :cond_4
    const-string/jumbo v2, "supportapp"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 679
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    .line 681
    :cond_0
    return-void
.end method
