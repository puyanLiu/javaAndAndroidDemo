.class public Lcom/alipay/mobile/map/model/geocode/GeocodeResult;
.super Lcom/alipay/mobile/map/model/geocode/CodeResult;
.source "GeocodeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adcode:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private formatAddress:Ljava/lang/String;

.field private latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

.field private level:Ljava/lang/String;

.field private neighborhood:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private township:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/map/model/geocode/CodeResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->adcode:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->formatAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLonPoint()Lcom/alipay/mobile/map/model/LatLonPoint;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getTownship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->township:Ljava/lang/String;

    return-object v0
.end method

.method public setAdcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->adcode:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->district:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFormatAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->formatAddress:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setLatLonPoint(Lcom/alipay/mobile/map/model/LatLonPoint;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    .line 50
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->level:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->neighborhood:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->province:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTownship(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/GeocodeResult;->township:Ljava/lang/String;

    .line 74
    return-void
.end method
