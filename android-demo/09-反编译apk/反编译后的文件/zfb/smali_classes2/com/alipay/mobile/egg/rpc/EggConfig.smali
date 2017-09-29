.class public Lcom/alipay/mobile/egg/rpc/EggConfig;
.super Ljava/lang/Object;
.source "EggConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public eggId:Ljava/lang/String;

.field public eggName:Ljava/lang/String;

.field public expireTime:Ljava/util/Date;

.field public keyword:Ljava/lang/String;

.field public resourceId:Ljava/lang/String;

.field public startTime:Ljava/util/Date;

.field public tag:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEggId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->eggId:Ljava/lang/String;

    return-object v0
.end method

.method public getEggName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->eggName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->expireTime:Ljava/util/Date;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setEggId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->eggId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setEggName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->eggName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setExpireTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->expireTime:Ljava/util/Date;

    .line 93
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->keyword:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->resourceId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->startTime:Ljava/util/Date;

    .line 85
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->tag:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfig;->type:Ljava/lang/String;

    .line 117
    return-void
.end method
