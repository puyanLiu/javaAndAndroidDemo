.class public Lcom/ali/user/mobile/log/PerformanceLogAgent;
.super Ljava/lang/Object;
.source "PerformanceLogAgent.java"


# static fields
.field private static a:J

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ali/user/mobile/log/PerformanceLogAgent;->a:J

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ali/user/mobile/log/PerformanceLogAgent;->b:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoginEnd()V
    .locals 4

    .prologue
    .line 26
    sget-boolean v0, Lcom/ali/user/mobile/log/PerformanceLogAgent;->b:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/ali/user/mobile/log/PerformanceLogAgent;->a:J

    sub-long/2addr v0, v2

    .line 28
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 29
    const-string/jumbo v3, "MainLinkRecord"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 30
    const-string/jumbo v3, "LINK_LOGIN"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v3, "PHASE_LINK_LOGIN_RPC"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ali/user/mobile/log/PerformanceLogAgent;->b:Z

    .line 35
    :cond_0
    return-void
.end method

.method public static isMonitorPerformanceEnable()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/ali/user/mobile/log/PerformanceLogAgent;->b:Z

    return v0
.end method

.method public static logStart()V
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ali/user/mobile/log/PerformanceLogAgent;->a:J

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ali/user/mobile/log/PerformanceLogAgent;->b:Z

    .line 15
    return-void
.end method

.method public static setMonitorPerformanceEnable(Z)V
    .locals 0

    .prologue
    .line 18
    sput-boolean p0, Lcom/ali/user/mobile/log/PerformanceLogAgent;->b:Z

    .line 19
    return-void
.end method
