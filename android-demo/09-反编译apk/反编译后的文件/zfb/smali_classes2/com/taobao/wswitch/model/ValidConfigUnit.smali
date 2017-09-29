.class public Lcom/taobao/wswitch/model/ValidConfigUnit;
.super Ljava/lang/Object;
.source "ValidConfigUnit.java"


# instance fields
.field private key:Ljava/lang/String;

.field private restoreValue:Ljava/lang/String;

.field private startTime:Ljava/lang/Long;

.field private stopTime:Ljava/lang/Long;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->key:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->value:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->restoreValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getStopTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->stopTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->value:Ljava/lang/String;

    return-object v0
.end method

.method public selectValidValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->startTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->stopTime:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->value:Ljava/lang/String;

    .line 126
    :goto_0
    return-object v0

    .line 122
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->startTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->stopTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->value:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->restoreValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->key:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setRestoreValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->restoreValue:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setStartTime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->startTime:Ljava/lang/Long;

    .line 95
    return-void
.end method

.method public setStopTime(J)V
    .locals 1

    .prologue
    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->stopTime:Ljava/lang/Long;

    .line 116
    return-void
.end method

.method public setStopTime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->stopTime:Ljava/lang/Long;

    .line 109
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->value:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ValidConfigUnit [key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->restoreValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->startTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stopTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wswitch/model/ValidConfigUnit;->stopTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
