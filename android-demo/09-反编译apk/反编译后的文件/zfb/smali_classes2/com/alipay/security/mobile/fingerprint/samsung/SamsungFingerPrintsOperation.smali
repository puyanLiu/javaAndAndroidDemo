.class public Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;
.super Lcom/alipay/security/mobile/auth/AuthenticatorOperation;
.source "SamsungFingerPrintsOperation.java"


# static fields
.field private static isInFidoProcess:Z

.field public static isInited:Z

.field private static mLastFidoProcessTime:J

.field private static origin:Ljava/lang/String;


# instance fields
.field public final aTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string/jumbo v0, "https://i.alipayobjects.com/"

    sput-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->origin:Ljava/lang/String;

    .line 34
    sput-boolean v2, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInited:Z

    .line 93
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->mLastFidoProcessTime:J

    .line 94
    sput-boolean v2, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInFidoProcess:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alipay/security/mobile/auth/AuthenticatorOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V

    .line 31
    const-class v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->aTAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static checkServerReply(Ljava/lang/String;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->FAILURE:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-direct {v0, v1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;-><init>(Lcom/fido/android/framework/agent/api/ResultType;)V

    .line 125
    if-nez p0, :cond_0

    .line 131
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isServerMessageValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->setServerErrorMessage(Ljava/lang/String;)V

    .line 130
    :cond_1
    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->setResultStatus(Lcom/fido/android/framework/agent/api/ResultType;)V

    goto :goto_0
.end method

.method private fidoProcess(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "======enterPrint======"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Lcom/alipay/security/mobile/auth/message/OstpMessage;

    invoke-direct {v1}, Lcom/alipay/security/mobile/auth/message/OstpMessage;-><init>()V

    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/security/mobile/auth/message/OstpMessage;->createMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/api/OstpIn;

    move-result-object v2

    .line 101
    sget-boolean v1, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInited:Z

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return-object v0

    .line 105
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "======enterprocess======"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "message == null:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->Instance()Lcom/fido/android/framework/agent/Fido;

    move-result-object v1

    sget-object v3, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->origin:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/fido/android/framework/agent/Fido;->process(Lcom/fido/android/framework/agent/api/OstpIn;Ljava/lang/String;Ljava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;
    :try_end_0
    .catch Lcom/fido/android/framework/agent/Fido$ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/fido/android/framework/agent/Fido$RequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isServerMessageValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final sendOstpMessage(Ljava/lang/String;Z)Lcom/fido/android/framework/agent/Fido$Response;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->sendOstpMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;

    move-result-object v0

    return-object v0
.end method

.method protected final sendOstpMessage(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/alipay/security/mobile/util/CommonUtils;->isSamSungS6()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-boolean v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInFidoProcess:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->mLastFidoProcessTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 71
    :cond_0
    sget-boolean v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInFidoProcess:Z

    if-eqz v0, :cond_1

    .line 73
    :try_start_0
    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->Instance()Lcom/fido/android/framework/agent/Fido;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/Fido;->cancelProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->mLastFidoProcessTime:J

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInFidoProcess:Z

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->fidoProcess(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->isInFidoProcess:Z

    .line 88
    :goto_1
    return-object v0

    .line 84
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 87
    :cond_3
    const-class v1, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;

    monitor-enter v1

    .line 88
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/security/mobile/fingerprint/samsung/SamsungFingerPrintsOperation;->fidoProcess(Ljava/lang/String;ZLjava/lang/String;)Lcom/fido/android/framework/agent/Fido$Response;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
