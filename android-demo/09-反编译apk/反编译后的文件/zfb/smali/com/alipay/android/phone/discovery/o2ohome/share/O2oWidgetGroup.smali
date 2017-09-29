.class public Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;


# static fields
.field public static final EXTRA_ADCADE:Ljava/lang/String; = "ext_adCode"

.field public static final EXTRA_ISFROM_SHARE:Ljava/lang/String; = "ext_from_share"

.field public static final EXTRA_SEARCH_QUERYINDEX:Ljava/lang/String; = "ext_search_query_index"

.field public static final EXTRA_SEARCH_SESSIONID:Ljava/lang/String; = "ext_search_session_id"

.field public static final METHOD_PROFILE:Z = false

.field private static final TAG:Ljava/lang/String; = "O2oWidgetGroup-share"

.field public static final TIME_PROFILE:Z


# instance fields
.field private apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

.field private categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

.field private cityBlankView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;

.field private cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

.field private citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

.field private cityView:Landroid/widget/TextView;

.field private containerList:Lcom/alipay/mobile/commonui/widget/APListView;

.field private context:Landroid/app/Activity;

.field private currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

.field private homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

.field private hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

.field private hotTitleView:Landroid/widget/LinearLayout;

.field private listViewFooter:Landroid/widget/LinearLayout;

.field private loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

.field private loadingView:Landroid/view/View;

.field private locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

.field private pageContainer:Landroid/view/ViewGroup;

.field private rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

.field private rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

.field private rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

.field private searchListTemplateId:Ljava/lang/String;

.field protected shareParamReceiverId:Ljava/lang/String;

.field protected shareParamReceiverUserType:Ljava/lang/String;

.field private titleBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    .line 121
    const-string/jumbo v0, "WALLET-O2O@O2OIndexGoodsView"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 125
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    .line 127
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 129
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 135
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initHomeRpcExecutor()V

    .line 136
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverId:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverUserType:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private InitListViewFooter()V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_listview_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    .line 604
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;)V

    .line 605
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_footer:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 608
    if-eqz v0, :cond_0

    .line 609
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    return-object v0
.end method

.method static synthetic access$12(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;Z)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;Z)V

    return-void
.end method

