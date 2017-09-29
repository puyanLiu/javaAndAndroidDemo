.class public Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "ProvinceCityListActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_province_city_select"
.end annotation


# static fields
.field public static final EXTRA_ISFROM_SERVICE:Ljava/lang/String; = "isFromService"

.field private static final KEY_CITY:Ljava/lang/String; = "location_city"

.field private static final KEY_COUNTRY:Ljava/lang/String; = "location_country"

.field private static final KEY_PROVINCE:Ljava/lang/String; = "location_province"


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentType:I

.field private isFromService:Z

.field private isLocationFail:Z

.field private isSelectedLocationVisible:Z

.field private lbsLocationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

.field private lbsManager:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field private listFooter:Landroid/view/View;

.field private listHeader:Landroid/view/View;

.field private locationContent:Landroid/view/View;

.field private locationHeader:Landroid/view/View;

.field private locationStr:Ljava/lang/String;

.field private locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

.field mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

.field private mDistrict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected provinceList:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "provincecitylist_listview"
    .end annotation
.end field

.field private selectedCity:Ljava/lang/String;

.field private selectedCountry:Ljava/lang/String;

.field private selectedProvince:Ljava/lang/String;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "provincecitylist_titleBar"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->currentType:I

    .line 68
    const-string/jumbo v0, "ProvinceCityListActivity"

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isSelectedLocationVisible:Z

    .line 92
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isLocationFail:Z

    .line 191
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->lbsLocationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 40
    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/commonui/widget/APTableView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isLocationFail:Z

    return v0
.end method

