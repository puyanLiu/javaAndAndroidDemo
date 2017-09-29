.class public Lcom/alipay/mobile/common/lbs/LBSLocation;
.super Landroid/location/Location;
.source "LBSLocation.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:F

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->g:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->p:F

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getCellInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCellInfokey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCorseLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCorseLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFineLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getFineLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getIsGetAMapAPP()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->g:Z

    return v0
.end method

.method public getLocalTime()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->s:J

    return-wide v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiLocationkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->m:Ljava/lang/String;

    return-object v0
.end method

.method public setAccuracy(F)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->p:F

    .line 33
    return-void
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->f:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->r:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setCellInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->n:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setCellInfokey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->o:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCorseLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->j:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setCorseLocationkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->k:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->a:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setFineLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->h:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setFineLocationkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->i:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setIsGetAMapAPP(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->g:Z

    .line 95
    return-void
.end method

.method public setLocalTime(J)V
    .locals 0

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->s:J

    .line 47
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->q:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setWifiLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->l:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setWifiLocationkey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocation;->m:Ljava/lang/String;

    .line 132
    return-void
.end method
