.class public final Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;
.super Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;
.source "ProvinceCityListActivity_.java"

# interfaces
.implements Lorg/androidannotations/api/view/HasViews;
.implements Lorg/androidannotations/api/view/OnViewChangedListener;


# instance fields
.field private final onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;-><init>()V

    .line 28
    new-instance v0, Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-direct {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->refreshList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;IIII)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->refreshList(IIII)V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->initList()V

    return-void
.end method

.method static synthetic access$301(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->initLocalData()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->registerOnViewChangedListener(Lorg/androidannotations/api/view/OnViewChangedListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final initList()V
    .locals 4

    .prologue
    .line 102
    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$3;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 114
    return-void
.end method

.method public final initLocalData()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$4;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$4;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    .line 130
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->init_(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->replaceNotifier(Lorg/androidannotations/api/view/OnViewChangedNotifier;)Lorg/androidannotations/api/view/OnViewChangedNotifier;

    .line 36
    sget v0, Lcom/alipay/mobile/beehive/R$layout;->activity_province_city_select:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->setContentView(I)V

    .line 37
    return-void
.end method

.method public final onViewChanged(Lorg/androidannotations/api/view/HasViews;)V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/alipay/mobile/beehive/R$id;->provincecitylist_titleBar:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 64
    sget v0, Lcom/alipay/mobile/beehive/R$id;->provincecitylist_listview:I

    invoke-interface {p1, v0}, Lorg/androidannotations/api/view/HasViews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->provinceList:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->init()V

    .line 66
    return-void
.end method

.method public final refreshList(IIII)V
    .locals 7

    .prologue
    .line 86
    const-string/jumbo v6, ""

    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$2;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;IIII)V

    const-wide/16 v1, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 98
    return-void
.end method

.method public final refreshList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 70
    const-string/jumbo v7, ""

    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_$1;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {v7, v0, v1, v2}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 82
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setContentView(I)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 47
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setContentView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 59
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity_;->onViewChangedNotifier_:Lorg/androidannotations/api/view/OnViewChangedNotifier;

    invoke-virtual {v0, p0}, Lorg/androidannotations/api/view/OnViewChangedNotifier;->notifyViewChanged(Lorg/androidannotations/api/view/HasViews;)V

    .line 53
    return-void
.end method
