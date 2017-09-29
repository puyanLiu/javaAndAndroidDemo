.class public Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private decayValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;",
            ">;"
        }
    .end annotation
.end field

.field private isUserLoggedIn:Z

.field private kcartStorage:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;

.field private moduleHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "KcartEngine"

    iput-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->moduleHistory:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->isUserLoggedIn:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->INSTANCE:Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    invoke-direct {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->INSTANCE:Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->INSTANCE:Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public DSM(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;
    .locals 6

    const-wide v4, 0x3fd78d4fdf3b645aL    # 0.368

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getVariableValue(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)D

    move-result-wide v0

    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getVariableValue(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)D

    move-result-wide v2

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getVariableValue(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getVariableValue(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)D

    move-result-wide v0

    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getVariableValue(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public decay(JJLcom/alipay/android/phone/secauthenticator/kcart/VariableValue;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;)D
    .locals 9

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p6}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->getType()Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    move-result-object v2

    invoke-virtual {p6}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->getDuration()Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    move-result-object v3

    invoke-virtual {p6}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;->getOperation()Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    if-ne v2, v5, :cond_3

    const-wide/16 v0, 0x1

    :cond_2
    :goto_1
    invoke-virtual {p5}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->getValue()D

    move-result-wide v5

    invoke-virtual {p5}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->getTime()J

    move-result-wide v7

    sub-long v7, p3, v7

    long-to-double v7, v7

    invoke-virtual {v3}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->getValue()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v7, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    div-double v2, v5, v2

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    if-ne v4, v5, :cond_4

    long-to-double v0, v0

    add-double/2addr v0, v2

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    if-ne v2, v5, :cond_2

    sub-long v0, p3, p1

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    if-ne v4, v5, :cond_5

    long-to-double v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_0
.end method

.method public declared-synchronized enter(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->isUserLoggedIn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "KcartEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[enter] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->moduleHistory:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized exit(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->isUserLoggedIn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "KcartEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[exit] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->moduleHistory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    move-object v12, v0

    if-nez v12, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "KcartEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]past is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->moduleHistory:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v4, v1, v3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v4, v1

    const-wide/16 v6, 0x708

    cmp-long v1, v1, v6

    if-gez v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    move-object v10, v0

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->decayValues:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;

    if-nez v1, :cond_3

    new-instance v6, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;

    const-wide/16 v1, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v6, v1, v2, v8, v9}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;-><init>(DJ)V

    :goto_2
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->decay(JJLcom/alipay/android/phone/secauthenticator/kcart/VariableValue;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;)D

    move-result-wide v8

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->decayValues:Ljava/util/Map;

    new-instance v2, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;

    invoke-direct {v2, v8, v9, v4, v5}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;-><init>(DJ)V

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->kcartStorage:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;

    move-object v7, v10

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;->updateRow(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;DJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    move-object v6, v1

    goto :goto_2
.end method

.method public extract()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;

    invoke-direct {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->VERSION:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_FUND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_FUND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT_FUND_1D_1MTH:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_HOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->D1D_CNT_HOME:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_ST_MYBILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_ST_MYBILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT2_BILL_1H_1MTH:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_ST_TRANSFERHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->D1H_ST_TRANSFERHOME:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_ST_YEBHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_ST_YEBHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT2_YEB_1D_1MTH:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_TALK:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_TALK:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT_TALK_1D_1MTH:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_FUNDCARD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_FUNDCARD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT_FUNDCARD_1D_1MTH:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_ASSET:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_ASSET:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT_CNT_ASSET_1D_1MTH:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_YEBHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->D1D_CNT_YEBHOME:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_FUND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_SECURITYSAFE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->DSM(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->DSM_FUNDSAFESECUR:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_YEBHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_FP:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->DSM(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->DSM_YEBFP:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_SETTING:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->D1D_CNT_SETTING:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_FUNDCARD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_TRANSFERHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->DSM(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->DSM_TRSFERCARD:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_MERCHARNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->D1D_CNT_MERCHANT:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_FRIEND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->D1D_CNT_FRIEND:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_SECURITYSAFE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_SECURITYSAFE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT_SECURITYSAFE_1D_1MTH:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_ACCTDTL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_ACCTDTL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT_ACCTDTL_1D_1MTH:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->D1D_CNT_FIN:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_MX_CARDFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->ORIGIN(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->D1D_MX_CARDFILL:Ljava/lang/Integer;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_RELATION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_RELATION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->RT(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->RT_CNT_RELATION_1D_1MTH:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/UploadedVariables;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDecayValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->decayValues:Ljava/util/Map;

    return-object v0
.end method

.method public getVariableValue(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;)D
    .locals 8

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->decayValues:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->decayValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;

    if-nez v0, :cond_1

    new-instance v5, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;

    const-wide/16 v3, 0x0

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;-><init>(DJ)V

    :goto_0
    invoke-virtual {v5}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->decay(JJLcom/alipay/android/phone/secauthenticator/kcart/VariableValue;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;)D

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_0
    move-wide v0, v1

    goto :goto_1

    :cond_1
    move-object v5, v0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo p1, "anonymous"

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->kcartStorage:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->kcartStorage:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;->loadDB()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->decayValues:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->isUserLoggedIn:Z

    return-void
.end method

.method public logout()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->kcartStorage:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->kcartStorage:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->isUserLoggedIn:Z

    return-void
.end method
