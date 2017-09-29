.class public Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidgetGroup;
.implements Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$IHomeDataUpdate;
.implements Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;


# static fields
.field public static final EXTRA_SEARCH_SESSIONID:Ljava/lang/String; = "ext_search_session_id"

.field public static final METHOD_PROFILE:Z = false

.field private static final TAG:Ljava/lang/String; = "O2oWidgetGroup"

.field public static final TIME_PROFILE:Z


# instance fields
.field private activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

.field private advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

.field private announcement:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

.field private apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private final backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

.field private badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

.field private categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

.field private cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

.field private citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

.field private cityView:Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;

.field private containerList:Lcom/alipay/mobile/commonui/widget/APListView;

.field private context:Landroid/app/Activity;

.field private curAdCodeMgr:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

.field private friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

.field private headerView:Landroid/widget/LinearLayout;

.field private homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

.field private hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

.field private hotTitleView:Landroid/widget/LinearLayout;

.field private lastLoginId:Ljava/lang/String;

.field private listViewFooter:Landroid/widget/LinearLayout;

.field private loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

.field private loadingView:Landroid/view/View;

.field private locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

.field private mId:Ljava/lang/String;

.field private final monitorHelper:Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;

.field private pageContainer:Landroid/view/ViewGroup;

.field private rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

.field private rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

.field private rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

.field private searchListTemplateId:Ljava/lang/String;

.field private startRefreshTime:J

.field private uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRefreshTime:J

    .line 104
    const-string/jumbo v0, "20000238"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->mId:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    .line 130
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->announcement:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    .line 131
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    .line 137
    const-string/jumbo v0, "WALLET-O2O@O2OIndexGoodsView"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 141
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    .line 145
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 147
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 152
    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    .line 155
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->monitorHelper:Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;

    .line 158
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initHomeRpcExecutor()V

    .line 159
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    .line 160
    return-void
.end method

.method private InitListViewFooter()V
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_listview_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    .line 818
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;)V

    .line 819
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_footer:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 822
    if-eqz v0, :cond_0

    .line 823
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$9;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->monitorHelper:Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomePageFromCache()V

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initContainerListView()V

    return-void
.end method

