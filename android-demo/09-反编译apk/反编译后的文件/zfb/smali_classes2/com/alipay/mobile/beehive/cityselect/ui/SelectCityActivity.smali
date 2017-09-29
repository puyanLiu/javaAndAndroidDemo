.class public Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "SelectCityActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activty_city_select"
.end annotation


# static fields
.field public static final BROADCAST_CITY_CHANGE:Ljava/lang/String; = "com.alipay.mobile.common.ui.SelectCityActivity.CITY_CHANGE"

.field public static final BROADCAST_UPDATE_CITYS:Ljava/lang/String; = "com.alipay.mobile.common.ui.SelectCityActivity.UPDATE_CITYS"

.field public static final EXTRA_GOCITYLIST_FROM:Ljava/lang/String; = "from"

.field public static final EXTRA_PARAM_CITY_LIST:Ljava/lang/String; = "cityList"

.field public static final EXTRA_PARAM_CURRENTCITY_VISIABLE:Ljava/lang/String; = "currentCityVisible"

.field public static final EXTRA_PARAM_CURRENT_ADCODE:Ljava/lang/String; = "currentAdCode"

.field public static final EXTRA_PARAM_CURRENT_CITY:Ljava/lang/String; = "currentCity"

.field public static final EXTRA_PARAM_CURRENT_CITY_PINYIN:Ljava/lang/String; = "currentProvince"

.field public static final EXTRA_PARAM_CURRENT_PROVINCE:Ljava/lang/String; = "currentProvince"

.field public static final EXTRA_PARAM_HOTCITY_LIST:Ljava/lang/String; = "hotCityList"

.field public static final EXTRA_PARAM_SHOW_HOT_CITY:Ljava/lang/String; = "hotCityVisible"

.field public static final EXTRA_TITLE_NAME:Ljava/lang/String; = "extraTitleName"

.field private static final FORMAT:Ljava/lang/String; = "^[a-z,A-Z].*$"

.field public static final ISFROM_FOR_BROADCAST:I = 0x2

.field public static final ISFROM_FOR_CITY_SELECT_SERVICE:I = 0x3

.field public static final ISFROM_FROMFORM:I = 0x1

.field public static final SELCTCITY_FROM_CITYLIST:Ljava/lang/String; = "selctcity_from_citylist"

.field public static final SELECT_ADCODE:Ljava/lang/String; = "select_adcode"

.field public static final SELECT_CITY_PINYIN:Ljava/lang/String; = "select_city_pinyin"

.field public static final SELECT_PROVINCE:Ljava/lang/String; = "select_province"

.field private static final TAG:Ljava/lang/String; = "SelectCityActivity"

.field public static cacheCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field public static cacheHotCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field public static currentAdCode:Ljava/lang/String;

.field public static currentCity:Ljava/lang/String;

.field public static currentCityPinyin:Ljava/lang/String;

.field public static currentProvince:Ljava/lang/String;


# instance fields
.field private HOT_CITY_SECTION:Ljava/lang/String;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentCityVisible:Z

.field private delCacheCities:Z

.field private hotCityVisible:Z

.field private intentFilter:Landroid/content/IntentFilter;

.field private launchFrom:I

.field private locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

.field mCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field protected mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "city_list"
    .end annotation
.end field

.field private mIndexer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "location_city_layout"
    .end annotation
.end field

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "search_bar"
    .end annotation
.end field

.field mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "search_no_result"
    .end annotation
.end field

.field protected mSectionListView:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "section_list"
    .end annotation
