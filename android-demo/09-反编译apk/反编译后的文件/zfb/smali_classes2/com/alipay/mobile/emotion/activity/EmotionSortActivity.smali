.class public Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "EmotionSortActivity.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;


# instance fields
.field private final DropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

.field private isDragChanged:Z

.field private mDragSortAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;

.field private mDragSortListView:Lcom/alipay/mobile/emotion/drag/DragSortListView;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->isDragChanged:Z

    .line 101
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->DropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    .line 25
    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mDragSortAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->isDragChanged:Z

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->updateEmoiPkgOrder()V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mEmoiPackageModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mEmoiPackageModelList:Ljava/util/List;

    return-object v0
.end method

.method private updateEmoiPkgOrder()V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->isDragChanged:Z

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->isDragChanged:Z

    .line 97
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->setEmoiPackageModelList(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public OnChange(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$3;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
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

.method initContent()V
    .locals 2

    .prologue
    .line 54
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 55
    sget v1, Lcom/alipay/android/phone/emotion/R$string;->complete:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method initListView()V
    .locals 3

    .prologue
    .line 70
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->dslv_emoi_sort_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/drag/DragSortListView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mDragSortListView:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPackageModelList()Ljava/util/List;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 75
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mDragSortAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;

    .line 77
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->dslv_emoi_sort_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/drag/DragSortListView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mDragSortListView:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mDragSortListView:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mDragSortAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionSortAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mDragSortListView:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->DropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setDropListener(Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;)V

    .line 81
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 84
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->mDragSortListView:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/alipay/android/phone/emotion/R$layout;->emotion_sort_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->initContent()V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionSortActivity;->initListView()V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->registerListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->unRegisterListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 49
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 50
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
