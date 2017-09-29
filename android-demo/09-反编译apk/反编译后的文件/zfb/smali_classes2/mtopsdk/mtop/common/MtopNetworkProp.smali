.class public Lmtopsdk/mtop/common/MtopNetworkProp;
.super Ljava/lang/Object;
.source "MtopNetworkProp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x30f72c8a3cbdabccL


# instance fields
.field public accessToken:Ljava/lang/String;

.field public apiConfig:Lmtopsdk/mtop/config/ApiConfig;

.field protected autoRedirect:Z

.field public cacheKeyBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public connTimeout:I

.field private correctTimeStamp:Z

.field protected method:Lmtopsdk/mtop/domain/MethodEnum;

.field public openAppKey:Ljava/lang/String;

.field protected protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

.field public queryParameterMap:Ljava/util/Map;
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

.field protected requestHeaders:Ljava/util/Map;
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

.field protected retryTime:I

.field public socketTimeout:I

.field public ttid:Ljava/lang/String;

.field public useCache:Z

.field public useOpenApi:Z

.field public useWua:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 33
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTime:I

    .line 53
    iput-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->correctTimeStamp:Z

    .line 64
    iput-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    .line 69
    iput-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useWua:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    .line 105
    const/16 v0, 0x2710

    iput v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    .line 110
    const/16 v0, 0x4e20

    iput v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    return-void
.end method


# virtual methods
.method public getMethod()Lmtopsdk/mtop/domain/MethodEnum;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    return-object v0
.end method

.method public getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
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
    .line 172
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTime:I

    return v0
.end method

.method public isAutoRedirect()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    return v0
.end method

.method public isCorrectTimeStamp()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->correctTimeStamp:Z

    return v0
.end method

.method public setAutoRedirect(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    .line 155
    return-void
.end method

.method public setCorrectTimeStamp(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->correctTimeStamp:Z

    .line 184
    return-void
.end method

.method public setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V
    .locals 0

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_0
.end method

.method public setProtocol(Lmtopsdk/mtop/domain/ProtocolEnum;)V
    .locals 0

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    goto :goto_0
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
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
    .line 176
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    .line 177
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTime:I

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MtopNetworkProp [protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", autoRedirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->autoRedirect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", correctTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->correctTimeStamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ttid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", useCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", useWua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmtopsdk/mtop/common/MtopNetworkProp;->useWua:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
