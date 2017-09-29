.class public Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "EmotionManagerActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "emotion_manager_activity"
.end annotation


# instance fields
.field private headerView:Landroid/view/View;

.field private final listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

.field protected mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field private mEmoiPackageModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEmotionManagerAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

.field protected mListView:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "listview"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 162
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    .line 35
    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPackageModelList()Ljava/util/List;

    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 140
    return-void
.end method

.method private initListView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPackageModelList()Ljava/util/List;

    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 104
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmotionManagerAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_manager_list_header:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->headerView:Landroid/view/View;

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 109
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->showHeader()V

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_manager_list_footer:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;)V

    .line 112
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->tv_custom_emotion:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 113
    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$3;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->tv_download_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 121
    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$4;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmotionManagerAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 133
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 135
    return-void
.end method

.method private showHeader()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->headerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->headerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->headerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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

.method protected init()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->initContent()V

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->initData()V

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->initListView()V

    .line 54
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->registerListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 55
    return-void
.end method

.method protected initContent()V
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->sort:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    .line 62
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v1

    .line 62
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->setCustomEmotionModelVOList(Ljava/util/List;Z)V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->unRegisterListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 69
    return-void
.end method

.method protected refreshListView()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPackageModelList()Ljava/util/List;

    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmotionManagerAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->setList(Ljava/util/List;)V

    .line 147
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->showHeader()V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionManagerActivity;->mEmotionManagerAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionManagerAdapter;->notifyDataSetChanged()V

    .line 149
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
