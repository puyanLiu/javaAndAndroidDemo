.class public Lcom/taobao/wswitch/model/ConfigToken;
.super Ljava/lang/Object;
.source "ConfigToken.java"


# instance fields
.field private cacheTime:J

.field private lastUpdateTime:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigToken;->token:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lcom/taobao/wswitch/model/ConfigToken;->cacheTime:J

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/wswitch/model/ConfigToken;->lastUpdateTime:J

    .line 37
    return-void
.end method


# virtual methods
.method public getCacheTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/taobao/wswitch/model/ConfigToken;->cacheTime:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/taobao/wswitch/model/ConfigToken;->lastUpdateTime:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/wswitch/model/ConfigToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheTime(J)V
    .locals 0

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/taobao/wswitch/model/ConfigToken;->cacheTime:J

    .line 59
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/taobao/wswitch/model/ConfigToken;->lastUpdateTime:J

    .line 67
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/taobao/wswitch/model/ConfigToken;->token:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ConfigToken [token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/wswitch/model/ConfigToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/wswitch/model/ConfigToken;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/wswitch/model/ConfigToken;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