.method static synthetic access$13(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getShareParamString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    return-object v0
.end method

.method static synthetic access$16(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    return-object v0
.end method

.method static synthetic access$17(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    return-void
.end method

.method static synthetic access$19(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    return-object v0
.end method

.method static synthetic access$20(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityBlankView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityBlankView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;

    return-void
.end method

.method static synthetic access$22(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Z
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$23(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->refreshHomePage(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pullRefreshFinished()V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setSearchBarHintText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;I)V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->adjustCategoryHeight(I)V

    return-void
.end method

.method private adjustCategoryHeight(I)V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 946
    if-eqz v0, :cond_0

    .line 947
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 948
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->banner_height_higher:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 952
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    :cond_0
    return-void

    .line 950
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->banner_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private getSearchSessionInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&ext_search_session_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->showSwitch:Z

    if-eqz v1, :cond_0

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_search_has_switch=YES"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    :cond_0
    return-object v0
.end method

.method private getShareParamString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    const-string/jumbo v0, ""

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_from_share=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&chatUserId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&chatUserType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    return-object v0
.end method

.method private initContainerListView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->container_list:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 178
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APListView;->setScrollingCacheEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APListView;->setAnimationCacheEnabled(Z)V

    .line 181
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 186
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v6, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1, v5, v4}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 191
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$1;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 198
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    .line 199
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v7}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 201
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->banner_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 201
    invoke-direct {v0, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->home_activity_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_listheader_hot:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    .line 210
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->InitListViewFooter()V

    .line 215
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v5, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    .line 216
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->setShareParamUserId(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->shareParamReceiverUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->setShareParamUserType(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    return-void
.end method

.method private initHomeRpcExecutor()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    if-nez v0, :cond_1

    .line 443
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    .line 444
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->setListener(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;)V

    .line 446
    :cond_1
    return-void
.end method

.method private initRpcErrorRemind()V
    .locals 5

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_body:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 433
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->action_bar:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;II)V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    .line 435
    :cond_0
    return-void
.end method

.method private isHomePageHasContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 449
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->removeAllErrorView()V

    .line 281
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    .line 289
    if-eqz p2, :cond_2

    .line 290
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->autoRefresh()V

    .line 299
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;

    invoke-direct {v0}, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;-><init>()V

    .line 301
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    .line 302
    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup-share"

    const-string/jumbo v3, "home Page RPC request: adCode is empty!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    .line 306
    :cond_3
    iget-wide v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->longitude:D

    iput-wide v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->x:D

    .line 307
    iget-wide v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->latitude:D

    iput-wide v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->y:D

    .line 308
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup-share"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "HomePage RPC : cityId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->x:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->y:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;-><init>(Landroid/content/Context;)V

    .line 311
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->getBirdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->templateParams:Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->setRequest(Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;)V

    .line 315
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->run()V

    goto/16 :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private loadHomePageFromCache()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncLoadCacheData(Z)V

    .line 360
    return-void
.end method

.method private pullRefreshFinished()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setVisibility(I)V

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    goto :goto_0
.end method

.method private refreshHomePage(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 337
    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    aput-object v3, v1, v2

    .line 338
    :goto_0
    if-lt v0, v4, :cond_1

    .line 343
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->clearData()V

    .line 344
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 347
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v1, :cond_0

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 353
    return-void

    .line 339
    :cond_1
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 340
    aget-object v2, v1, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeAllErrorView()V
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityBlankView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityBlankView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->hideView()V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->removeFromParent()V

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    if-eqz v0, :cond_2

    .line 965
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->hideView()V

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-eqz v0, :cond_3

    .line 968
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 970
    :cond_3
    return-void
.end method

.method private setSearchBarHintText()V
    .locals 4

    .prologue
    .line 689
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->searchHotwordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->searchHotwordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;->searchText:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotword;

    .line 691
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotword;->hotword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 693
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_hint:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 694
    if-eqz v2, :cond_0

    .line 695
    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotword;->hotword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :cond_0
    return-void
.end method

.method private setSearchBarHintText(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 704
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_hint:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 705
    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    :cond_0
    return-void
.end method

.method private setUiCity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 841
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    if-eqz v0, :cond_3

    .line 842
    const-string/jumbo v0, "\u5e02"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iput-object p1, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    .line 846
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iput-object p2, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->cityName:Ljava/lang/String;

    .line 847
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 848
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 849
    const/4 v0, 0x3

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->getInstance()Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_3

    .line 857
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->setContext(Landroid/app/Activity;)V

    .line 858
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->setSelectCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_3
    return-void
.end method

.method private showCityBlankView()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 795
    return-void
.end method

.method private showCityRemindView()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$8;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 776
    return-void
.end method

.method private startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;Z)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->removeAllErrorView()V

    .line 267
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->startLocationTaskWithListener()V

    goto :goto_0
.end method

.method private updateCategoryView()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    .line 515
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    goto :goto_0
.end method

.method private updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 523
    const/4 v0, 0x0

    .line 524
    if-eqz p1, :cond_1

    .line 526
    new-instance v1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-direct {v1}, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;-><init>()V

    .line 527
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->templateId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->templateId:Ljava/lang/String;

    .line 528
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->templateJson:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->templateJson:Ljava/lang/String;

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    .line 530
    iget-object v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 532
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v3, "menus"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 533
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 534
    iget-object v3, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v4, "menus"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 538
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 555
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->clearCategoryData()V

    .line 556
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getShareParamString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getSearchSessionInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setActionExpandParam(Ljava/lang/String;)V

    .line 558
    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 559
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v1, "menus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 560
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "O2oWidgetGroup-share"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateCategoryView, menus count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->getPageSize()I

    move-result v1

    .line 563
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    div-int/2addr v3, v1

    .line 564
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    rem-int/2addr v0, v1

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    add-int v1, v3, v0

    move v0, v2

    .line 565
    :goto_2
    if-lt v0, v1, :cond_6

    .line 569
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_2

    .line 570
    if-lez v1, :cond_7

    .line 571
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 583
    :cond_2
    :goto_3
    return-void

    .line 539
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 540
    if-eqz v0, :cond_0

    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 543
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->decoderUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    const-string/jumbo v4, "alipay"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "target=classify"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 548
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 564
    goto :goto_1

    .line 566
    :cond_6
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pageNo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->add(Ljava/lang/Object;)V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 574
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 575
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->showCityBlankView()V

    goto :goto_3

    .line 580
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup-share"

    const-string/jumbo v3, "updateHotItemsView"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object p1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    .line 479
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 482
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 492
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_listheader_hottitle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 495
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    :cond_1
    const-string/jumbo v0, ""

    .line 506
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->recommendId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&recommendId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->recommendId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    invoke-virtual {v1, v3, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->setTemplates(Ljava/util/List;Ljava/lang/String;)V

    .line 510
    return-void

    .line 483
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 484
    new-instance v4, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    invoke-direct {v4, v5, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 485
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateUrl:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->setJumpUrl(Ljava/lang/String;)V

    .line 486
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 488
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "O2oWidgetGroup-share"

    const-string/jumbo v5, "server response ext is null or empty"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 712
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->destroy()V

    .line 714
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->clearListener()V

    .line 719
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    if-eqz v0, :cond_2

    .line 722
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    if-eqz v0, :cond_3

    .line 726
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    .line 729
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    if-eqz v0, :cond_4

    .line 730
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->currentCityInfo:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    .line 733
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    if-eqz v0, :cond_5

    .line 734
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 737
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_6

    .line 738
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 740
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    if-eqz v0, :cond_7

    .line 741
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    .line 743
    :cond_7
    return-void
.end method

.method protected getTemplateInfo(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 463
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 464
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup-share"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "templateId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v4, v4, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " templateJson: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v4, v4, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateJson:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    .line 469
    :cond_0
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->o2o_home_view_share:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->framework_loading:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadingView:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public initLocationMgr()V
    .locals 5

    .prologue
    .line 798
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-nez v0, :cond_0

    .line 799
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$10;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$10;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 835
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->action_bar:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;II)V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    .line 837
    :cond_0
    return-void
.end method

.method public initLogicData()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initLocationMgr()V

    .line 167
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomePageFromCache()V

    .line 169
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initContainerListView()V

    .line 174
    return-void
.end method

.method public initPullRefreshView()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->pull_refresh_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    .line 224
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    .line 251
    return-void
.end method

.method public initTitlebar()V
    .locals 2

    .prologue
    .line 629
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    .line 641
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    .line 644
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->search_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 645
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$5;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->titleBar:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$6;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$6;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->city:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    .line 680
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityView:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$7;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    return-void
.end method

.method isCurrentActivityShow()Z
    .locals 2

    .prologue
    .line 864
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 865
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFailed(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 5

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pullRefreshFinished()V

    .line 910
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->getResponse()Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 911
    if-eqz v0, :cond_0

    .line 913
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup-share"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RPC result failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->desc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->isCurrentActivityShow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 920
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->initRpcErrorRemind()V

    .line 921
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 923
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$12;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$12;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 930
    iget v1, p2, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->code:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 931
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->showNetworkErrorTip(ZLandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 933
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    iget-object v2, p2, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->Str:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->showEmptyView(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 4

    .prologue
    .line 870
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->getResponse()Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 871
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-nez v1, :cond_0

    .line 872
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-direct {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setRpcData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 875
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setPollTimeMillis()V

    .line 877
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pullRefreshFinished()V

    .line 879
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityOpen:Z

    if-eqz v1, :cond_1

    .line 880
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setSearchBarHintText()V

    .line 885
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView()V

    .line 887
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getTemplateInfo(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)Ljava/util/Map;

    move-result-object v1

    .line 888
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;-><init>(Landroid/content/Context;)V

    .line 889
    new-instance v3, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$11;

    invoke-direct {v3, p0, v2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$11;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->requestTemplateAsync(Ljava/util/Map;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V

    .line 904
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncSaveCacheData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 905
    return-void

    .line 882
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->showCityRemindView()V

    goto :goto_0
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->context:Landroid/app/Activity;

    .line 146
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method