.method static synthetic access$13(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->lbsManager:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$15(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/common/lbs/LBSLocationListener;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->lbsLocationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    return-object v0
.end method

.method static synthetic access$16(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setResultFinish()V

    return-void
.end method

.method static synthetic access$17(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->currentDatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$18(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->currentType:I

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isLocationFail:Z

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->removeSuffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isUseMapKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    return-void
.end method

.method private getData()V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isFromService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isFromService:Z

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "location_province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const-string/jumbo v1, "location_province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    .line 110
    :cond_0
    const-string/jumbo v1, "location_city"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    const-string/jumbo v1, "location_city"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    .line 113
    :cond_1
    const-string/jumbo v1, "location_province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-string/jumbo v1, "location_city"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 115
    :cond_2
    const-string/jumbo v1, "location_country"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    sget v0, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_china:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    .line 127
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isSelectedLocationVisible:Z

    .line 129
    :cond_3
    return-void

    .line 118
    :cond_4
    const-string/jumbo v1, "location_country"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_5
    const-string/jumbo v1, "location_country"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 124
    const-string/jumbo v1, "location_country"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    goto :goto_0
.end method

.method private getFinalStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;

    .line 439
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private initDistrictList()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/beehive/R$array;->provincecityselect_district_list:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 144
    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 150
    return-void

    .line 144
    :cond_0
    aget-object v4, v2, v0

    .line 145
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 146
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 147
    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    aget-object v6, v4, v1

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->countrylist_header:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->listHeader:Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->location_header:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationHeader:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->location_content:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationContent:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationContent:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/beehive/R$id;->provincecity_located_region:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 135
    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->provincecitylist_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->listFooter:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationContent:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->table_item_bottom_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    return-void
.end method

.method private isUseMapKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private removeSuffix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    sget v0, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_province_suffix:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_0
    :goto_0
    return-object p1

    .line 246
    :cond_1
    if-nez p2, :cond_0

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    sget v0, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_city_suffix:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setHeaderGone()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->removeHeaderView(Landroid/view/View;)Z

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->removeHeaderView(Landroid/view/View;)Z

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->listHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->notifyDataSetChanged()V

    .line 301
    return-void
.end method

.method private setHeaderVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->listHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    return-void
.end method

.method private setResultFinish()V
    .locals 6

    .prologue
    .line 256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "locationStr = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 260
    array-length v3, v2

    .line 261
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 274
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isFromService:Z

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 276
    const-class v2, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;

    .line 275
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;->getProvinceCallBack()Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$IProvinceCitySelectCallBack;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$IProvinceCitySelectCallBack;->OnProvinceCitySelect(Landroid/content/Intent;)V

    .line 285
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->finish()V

    .line 286
    return-void

    .line 262
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :pswitch_0
    const-string/jumbo v4, "location_country"

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 267
    :pswitch_1
    const-string/jumbo v4, "location_province"

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 270
    :pswitch_2
    const-string/jumbo v4, "location_city"

    aget-object v5, v2, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 282
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private tracePage(IILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 445
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;-><init>()V

    .line 446
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->setIndex(I)V

    .line 447
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->setName(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->setType(I)V

    .line 449
    iget-object v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APListView;->getFirstVisiblePosition()I

    move-result v2

    .line 450
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 451
    if-nez v3, :cond_0

    .line 452
    :goto_0
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->setListIndex(I)V

    .line 453
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->setListTop(I)V

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void

    .line 451
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected handleBackBtn()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 347
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->currentType:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->finish()V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;

    .line 359
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setHeaderGone()V

    .line 360
    if-nez v0, :cond_1

    .line 361
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    .line 362
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    move-object v0, p0

    .line 361
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->refreshList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->getListIndex()I

    move-result v3

    .line 366
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->getListTop()I

    move-result v0

    .line 365
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->refreshList(IIII)V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;

    move-object v1, v0

    .line 374
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;

    .line 377
    :goto_3
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setHeaderGone()V

    .line 378
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 379
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    .line 380
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    move-object v0, p0

    move v1, v6

    .line 379
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->refreshList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->getIndex()I

    move-result v0

    .line 384
    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->getListIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/cityselect/model/PageInfo;->getListTop()I

    move-result v1

    .line 383
    invoke-virtual {p0, v6, v0, v2, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->refreshList(IIII)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_3

    :cond_5
    move-object v1, v3

    goto :goto_2

    :cond_6
    move-object v0, v3

    goto :goto_1

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleItemClick(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 433
    :goto_0
    return-void

    .line 392
    :pswitch_0
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    .line 393
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setAdapterData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->getCurrentProvinces()Ljava/util/List;

    move-result-object v1

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->currentDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->tracePage(IILjava/lang/String;)V

    .line 397
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setHeaderGone()V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->notifyDataSetChanged()V

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$6;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getFinalStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setResultFinish()V

    goto :goto_0

    .line 412
    :pswitch_1
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    .line 413
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    .line 412
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setAdapterData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->getCurrentCities()Ljava/util/List;

    move-result-object v2

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->getCurrentProvinces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->tracePage(IILjava/lang/String;)V

    .line 418
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->notifyDataSetChanged()V

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getFinalStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    .line 423
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setResultFinish()V

    goto/16 :goto_0

    .line 427
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->getCurrentCities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->tracePage(IILjava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getFinalStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setResultFinish()V

    goto/16 :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected init()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->initList()V

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->initLocalData()V

    .line 163
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->stack:Ljava/util/Stack;

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$2;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->lbsManager:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->lbsManager:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->lbsLocationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$3;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method protected initList()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationHeader:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->locationContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->listHeader:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->listFooter:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 309
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$4;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->setOnDataChangedListener(Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;)V

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$5;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 324
    return-void
.end method

.method protected initLocalData()V
    .locals 10
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 462
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/beehive/R$array;->provincecityselect_cnregion4alipay:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 467
    array-length v6, v5

    move v3, v2

    move-object v1, v0

    :goto_0
    if-lt v3, v6, :cond_0

    .line 490
    iput-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->currentDatas:Ljava/util/List;

    .line 491
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    .line 492
    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    move-object v0, p0

    .line 491
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->refreshList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void

    .line 467
    :cond_0
    aget-object v7, v5, v3

    .line 468
    const-string/jumbo v8, "_|\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 469
    array-length v8, v7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 471
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;-><init>()V

    .line 472
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->setCountryName(Ljava/lang/String;)V

    .line 473
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    :cond_2
    array-length v8, v7

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    .line 476
    if-eqz v1, :cond_1

    .line 477
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;-><init>()V

    .line 478
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->setProvinceName(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->addProvinces(Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;)V

    goto :goto_1

    .line 481
    :cond_3
    array-length v8, v7

    const/4 v9, 0x6

    if-ne v8, v9, :cond_1

    .line 483
    if-eqz v0, :cond_1

    .line 484
    new-instance v8, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;

    invoke-direct {v8}, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;-><init>()V

    .line 485
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    aget-object v7, v7, v9

    invoke-virtual {v8, v7}, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->setCityName(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, v8}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->addCity(Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    iput-object p0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->context:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->initView()V

    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getData()V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->initDistrictList()V

    .line 101
    return-void
.end method

.method protected refreshList(IIII)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 341
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setAdapterData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->notifyDataSetChanged()V

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p3, p4}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelectionFromTop(II)V

    .line 344
    return-void
.end method

.method protected refreshList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 335
    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setAdapterData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->notifyDataSetChanged()V

    .line 337
    return-void
.end method

.method protected setAdapterData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 328
    iput p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->currentType:I

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->currentDatas:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCountry:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedProvince:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->selectedCity:Ljava/lang/String;

    .line 330
    iget-boolean v7, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->isSelectedLocationVisible:Z

    move v2, p1

    move v3, p2

    .line 329
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->setData(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
