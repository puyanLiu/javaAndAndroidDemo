.class public Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;
.super Ljava/lang/Object;
.source "CountRpcData.java"


# static fields
.field static final INTERVAL_SEC_DEF:J = 0x708L


# instance fields
.field private pollTimeMillis:J

.field private rpcData:Lcom/alipay/mobilelbs/rpc/step/CountStepResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;->pollTimeMillis:J

    .line 12
    return-void
.end method


# virtual methods
.method public getRpcData()Lcom/alipay/mobilelbs/rpc/step/CountStepResponse;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;->rpcData:Lcom/alipay/mobilelbs/rpc/step/CountStepResponse;

    return-object v0
.end method

.method public isNeedRefresh()Z
    .locals 6

    .prologue
    const-wide/16 v0, 0x708

    .line 38
    .line 39
    const-string/jumbo v2, "O2OHOME_RPCPOLL_INTERVAL"

    invoke-static {v2}, Lcom/alipay/android/phone/o2o/healthcommon/util/ConfigServiceUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    .line 47
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 52
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;->pollTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_2
    return v0

    .line 43
    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-wide v2, v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public setPollTimeMillis()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;->pollTimeMillis:J

    .line 30
    return-void
.end method

.method public setRpcData(Lcom/alipay/mobilelbs/rpc/step/CountStepResponse;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/healthcommon/model/CountRpcData;->rpcData:Lcom/alipay/mobilelbs/rpc/step/CountStepResponse;

    .line 22
    return-void
.end method
