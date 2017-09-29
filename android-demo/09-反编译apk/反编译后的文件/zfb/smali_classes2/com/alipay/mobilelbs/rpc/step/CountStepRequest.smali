.class public Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;
.super Ljava/lang/Object;
.source "CountStepRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accuracy:D

.field public apdid:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public os:Ljava/lang/String;

.field public stepCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/rpc/step/StepCounter;",
            ">;"
        }
    .end annotation
.end field

.field public umid:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccuracy()D
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->accuracy:D

    return-wide v0
.end method

.method public getApdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->apdid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->longitude:D

    return-wide v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getStepCounters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/rpc/step/StepCounter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->stepCounters:Ljava/util/List;

    return-object v0
.end method

.method public getUmid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->umid:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccuracy(D)V
    .locals 0

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->accuracy:D

    .line 171
    return-void
.end method

.method public setApdid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->apdid:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->appKey:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->imei:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->imsi:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->latitude:D

    .line 155
    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->longitude:D

    .line 163
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->os:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setStepCounters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/rpc/step/StepCounter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->stepCounters:Ljava/util/List;

    .line 179
    return-void
.end method

.method public setUmid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->umid:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/CountStepRequest;->utdid:Ljava/lang/String;

    .line 131
    return-void
.end method
