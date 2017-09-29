.class public final Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;
.super Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;
.source "SelectCityActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;-><init>()V

    .line 34
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->initView()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->updatDatas(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->loadCitys()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final initView()V
    .locals 4

    .prologue
    .line 80
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$1;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 92
    return-void
.end method

.method public final loadCitys()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$3;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$3;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 124
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->init_(Landroid/os/Bundle;)V

    .line 40
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 42
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->activty_city_select:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->setContentView(I)V

    .line 43
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/alipay/mobile/beehive/R$id;->search_no_result:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 70
    sget v0, Lcom/alipay/mobile/beehive/R$id;->search_bar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSearchBar;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    .line 71
    sget v0, Lcom/alipay/mobile/beehive/R$id;->location_city_layout:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 72
    sget v0, Lcom/alipay/mobile/beehive/R$id;->section_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->mSectionListView:Lcom/alipay/mobile/beehive/cityselect/view/CityBladeView;

    .line 73
    sget v0, Lcom/alipay/mobile/beehive/R$id;->titleBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 74
    sget v0, Lcom/alipay/mobile/beehive/R$id;->city_list:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->mCityListView:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    .line 75
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->init()V

    .line 76
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->setContentView(I)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 53
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 65
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 59
    return-void
.end method

.method public final updatDatas(Ljava/util/List;Ljava/util/List;)V
    .locals 4
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
    .line 96
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_$2;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/SelectCityActivity_;Ljava/util/List;Ljava/util/List;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 108
    return-void
.end method
