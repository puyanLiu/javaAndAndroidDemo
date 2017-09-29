.class public Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
.super Ljava/lang/Object;
.source "LocationCityMgr.java"


# instance fields
.field private callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

.field private final context:Landroid/app/Activity;

.field private locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

.field private final locationWrap:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

.field private mBelowId:I

.field private mMarginTop:I

.field private userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->mBelowId:I

    .line 51
    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->mMarginTop:I

    .line 56
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->context:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

    .line 58
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    .line 59
    invoke-static {}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getInstance()Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    .line 60
    iput p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->mBelowId:I

    .line 61
    iput p4, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->mMarginTop:I

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    return-object v0
.end method


# virtual methods
.method public getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 107
    if-nez p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object p1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->getSelectCity()Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    move-result-object v0

    .line 112
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 136
    :goto_0
    return-object v0

    .line 117
    :cond_1
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    .line 118
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    .line 120
    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    .line 123
    :cond_2
    if-eqz p1, :cond_4

    .line 124
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->longitude:D

    .line 125
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->latitude:D

    .line 126
    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "\u5e02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_3
    iput-object v0, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    .line 136
    :cond_4
    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public getHomeRpcParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    .line 142
    iput-object p1, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    .line 143
    iput-object p2, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    invoke-virtual {v1}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->longitude:D

    .line 148
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->latitude:D

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    .line 80
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    const-string/jumbo v2, "o2oHomePage"

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->getExpiresTwoMinutes(Ljava/lang/String;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getSelectAdCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->getSelectCity()Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public saveSelectCityInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->saveSelectCityInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 160
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    if-ne v0, p1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->changeStyleType(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

    invoke-interface {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;->getLocationViewParent()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    if-nez v0, :cond_2

    .line 175
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->setBtnAction(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

    invoke-interface {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;->getLocationViewParent()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    iget v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->mMarginTop:I

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    const/4 v2, 0x3

    iget v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->mBelowId:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->changeStyleType(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    goto :goto_0
.end method

.method public startLocationTaskWithListener()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationWrap:Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V

    .line 101
    const-string/jumbo v2, "o2oHomePage"

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSLocationWrap;->startLocationTask(Lcom/alipay/android/phone/o2o/o2ocommon/util/LBSWrapListener;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public switchUser()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->context:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->userSelCity:Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    .line 66
    return-void
.end method
