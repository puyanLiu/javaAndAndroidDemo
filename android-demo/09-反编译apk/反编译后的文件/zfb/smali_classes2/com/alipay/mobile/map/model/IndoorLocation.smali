.class public Lcom/alipay/mobile/map/model/IndoorLocation;
.super Ljava/lang/Object;
.source "IndoorLocation.java"


# instance fields
.field private accuracy:F

.field private angle:F

.field private floor:D

.field private lat:D

.field private lng:D

.field private reliability:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    .line 23
    iput-wide p3, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    .line 24
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    .line 28
    iput-wide p3, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    .line 29
    iput-wide p5, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    .line 30
    return-void
.end method

.method public constructor <init>(DDDFFF)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    .line 35
    iput-wide p3, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    .line 36
    iput-wide p5, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    .line 37
    iput p7, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->angle:F

    .line 38
    iput p8, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->accuracy:F

    .line 39
    iput p9, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->reliability:F

    .line 40
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->accuracy:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->angle:F

    return v0
.end method

.method public getFloor()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    return-wide v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    return-wide v0
.end method

.method public getReliability()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->reliability:F

    return v0
.end method

.method public setAccuracy(F)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->accuracy:F

    .line 72
    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->angle:F

    .line 88
    return-void
.end method

.method public setFloor(D)V
    .locals 0

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    .line 64
    return-void
.end method

.method public setLat(D)V
    .locals 0

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    .line 48
    return-void
.end method

.method public setLng(D)V
    .locals 0

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    .line 56
    return-void
.end method

.method public setReliability(F)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->reliability:F

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[lng:"

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-wide v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string/jumbo v1, ",lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, ",floor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->floor:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string/jumbo v1, ",angle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->angle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string/jumbo v1, ",accuracy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, ",reliability:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/map/model/IndoorLocation;->reliability:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
