.class public Lcom/alipay/mobilelbs/rpc/step/StepCounter;
.super Ljava/lang/Object;
.source "StepCounter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public count:I

.field public deviceType:Ljava/lang/String;

.field public endTime:Ljava/util/Date;

.field public identifier:Ljava/lang/String;

.field public local:Z

.field public name:Ljava/lang/String;

.field public startTime:Ljava/util/Date;

.field public type:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->count:I

    return v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->local:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->count:I

    .line 152
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->deviceType:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->endTime:Ljava/util/Date;

    .line 144
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->identifier:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setLocal(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->local:Z

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->name:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->startTime:Ljava/util/Date;

    .line 136
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->type:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/mobilelbs/rpc/step/StepCounter;->uuid:Ljava/lang/String;

    .line 96
    return-void
.end method
