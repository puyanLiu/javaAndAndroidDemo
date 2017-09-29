.class public Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;
.super Ljava/lang/Object;
.source "RegeocodeRoad.java"


# instance fields
.field private direction:Ljava/lang/String;

.field private distance:F

.field private id:Ljava/lang/String;

.field private latLngPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->distance:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLngPoint()Lcom/alipay/mobile/map/model/LatLonPoint;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->latLngPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->direction:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->distance:F

    .line 28
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setLatLngPoint(Lcom/alipay/mobile/map/model/LatLonPoint;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->latLngPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;->name:Ljava/lang/String;

    .line 46
    return-void
.end method