.end field

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTempCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    .line 86
    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    .line 88
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentProvince:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 122
    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->launchFrom:I

    .line 125
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->delCacheCities:Z

    .line 128
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCityVisible:Z

    .line 131
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->hotCityVisible:Z

    .line 462
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$1;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->notifyCitySelectResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->removeCitySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->hotCityVisible:Z

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->hotCityVisible:Z

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->updateCityListData(Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->updateHotCityListData(Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initData()V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mIndexer:Ljava/util/Map;

    return-object v0
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->intentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.mobile.common.ui.SelectCityActivity.UPDATE_CITYS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->intentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method private initCityListFromLocal(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 535
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 536
    array-length v4, v3

    move v0, v1

    .line 539
    :goto_0
    if-lt v0, v4, :cond_0

    .line 551
    return-object v2

    .line 536
    :cond_0
    aget-object v5, v3, v0

    .line 540
    new-instance v6, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v6}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 541
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 542
    array-length v7, v5

    if-lt v7, v9, :cond_2

    .line 543
    aget-object v7, v5, v1

    iput-object v7, v6, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 544
    const/4 v7, 0x1

    aget-object v7, v5, v7

    iput-object v7, v6, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 545
    array-length v7, v5

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    .line 546
    aget-object v5, v5, v9

    iput-object v5, v6, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 548
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initData()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mPositions:Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mIndexer:Ljava/util/Map;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 285
    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_0
    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    .line 291
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    if-eqz v0, :cond_1

    move v1, v2

    .line 292
    :goto_0
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 305
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v2

    .line 306
    :goto_1
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_6

    .line 335
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->hotCityVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->HOT_CITY_SECTION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->HOT_CITY_SECTION:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/util/SectionComparator;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->HOT_CITY_SECTION:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/alipay/mobile/beehive/cityselect/util/SectionComparator;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v2

    .line 341
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_b

    .line 351
    return-void

    .line 293
    :cond_4
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v3, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->HOT_CITY_SECTION:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->HOT_CITY_SECTION:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->HOT_CITY_SECTION:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->HOT_CITY_SECTION:Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 307
    :cond_6
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 308
    :goto_4
    if-eqz v0, :cond_9

    .line 310
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 311
    const-string/jumbo v0, "^[a-z,A-Z].*$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_7
    move v0, v4

    .line 307
    goto :goto_4

    .line 315
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 317
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 324
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v1, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    const-string/jumbo v5, "#"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 343
    :cond_b
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mIndexer:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mPositions:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 341
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto :goto_6
.end method

.method private notifyCitySelectResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 603
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 604
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 608
    :cond_0
    sput-object p2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 609
    sput-object p1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentProvince:Ljava/lang/String;

    .line 610
    sput-object p3, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 611
    sput-object p4, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCityPinyin:Ljava/lang/String;

    .line 613
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->delCacheCities:Z

    if-eqz v0, :cond_1

    .line 614
    sput-object v2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    .line 615
    sput-object v2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 619
    const-string/jumbo v1, "select_province"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string/jumbo v1, "selctcity_from_citylist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string/jumbo v1, "select_adcode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string/jumbo v1, "select_city_pinyin"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->setResult(ILandroid/content/Intent;)V

    .line 624
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SelectCityActivity"

    const-string/jumbo v2, "notifyCitySelectResult:after setResult"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->launchFrom:I

    if-ne v0, v3, :cond_3

    .line 627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    const-string/jumbo v1, "com.alipay.mobile.common.ui.SelectCityActivity.CITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string/jumbo v1, "select_province"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const-string/jumbo v1, "selctcity_from_citylist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string/jumbo v1, "select_adcode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string/jumbo v1, "select_city_pinyin"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 635
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SelectCityActivity"

    const-string/jumbo v2, "notifyCitySelectResult: sendBroadcast"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->finish()V

    .line 650
    return-void

    .line 636
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->launchFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 637
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 638
    const-class v1, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;

    .line 639
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;->getCallBack()Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 640
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 641
    iput-object p2, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 642
    iput-object p3, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 643
    iput-object p1, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->province:Ljava/lang/String;

    .line 644
    iput-object p4, v1, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 645
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService;->getCallBack()Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/service/CitySelectService$ICitySelectCallBack;->OnCitySelect(Lcom/alipay/mobile/beehive/cityselect/model/CityVO;)V

    goto :goto_0
.end method

.method private removeCitySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    sget v0, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_city_suffix:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 719
    :cond_0
    return-object p1
.end method

.method private updateCityListData(Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 2

    .prologue
    .line 510
    .line 511
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->delCacheCities:Z

    .line 514
    iget-object v0, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 515
    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/util/CityComparator;

    invoke-direct {v1}, Lcom/alipay/mobile/beehive/cityselect/util/CityComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    goto :goto_0
.end method

.method private updateHotCityListData(Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 522
    .line 523
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p1, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    .line 526
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->delCacheCities:Z

    .line 531
    :goto_0
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    .line 529
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->delCacheCities:Z

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

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

.method protected init()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    .line 214
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$layout;->city_list_pinned_header:I

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    .line 215
    const/4 v4, 0x0

    .line 214
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->city_search_box_hint:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHint(I)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSectionListView:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->setVisibility(I)V

    .line 221
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    const-string/jumbo v1, "extraTitleName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v2, "extraTitleName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->showCityList()V

    .line 227
    return-void
.end method

.method protected initView()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSectionListView:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->setSections(Ljava/util/List;)V

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSectionListView:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$2;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->setOnItemClickListener(Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 370
    sget v1, Lcom/alipay/mobile/beehive/R$id;->current_city_title:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 371
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 372
    sget v2, Lcom/alipay/mobile/beehive/R$string;->cityselect_current_city:I

    .line 371
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 375
    sget v1, Lcom/alipay/mobile/beehive/R$id;->current_city:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 374
    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 377
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->launchFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 378
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 382
    sget v2, Lcom/alipay/mobile/beehive/R$string;->lbs_fail:I

    .line 381
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$3;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    :goto_1
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSections:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mPositions:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 429
    sget v2, Lcom/alipay/mobile/beehive/R$layout;->city_list_pinned_header:I

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$5;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->dismissProgressDialog()V

    .line 446
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCityVisible:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSectionListView:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->setVisibility(I)V

    .line 452
    return-void

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :cond_3
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/beehive/R$string;->city_select_location_fail:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    goto/16 :goto_1

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$4;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected loadCitys()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 250
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    .line 255
    sget v1, Lcom/alipay/mobile/beehive/R$array;->cities_from_gaode:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initCityListFromLocal(I)Ljava/util/List;

    move-result-object v1

    .line 257
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->hotCityVisible:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :cond_0
    sget v0, Lcom/alipay/mobile/beehive/R$array;->hot_cities:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initCityListFromLocal(I)Ljava/util/List;

    move-result-object v0

    .line 261
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->updatDatas(Ljava/util/List;Ljava/util/List;)V

    .line 262
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 707
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    .line 708
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->delCacheCities:Z

    if-eqz v0, :cond_0

    .line 709
    sput-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    .line 710
    sput-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    .line 712
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$string;->cityselect_hot_city_section:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->HOT_CITY_SECTION:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_1

    .line 164
    const-string/jumbo v0, "from"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->launchFrom:I

    .line 167
    const-string/jumbo v0, "currentCity"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 168
    const-string/jumbo v0, "currentProvince"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCityPinyin:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "currentAdCode"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 170
    const-string/jumbo v0, "currentProvince"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentProvince:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "cityList"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "cityList"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 175
    instance-of v2, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-eqz v2, :cond_0

    .line 176
    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 177
    iget-object v2, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->delCacheCities:Z

    .line 180
    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 181
    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/beehive/cityselect/util/CityComparator;

    invoke-direct {v2}, Lcom/alipay/mobile/beehive/cityselect/util/CityComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    :cond_0
    const-string/jumbo v0, "currentCityVisible"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCityVisible:Z

    .line 189
    const-string/jumbo v0, "hotCityVisible"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->hotCityVisible:Z

    .line 191
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->hotCityVisible:Z

    if-eqz v0, :cond_1

    .line 192
    const-string/jumbo v0, "hotCityList"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const-string/jumbo v0, "hotCityList"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 195
    instance-of v1, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    if-eqz v1, :cond_1

    .line 196
    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    .line 197
    iget-object v1, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    .line 200
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->delCacheCities:Z

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    sget v0, Lcom/alipay/mobile/beehive/R$array;->hot_cities:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initCityListFromLocal(I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 232
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 565
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSectionListView:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->setVisibility(I)V

    .line 569
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->currentCityVisible:Z

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->setIsSearchResult(Z)V

    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    .line 576
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->refreshUi(Ljava/util/List;)V

    .line 598
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSectionListView:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->setIsSearchResult(Z)V

    .line 584
    sget-object v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    .line 583
    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/util/Cityfilter;->getMatchedContact(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 585
    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    .line 586
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    .line 590
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    .line 591
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->requestFocusFromTouch()Z

    .line 592
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setSelection(I)V

    .line 593
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 594
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->refreshUi(Ljava/util/List;)V

    .line 595
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    goto :goto_0
.end method

.method protected showCityList()V
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->loadCitys()V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initData()V

    .line 241
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initView()V

    goto :goto_0
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

.method public startLocation()V
    .locals 3

    .prologue
    .line 654
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    .line 655
    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    .line 657
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$string;->lbs_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :goto_0
    return-void

    .line 661
    :cond_0
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity$6;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V

    .line 698
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    goto :goto_0
.end method

.method protected updatDatas(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    sput-object p1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheCityList:Ljava/util/List;

    .line 267
    sput-object p2, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->cacheHotCityList:Ljava/util/List;

    .line 269
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initData()V

    .line 270
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initView()V

    .line 271
    return-void
.end method
