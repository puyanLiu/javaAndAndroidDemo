.class public Lcom/taobao/wswitch/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCurVersionMiss(JJJ)Z
    .locals 2

    .prologue
    .line 27
    sub-long v0, p2, p0

    .line 28
    cmp-long v0, v0, p4

    if-lez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurVersionMiss(Lcom/taobao/wswitch/model/ValidConfig;)Z
    .locals 8

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getLastUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getSyncPeriod()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getSyncPeriod()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getSyncPeriod()Ljava/lang/Long;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/taobao/wswitch/util/VersionUtil;->isCurVersionMiss(JJJ)Z

    move-result v0

    return v0

    :cond_0
    sget-object v4, Lcom/taobao/wswitch/constant/ConfigConstant;->LOCAL_CONFIG_CACHE_TIME:Ljava/lang/Long;

    goto :goto_0
.end method

.method public static isLocaCacheMissT(JJ)Z
    .locals 4

    .prologue
    .line 35
    sub-long v0, p2, p0

    .line 36
    sget-object v2, Lcom/taobao/wswitch/constant/ConfigConstant;->LOCAL_CONFIG_CACHE_TIME:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalTokenMissT(JJJ)Z
    .locals 2

    .prologue
    .line 43
    sub-long v0, p2, p0

    .line 44
    cmp-long v0, v0, p4

    if-lez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
