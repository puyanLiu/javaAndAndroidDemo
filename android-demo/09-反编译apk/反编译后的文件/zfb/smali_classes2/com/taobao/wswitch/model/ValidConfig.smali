.class public Lcom/taobao/wswitch/model/ValidConfig;
.super Ljava/lang/Object;
.source "ValidConfig.java"


# instance fields
.field private configName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private kcfgWithTimerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfigUnit;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdateTime:J

.field private refer:Ljava/lang/String;

.field private status:I

.field private syncPeriod:Ljava/lang/Long;

.field private version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfigUnit;",
            ">;",
            "Ljava/lang/String;",
            "JI)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->id:Ljava/lang/Long;

    .line 55
    iput-object p2, p0, Lcom/taobao/wswitch/model/ValidConfig;->configName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/taobao/wswitch/model/ValidConfig;->kcfgWithTimerMap:Ljava/util/Map;

    .line 57
    iput-object p4, p0, Lcom/taobao/wswitch/model/ValidConfig;->refer:Ljava/lang/String;

    .line 58
    iput-wide p5, p0, Lcom/taobao/wswitch/model/ValidConfig;->version:J

    .line 59
    iput p7, p0, Lcom/taobao/wswitch/model/ValidConfig;->status:I

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->lastUpdateTime:J

    .line 61
    return-void
.end method


# virtual methods
.method public getConfigName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->configName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getKcfgWithTimerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfigUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->kcfgWithTimerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->lastUpdateTime:J

    return-wide v0
.end method

.method public getRefer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->refer:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->status:I

    return v0
.end method

.method public getSyncPeriod()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->syncPeriod:Ljava/lang/Long;

    return-object v0
.end method

.method public getValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-static {p1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 177
    :goto_0
    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->kcfgWithTimerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfigUnit;

    .line 174
    if-nez v0, :cond_1

    move-object v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ValidConfigUnit;->selectValidValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->version:J

    return-wide v0
.end method

.method public selectAllValues()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->kcfgWithTimerMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->kcfgWithTimerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 201
    :goto_0
    return-object v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfig;->kcfgWithTimerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/wswitch/model/ValidConfigUnit;

    .line 188
    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfigUnit;->selectValidValue()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    invoke-static {v0}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 197
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 201
    goto :goto_0
.end method

.method public setConfigName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->configName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->id:Ljava/lang/Long;

    .line 82
    return-void
.end method

.method public setKcfgWithTimerMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfigUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->kcfgWithTimerMap:Ljava/util/Map;

    .line 110
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->lastUpdateTime:J

    .line 166
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->refer:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->status:I

    .line 152
    return-void
.end method

.method public setSyncPeriod(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->syncPeriod:Ljava/lang/Long;

    .line 41
    return-void
.end method

.method public setVersion(J)V
    .locals 0

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/taobao/wswitch/model/ValidConfig;->version:J

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ValidConfig [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfig;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", configName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfig;->configName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", kCfgWithTimerMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfig;->kcfgWithTimerMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfig;->refer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/wswitch/model/ValidConfig;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/wswitch/model/ValidConfig;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/wswitch/model/ValidConfig;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
