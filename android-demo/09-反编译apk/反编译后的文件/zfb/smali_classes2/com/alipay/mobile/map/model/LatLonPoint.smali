.class public Lcom/alipay/mobile/map/model/LatLonPoint;
.super Ljava/lang/Object;
.source "LatLonPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v0, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->latitude:D

    .line 20
    iput-wide v0, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->longitude:D

    .line 21
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->latitude:D

    .line 25
    iput-wide p3, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->longitude:D

    .line 26
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->latitude:D

    .line 33
    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->longitude:D

    .line 39
    return-void
.end method
