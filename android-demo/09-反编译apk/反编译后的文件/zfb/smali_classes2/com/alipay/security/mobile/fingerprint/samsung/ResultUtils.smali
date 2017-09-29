.class public Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;
.super Ljava/lang/Object;
.source "ResultUtils.java"


# static fields
.field public static final noMatch:Ljava/lang/String; = "no more authenticators are found for this operation"

.field public static notInstalled:Ljava/lang/String;

.field public static notRegister:Ljava/lang/String;

.field public static notSupport:Ljava/lang/String;


# instance fields
.field private errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "MFAC is not installed"

    sput-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->notInstalled:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "The Phone didn\'t support FingerPrint "

    sput-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->notSupport:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "The Phone didn\'t register any FingerPrint "

    sput-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->notRegister:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->errorMessage:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public static getItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x3e

    const/16 v3, 0x3c

    const/4 v5, -0x1

    .line 129
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 133
    if-ne v1, v5, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 136
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 140
    if-eq v2, v5, :cond_0

    .line 143
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getResult(Lcom/fido/android/framework/agent/api/ResultType;)I
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fido/android/framework/agent/api/ResultType;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    return v0
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected final resolveResult(Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;
    .locals 3

    .prologue
    .line 83
    const-class v1, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$1;->$SwitchMap$com$fido$android$framework$agent$api$ResultType:[I

    invoke-virtual {p1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fido/android/framework/agent/api/ResultType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->setErrorMessage(Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;)V

    .line 91
    sget-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->FAILED:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    monitor-exit v1

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    sget-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->SUCCESS:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->UPDATE:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final setErrorMessage(Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;)V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$1;->$SwitchMap$com$fido$android$framework$agent$api$ResultType:[I

    invoke-virtual {p1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fido/android/framework/agent/api/ResultType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-virtual {p1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->errorMessage:Ljava/lang/String;

    .line 118
    :goto_0
    return-void

    .line 106
    :pswitch_0
    const-string/jumbo v0, "no more authenticators are found for this operation"

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_1
    sget-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->notInstalled:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$TaskResult;->getResultStatus()Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/api/ResultType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