.method static synthetic access$13(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->registerSyncProcessor()V

    return-void
.end method

.method static synthetic access$14(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    return-object v0
.end method

.method static synthetic access$15(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    return-object v0
.end method

.method static synthetic access$17(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;Z)V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;Z)V

    return-void
.end method

.method static synthetic access$18(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    return-object v0
.end method

.method static synthetic access$19(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;I)V
    .locals 0

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->adjustCategoryHeight(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    return-object v0
.end method

.method static synthetic access$20(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->callbackCategoryCellClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    return-object v0
.end method

.method static synthetic access$24(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z
    .locals 1

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateRpcDataOfFriend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$25(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$27(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Z)V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setEnablePull(Z)V

    return-void
.end method

.method static synthetic access$28(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView()V

    return-void
.end method

.method static synthetic access$29(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRefreshTime:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    return-void
.end method

.method static synthetic access$30(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->refreshHomePage(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateActivityView(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z
    .locals 1

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    return v0
.end method

.method private adjustCategoryHeight(I)V
    .locals 3

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1201
    if-eqz v0, :cond_0

    .line 1202
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->banner_height_higher:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1207
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    :cond_0
    return-void

    .line 1205
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->banner_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private callbackCategoryCellClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncSaveCacheFriend(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;)V

    .line 1087
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->reset()V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncSaveCacheCategory(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 1096
    :cond_1
    return-void
.end method

.method private getSearchSessionInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 808
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

    .line 809
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->showSwitch:Z

    if-eqz v1, :cond_0

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&ext_search_has_switch=YES"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    :cond_0
    return-object v0
.end method

.method private initAdvertisementView()V
    .locals 3

    .prologue
    .line 990
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-nez v0, :cond_0

    .line 991
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    .line 998
    :cond_0
    return-void
.end method

.method private initContainerListView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 304
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$3;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    .line 317
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$5;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    .line 332
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setOnCellViewClick(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;)V

    .line 339
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    .line 340
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 341
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 342
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 344
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->banner_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 342
    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 346
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->home_activity_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 347
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    .line 351
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setVisibility(I)V

    .line 352
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 353
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initAdvertisementView()V

    .line 359
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_listheader_hot:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    .line 360
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->InitListViewFooter()V

    .line 365
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v6, v1}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/util/List;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    .line 366
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 367
    return-void
.end method

.method private initHomePageView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 284
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->o2o_home_view:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->framework_loading:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    .line 287
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->container_list:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 288
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->ad_announcement:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->announcement:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    .line 289
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APListView;->setScrollingCacheEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APListView;->setAnimationCacheEnabled(Z)V

    .line 297
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    .line 298
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v5, v4}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 301
    return-void
.end method

.method private initHomeRpcExecutor()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;-><init>(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/model/BaseRpcModel;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    .line 674
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->setListener(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$BackgroundListener;)V

    .line 676
    :cond_1
    return-void
.end method

.method private initLocationMgr()V
    .locals 5

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-nez v0, :cond_0

    .line 1002
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 1040
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->title_hight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1041
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->ad_announcement:I

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;II)V

    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    .line 1043
    :cond_0
    return-void
.end method

.method private initPullRefreshView()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->pull_refresh_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    .line 372
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$7;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    .line 400
    return-void
.end method

.method private initRpcErrorRemind()V
    .locals 5

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_body:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 662
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->title_hight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 663
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->ad_announcement:I

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;II)V

    iput-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    .line 665
    :cond_0
    return-void
.end method

.method private isHomePageHasContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 679
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->removeAllErrorView()V

    .line 431
    if-nez p1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRefreshTime:J

    .line 434
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->containerList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    .line 438
    if-eqz p2, :cond_1

    .line 439
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->autoRefresh()V

    .line 446
    :cond_1
    :goto_1
    new-instance v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;

    invoke-direct {v0}, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;-><init>()V

    .line 447
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    .line 448
    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    const-string/jumbo v3, "home Page RPC request: adCode is empty!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    .line 452
    :cond_2
    iget-wide v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->longitude:D

    iput-wide v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->x:D

    .line 453
    iget-wide v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->latitude:D

    iput-wide v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->y:D

    .line 454
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

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

    .line 456
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;-><init>(Landroid/content/Context;)V

    .line 457
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->getBirdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->templateParams:Ljava/lang/String;

    .line 459
    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateAnnouncement(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->cityName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->setRequest(Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;)V

    .line 463
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcExecutor:Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;->run()V

    goto/16 :goto_0

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private loadHomePageFromCache()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncLoadCacheData(Z)V

    .line 527
    return-void
.end method

.method private refreshHomePage(Ljava/util/Map;)V
    .locals 7
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
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    if-eqz p1, :cond_2

    .line 488
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "O2oWidgetGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "refreshHomePage(tempRet) : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_0
    new-array v3, v6, [Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    aput-object v0, v3, v1

    move v0, v2

    .line 495
    :goto_1
    if-lt v0, v6, :cond_3

    .line 503
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clearData()V

    .line 504
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 505
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 506
    if-eqz v0, :cond_5

    sget-object v3, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v3, :cond_5

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    move v0, v1

    .line 512
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->showAdvertisement()V

    .line 516
    :cond_0
    if-nez v0, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    .line 518
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 520
    :cond_1
    return-void

    .line 490
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "O2oWidgetGroup"

    const-string/jumbo v4, "refreshHomePage(tempRet) : tempRet is null"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_3
    aget-object v4, v3, v0

    if-eqz v4, :cond_4

    .line 497
    aget-object v4, v3, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private registerSyncProcessor()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;-><init>(Landroid/app/Activity;Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor$IHomeDataUpdate;)V

    .line 280
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeDataSyncProcessor;->registerSync()V

    .line 281
    return-void
.end method

.method private removeAllErrorView()V
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->removeFromParent()V

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->hideView()V

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-eqz v0, :cond_2

    .line 1220
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 1222
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setEnablePull(Z)V

    .line 1223
    return-void
.end method

.method private setEnablePull(Z)V
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    .line 1259
    :cond_0
    return-void
.end method

.method private setUiCity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1047
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1048
    const-string/jumbo v0, "\u5e02"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;

    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->setText(Ljava/lang/String;)V

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->reset()V

    .line 1055
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1056
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iput-object p1, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    .line 1057
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iput-object p2, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->cityName:Ljava/lang/String;

    .line 1060
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->curAdCodeMgr:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->lastLoginId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->setSelectCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_3
    return-void
.end method

.method private showCityRemindView()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 932
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    if-nez v0, :cond_0

    .line 933
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    .line 934
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$10;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$10;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->setBtnAction(Landroid/view/View$OnClickListener;)V

    .line 949
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_body:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 950
    if-eqz v0, :cond_0

    .line 951
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 952
    const/4 v2, 0x3

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->ad_announcement:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 953
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->title_hight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 954
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 959
    :cond_0
    invoke-direct {p0, v4}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setEnablePull(Z)V

    .line 960
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->showView()V

    .line 961
    return-void
.end method

.method private startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_1

    .line 413
    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;Z)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->removeAllErrorView()V

    .line 417
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->startLocationTaskWithListener()V

    goto :goto_0
.end method

.method private switchLoginUser()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1229
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->monitorHelper:Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->startMainLink()V

    .line 1231
    iput-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    .line 1232
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->reset()V

    .line 1233
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityView:Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->select_city:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->setText(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    .line 1237
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1240
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->hideAdvertisement()V

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clearData()V

    .line 1247
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 1250
    iput-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 1251
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-virtual {v0, v5}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncLoadCacheData(Z)V

    .line 1252
    invoke-direct {p0, v4, v5}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V

    .line 1253
    return-void
.end method

.method private updateActivityView(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V
    .locals 3

    .prologue
    .line 751
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object p1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->promoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

    .line 755
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;->data:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 756
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "updateActivityView"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;->data:Ljava/util/Map;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->startTimerHandler(Ljava/util/Map;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setVisibility(I)V

    .line 763
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->activityView:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->stopTimer()V

    goto :goto_0
.end method

.method private updateAnnouncement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 967
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->announcement:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 970
    const-string/jumbo v1, "adCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-static {p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->isSameCity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->announcement:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    const-string/jumbo v2, "business_toptips"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 983
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Advertisement-o2o"

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "announcement.updateSpaceCode. adCodeNew: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " adCodeOld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_0
    return-void

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->announcement:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    const-string/jumbo v2, "business_toptips"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method private updateCategoryView()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_0

    .line 768
    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 772
    :goto_0
    return-void

    .line 770
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    goto :goto_0
.end method

.method private updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 775
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 776
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->clearCategoryData()V

    .line 777
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getSearchSessionInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->setActionExpandParam(Ljava/lang/String;)V

    .line 779
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 780
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v2, "menus"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 781
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "O2oWidgetGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateCategoryView, menus count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->getPageSize()I

    move-result v2

    .line 784
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    div-int/2addr v3, v2

    .line 785
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int v2, v3, v0

    move v0, v1

    .line 786
    :goto_1
    if-lt v0, v2, :cond_2

    .line 790
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_0

    .line 791
    if-lez v2, :cond_3

    .line 792
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 804
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    .line 805
    return-void

    :cond_1
    move v0, v1

    .line 785
    goto :goto_0

    .line 787
    :cond_2
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->categoryAdapter:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pageNo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->add(Ljava/lang/Object;)V

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 795
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    goto :goto_2

    .line 800
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->bvBanner:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 707
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v3, "updateHotItemsView"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object p1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    .line 713
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 714
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    if-eqz v0, :cond_2

    move v1, v2

    .line 715
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 725
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_listheader_hottitle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 726
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->isPreGeneratedDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateHeaderAndFooter(Z)V

    .line 731
    :cond_2
    const-string/jumbo v0, ""

    .line 732
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->recommendId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->recommendId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    invoke-virtual {v1, v3, v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->setTemplates(Ljava/util/List;Ljava/lang/String;)V

    .line 736
    return-void

    .line 716
    :cond_4
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 717
    new-instance v4, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->mrps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/MrpDetail;->ext:Ljava/util/Map;

    invoke-direct {v4, v5, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 718
    iget-object v0, p1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateUrl:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->setJumpUrl(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->setAdCode(Ljava/lang/String;)V

    .line 720
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 722
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "O2oWidgetGroup"

    const-string/jumbo v5, "server response ext is null or empty"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateRpcDataOfFriend()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->isbHasRedHot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v2

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-nez v0, :cond_2

    move v2, v3

    .line 535
    goto :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v1, "menus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move v1, v2

    .line 546
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 547
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 548
    const-string/jumbo v5, "tag"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "tag"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FRIEND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 549
    const-string/jumbo v0, "ext_showRedHot"

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->isbHasRedHot()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->getFriendImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 551
    const-string/jumbo v0, "ext_imageUrlNew"

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->friendSync:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->getFriendImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    move v2, v3

    .line 555
    goto/16 :goto_0

    .line 552
    :cond_4
    const-string/jumbo v0, "ext_imageUrlNew"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    const-string/jumbo v0, "ext_imageUrlNew"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 546
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;->unregisterBroadcast(Landroid/content/Context;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citySelectBiz:Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/CitySelectBiz;->destroy()V

    .line 924
    :cond_1
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "getIndicator begin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->o2o_tab_bar_view:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 189
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 189
    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v2

    .line 191
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->tab_flag:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 192
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    const-string/jumbo v3, "o2ohomeTab"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 198
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->tab_description:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 197
    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 199
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->o2o_tab_name:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 201
    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->tab_bar_o2o:I

    .line 200
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    .line 203
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 202
    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    invoke-virtual {v1, v5, v2, v5, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initLocationMgr()V

    .line 209
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->curAdCodeMgr:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    if-nez v1, :cond_0

    .line 210
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->getInstance()Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->curAdCodeMgr:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->curAdCodeMgr:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->setContext(Landroid/app/Activity;)V

    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    const-string/jumbo v3, "getIndicator end"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-object v0
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
    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 697
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

    .line 698
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

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

    .line 699
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v1, p1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->templateId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->searchListTemplateId:Ljava/lang/String;

    .line 703
    :cond_0
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 235
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->lastLoginId:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    .line 275
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->monitorHelper:Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->startMainLink()V

    .line 242
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initHomePageView()V

    .line 243
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initPullRefreshView()V

    .line 248
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 264
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 269
    const-wide/16 v2, 0x1388

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method isCurrentActivityShow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1066
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1067
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    if-eq v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 1081
    :goto_0
    return v0

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    const v2, 0x1020012

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 1073
    if-eqz v0, :cond_2

    .line 1074
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1081
    goto :goto_0
.end method

.method public onFailed(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 5

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    .line 1158
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->getResponse()Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 1159
    if-eqz v0, :cond_0

    .line 1161
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RPC result failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->desc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->monitorHelper:Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->cancelMainLink()V

    .line 1165
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isCurrentActivityShow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1191
    :cond_1
    :goto_0
    return-void

    .line 1169
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->initRpcErrorRemind()V

    .line 1170
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1172
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$15;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$15;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 1179
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isHomePageHasContent()Z

    move-result v1

    .line 1180
    if-nez v1, :cond_3

    .line 1181
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setEnablePull(Z)V

    .line 1184
    :cond_3
    iget v2, p2, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->code:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1185
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->showNetworkErrorTip(ZLandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1187
    :cond_4
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcErrorRemind:Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;

    iget-object v3, p2, Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;->Str:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/RpcErrorRemind;->showEmptyView(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onFoodCategoryDataChange(Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;)V
    .locals 4

    .prologue
    .line 565
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->getBizData()Lcom/alipay/android/phone/discovery/o2ohome/model/FoodCategorySyncData;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FRIEND"

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Sync: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/model/CategorySyncData;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 845
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 877
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_0

    .line 879
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->badgeView:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 882
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResume, curLoginId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->lastLoginId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 889
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->switchUser()V

    .line 891
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getSelectAdCode()Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 893
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->switchLoginUser()V

    .line 894
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResume, use select city. adCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_1
    :goto_0
    return-void

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateAnnouncement(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->updateAdvertisement(Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "O2oWidgetGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResume, lastLoginId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->lastLoginId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->lastLoginId:Ljava/lang/String;

    .line 906
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->switchUser()V

    .line 907
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->switchLoginUser()V

    goto :goto_0
.end method

.method public onReturn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 849
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "onReturn"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;->getFromBackFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->backActivateReceiver:Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/BackActivateReceiver;->setFromBackFlag(Z)V

    .line 862
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->isNeedRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateAnnouncement(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->updateAdvertisement(Ljava/lang/String;)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;Z)V

    .line 871
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "onReturn HomeRpcExcutor.start()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor;Lcom/alipay/android/phone/o2o/o2ocommon/mobilecsa/network/BaseExecutor$Info;)V
    .locals 3

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->rpcModel:Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/mobilecsa/HomePageRpcModel;->getResponse()Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 1101
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    if-nez v1, :cond_0

    .line 1102
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-direct {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    .line 1104
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setRpcData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 1105
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->setPollTimeMillis()V

    .line 1106
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateRpcDataOfFriend()Z

    .line 1109
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityOpen:Z

    if-eqz v1, :cond_2

    .line 1110
    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    if-eqz v1, :cond_1

    .line 1111
    iget-object v1, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    if-eqz v1, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->advertisement:Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;

    iget-object v2, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/Advertisement;->updateAdvertisement(Ljava/lang/String;)V

    .line 1123
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$13;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$13;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1132
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1152
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadHomeCacheMgr:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->asyncSaveCacheData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V

    .line 1153
    return-void

    .line 1118
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V

    .line 1119
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->showCityRemindView()V

    goto :goto_0
.end method

.method public pullRefreshFinished()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    .line 484
    :cond_1
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;

    .line 170
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->mId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public updateHeaderAndFooter(Z)V
    .locals 2

    .prologue
    .line 739
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 741
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->listViewFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 748
    :cond_0
    return-void

    .line 739
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
