.class public Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProvinceCityListAdapter.java"


# static fields
.field public static final TYPE_CITY:I = 0x0

.field public static final TYPE_COUNTRY:I = 0x2

.field public static final TYPE_PROVINCE:I = 0x1


# instance fields
.field private currentCity:Ljava/lang/String;

.field private currentCityIndex:I

.field private currentCountry:Ljava/lang/String;

.field private currentCountryIndex:I

.field private currentProvince:Ljava/lang/String;

.field private currentProvinceIndex:I

.field private currentType:I

.field public locationDataChangeListener:Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;

.field private mCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selectedLocationVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentType:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private getCityIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 306
    const/4 v1, -0x1

    :cond_0
    return v1

    .line 303
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getCountryIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 290
    const/4 v1, -0x1

    :cond_0
    return v1

    .line 287
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getProvinceIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 298
    const/4 v1, -0x1

    :cond_0
    return v1

    .line 295
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentType:I

    packed-switch v1, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentCities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentType:I

    packed-switch v1, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    if-nez p2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->provincecitylist_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;-><init>()V

    .line 113
    sget v0, Lcom/alipay/mobile/beehive/R$id;->provincecity_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 114
    sget v0, Lcom/alipay/mobile/beehive/R$id;->provincecity_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mDivider:Landroid/view/View;

    .line 115
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    .line 116
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    .line 117
    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/beehive/R$color;->regionlist_selected_region:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 116
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 118
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setBackgroundResource(I)V

    .line 126
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v3

    .line 179
    :goto_1
    if-eqz v0, :cond_7

    .line 180
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setArrowImageVisibility(I)V

    .line 185
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_8

    .line 186
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mDivider:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_3
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    return-object p2

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 134
    sget v5, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_selected_area:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    move v0, v3

    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    move v0, v3

    .line 141
    goto :goto_1

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;

    .line 145
    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 148
    iget-object v5, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v6, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 149
    sget v7, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_selected_area:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    .line 154
    :cond_3
    :goto_4
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->getCitys()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->getCitys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 159
    goto/16 :goto_1

    .line 151
    :cond_4
    iget-object v5, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    goto :goto_4

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;

    .line 163
    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    iget-object v5, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v6, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 167
    sget v7, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_selected_area:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 166
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    .line 172
    :cond_5
    :goto_5
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->getProvinces()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->getProvinces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 174
    goto/16 :goto_1

    .line 169
    :cond_6
    iget-object v5, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    goto :goto_5

    .line 182
    :cond_7
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setArrowImageVisibility(I)V

    goto/16 :goto_2

    .line 188
    :cond_8
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setData(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 203
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    .line 204
    iput p2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentType:I

    .line 205
    iput-object p4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCountry:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentProvince:Ljava/lang/String;

    .line 207
    iput-object p6, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCity:Ljava/lang/String;

    .line 208
    iput-boolean p7, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->selectedLocationVisible:Z

    .line 209
    packed-switch p2, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->selectedLocationVisible:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCountry:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCountry:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->getCountryIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCountryIndex:I

    .line 218
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCountryIndex:I

    if-eq v0, v2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCountryIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;

    .line 220
    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->setSelected(Z)V

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCountryIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->locationDataChangeListener:Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->locationDataChangeListener:Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;->onDataChanged(Ljava/util/List;)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->selectedLocationVisible:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->getProvinces()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentProvince:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentProvince:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->getProvinceIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentProvinceIndex:I

    .line 243
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentProvinceIndex:I

    if-eq v0, v2, :cond_5

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentProvinceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;

    .line 245
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->setSelected(Z)V

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentProvinceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->locationDataChangeListener:Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->locationDataChangeListener:Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;->onDataChanged(Ljava/util/List;)V

    goto/16 :goto_0

    .line 254
    :pswitch_2
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->selectedLocationVisible:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mProvinces:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;->getCitys()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCity:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCity:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->getCityIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCityIndex:I

    .line 264
    :cond_7
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCityIndex:I

    if-eq v0, v2, :cond_8

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCityIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;

    .line 266
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->setSelected(Z)V

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->currentCityIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCities:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 270
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->locationDataChangeListener:Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->locationDataChangeListener:Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->mCountries:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;->onDataChanged(Ljava/util/List;)V

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnDataChangedListener(Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListAdapter;->locationDataChangeListener:Lcom/alipay/mobile/beehive/cityselect/ui/LocationDataChangeListener;

    .line 311
    return-void
.end method
