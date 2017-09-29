.class public Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;
.super Lcom/alipay/mobile/map/model/geocode/CodeResult;
.source "ReGeocodeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private crossroads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/Crossroad;",
            ">;"
        }
    .end annotation
.end field

.field private district:Ljava/lang/String;

.field private formatAddress:Ljava/lang/String;

.field private latlonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

.field private neighborhood:Ljava/lang/String;

.field private pois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private province:Ljava/lang/String;

.field private roads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;",
            ">;"
        }
    .end annotation
.end field

.field private streetNumber:Lcom/alipay/mobile/map/model/geocode/StreetNumber;

.field private township:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/map/model/geocode/CodeResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrossroads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/Crossroad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->crossroads:Ljava/util/List;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->formatAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLatlonPoint()Lcom/alipay/mobile/map/model/LatLonPoint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->latlonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/PoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->pois:Ljava/util/List;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRoads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->roads:Ljava/util/List;

    return-object v0
.end method

.method public getStreetNumber()Lcom/alipay/mobile/map/model/geocode/StreetNumber;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->streetNumber:Lcom/alipay/mobile/map/model/geocode/StreetNumber;

    return-object v0
.end method

.method public getTownship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->township:Ljava/lang/String;

    return-object v0
.end method

.method public setCrossroads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/Crossroad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->crossroads:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->district:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setFormatAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->formatAddress:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLatlonPoint(Lcom/alipay/mobile/map/model/LatLonPoint;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->latlonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    .line 85
    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->neighborhood:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->pois:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->province:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRoads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/geocode/RegeocodeRoad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->roads:Ljava/util/List;

    .line 70
    return-void
.end method

.method public setStreetNumber(Lcom/alipay/mobile/map/model/geocode/StreetNumber;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->streetNumber:Lcom/alipay/mobile/map/model/geocode/StreetNumber;

    .line 76
    return-void
.end method

.method public setTownship(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/map/model/geocode/ReGeocodeResult;->township:Ljava/lang/String;

    .line 82
    return-void
.end method
