.class public Lcom/taobao/wswitch/api/model/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private configName:Ljava/lang/String;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdateTime:J

.field private refer:Ljava/lang/String;

.field private status:I

.field private version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    .line 34
    iput-object p3, p0, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lcom/taobao/wswitch/api/model/Config;->version:J

    .line 36
    iput p6, p0, Lcom/taobao/wswitch/api/model/Config;->status:I

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/wswitch/api/model/Config;->lastUpdateTime:J

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    check-cast p1, Lcom/taobao/wswitch/api/model/Config;

    .line 147
    iget-object v2, p0, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 148
    iget-object v2, p1, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 149
    goto :goto_0

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    iget-object v2, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    if-nez v2, :cond_6

    .line 153
    iget-object v2, p1, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    if-eqz v2, :cond_7

    move v0, v1

    .line 154
    goto :goto_0

    .line 155
    :cond_6
    iget-object v2, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    iget-object v3, p1, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 156
    goto :goto_0

    .line 157
    :cond_7
    iget-object v2, p0, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 158
    iget-object v2, p1, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_8
    iget-object v2, p0, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 161
    goto :goto_0

    .line 162
    :cond_9
    iget v2, p0, Lcom/taobao/wswitch/api/model/Config;->status:I

    iget v3, p1, Lcom/taobao/wswitch/api/model/Config;->status:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 163
    goto :goto_0

    .line 164
    :cond_a
    iget-wide v2, p0, Lcom/taobao/wswitch/api/model/Config;->version:J

    iget-wide v4, p1, Lcom/taobao/wswitch/api/model/Config;->version:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 165
    goto :goto_0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
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
    .line 66
    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/taobao/wswitch/api/model/Config;->lastUpdateTime:J

    return-wide v0
.end method

.method public getRefer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/taobao/wswitch/api/model/Config;->status:I

    return v0
.end method

.method public getVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/taobao/wswitch/api/model/Config;->version:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/taobao/wswitch/api/model/Config;->status:I

    add-int/2addr v0, v1

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/taobao/wswitch/api/model/Config;->version:J

    iget-wide v3, p0, Lcom/taobao/wswitch/api/model/Config;->version:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 135
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public setConfigName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/taobao/wswitch/api/model/Config;->lastUpdateTime:J

    .line 124
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/taobao/wswitch/api/model/Config;->status:I

    .line 110
    return-void
.end method

.method public setVersion(J)V
    .locals 0

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/taobao/wswitch/api/model/Config;->version:J

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Config [configName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/wswitch/api/model/Config;->configName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/api/model/Config;->data:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/api/model/Config;->refer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/wswitch/api/model/Config;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/wswitch/api/model/Config;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
