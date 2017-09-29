.class public Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "emotion_custom_list_activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/app/ui/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;"
    }
.end annotation


# static fields
.field private static final COLUMN_NUM:I = 0x5

.field public static isForceStop:Z


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private isAnimRunning:Z

.field private isCancel:Z

.field private isForceSyn:Z

.field private isInit:Z

.field private isSelectMode:Z

.field protected mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field private mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

.field protected mDelBtn:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_del"
    .end annotation
.end field

.field protected mDelLayout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "layout_del"
    .end annotation
.end field

.field protected mGridView:Lcom/alipay/mobile/emotion/view/NoScrollGridView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_gird"
    .end annotation
.end field

.field private mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

.field private final mNetworkListener:Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;

.field protected mNetworkStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_network_status"
    .end annotation
.end field

.field protected mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "scroll_view"
    .end annotation
.end field

.field protected mStopBtn:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_stop"
    .end annotation
.end field

.field protected mSyncBtn:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_sync"
    .end annotation
.end field

.field protected mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "layout_sync"
    .end annotation
.end field

.field protected mSyncStatusIV:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "icon_sync_status"
    .end annotation
.end field

.field protected mSyncStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_sync_status"
    .end annotation
.end field

.field protected mTotalNumTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_total_num"
    .end annotation
.end field

.field private photoService:Lcom/alipay/mobile/beehive/service/PhotoService;

.field private rotateAnimation:Landroid/view/animation/Animation;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 124
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mNetworkListener:Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;

    .line 73
    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->hideSelectMode()V

    return-void
.end method

.method static synthetic access$11(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->showSelectMode()V

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->refreshDelBtn()V

    return-void
.end method

.method static synthetic access$13(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->refreshSyncStatusView(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$14(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->runStatusAnim()V

    return-void
.end method

.method static synthetic access$15(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isAnimRunning:Z

    return v0
.end method

.method static synthetic access$16(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->stopStatusAnim()V

    return-void
.end method

.method static synthetic access$17(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isCancel:Z

    return-void
.end method

.method static synthetic access$18(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->runBatchDelRpc(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$19(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isForceSyn:Z

    return-void
.end method

.method static synthetic access$20(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->syn()V

    return-void
.end method

.method static synthetic access$21(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$22(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->uploadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    return-void
.end method

.method static synthetic access$23(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->uploadImage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    return-void
.end method

.method static synthetic access$24(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->copyFileAndSyncToServer(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->showNetworkStatus()V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->startSync()V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isCancel:Z

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->stopSync()V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isForceSyn:Z

    return v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    return v0
.end method

.method private copyFileAndSyncToServer(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 3

    .prologue
    .line 683
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 684
    invoke-static {v1, v2}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 683
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isAddDelModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->runAddRpc(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getOnePhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 534
    const-string/jumbo v1, "enableCamera"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 536
    const-string/jumbo v1, "enablePreview"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 538
    const-string/jumbo v1, "enableBucket"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 540
    const-string/jumbo v1, "enableSelectOrigin"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 542
    const-string/jumbo v1, "previewButton"

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->preview:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string/jumbo v1, "finishText"

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->use:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v1, "fullscreenPreview"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 548
    const-string/jumbo v1, "maxSelect"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    const-string/jumbo v1, "enablePinch"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 551
    const-string/jumbo v1, "onlyPreviewSelect"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 552
    const-string/jumbo v1, "selectGif"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 554
    const-string/jumbo v1, "imgW"

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p0, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    const-string/jumbo v1, "imgH"

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {p0, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    const-string/jumbo v1, "maxSelectMsg"

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->max_select_num:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->photoService:Lcom/alipay/mobile/beehive/service/PhotoService;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/mobile/beehive/service/PhotoService;->selectPhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoSelectListener;)V

    .line 620
    return-void
.end method

.method private hideSelectMode()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->edit:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mDelLayout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 422
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->clearTempDelList()V

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->setSelectMode(Z)V

    .line 424
    return-void
.end method

.method private initDelLayout()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mDelBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$7;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    return-void
.end method

.method private initMessageHandler()V
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->getInstance()Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "sync_start"

    .line 184
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$3;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 200
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "sync_progress"

    .line 201
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$4;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 219
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "sync_finish"

    .line 220
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "sync_cancel"

    .line 238
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$6;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 251
    return-void
.end method

.method private initService()V
    .locals 2

    .prologue
    .line 483
    .line 484
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 485
    const-class v1, Lcom/alipay/mobile/beehive/service/PhotoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoService;

    .line 483
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->photoService:Lcom/alipay/mobile/beehive/service/PhotoService;

    .line 487
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 489
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 486
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 491
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 493
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 490
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 494
    return-void
.end method

.method private initSyncLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    sget v0, Lcom/alipay/android/phone/emotion/R$anim;->refresh_rotate:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->rotateAnimation:Landroid/view/animation/Animation;

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncStatusIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mStopBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$8;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$9;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getSyncTask()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isFinish:Z

    if-nez v1, :cond_0

    .line 346
    invoke-static {v3}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->runSyncTask(Z)V

    .line 361
    :goto_0
    return-void

    .line 347
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isFinish:Z

    if-nez v1, :cond_2

    .line 348
    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isCancel()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isCancel:Z

    .line 351
    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isCancel:Z

    if-nez v1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->runStatusAnim()V

    .line 356
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->getListSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->getCuurIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->refreshSyncStatusView(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->stopStatusAnim()V

    goto :goto_1

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshDelBtn()V
    .locals 4

    .prologue
    .line 521
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getTempDelEmotionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 522
    if-lez v0, :cond_0

    .line 523
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mDelBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/android/phone/emotion/R$string;->delete:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mDelBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 529
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mDelBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->delete:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mDelBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSyncStatusView(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 266
    :cond_0
    const-string/jumbo v0, "total_count"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 268
    const-string/jumbo v1, "curr_index"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object p3, v1

    move-object p2, v0

    .line 270
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->sync_tip:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isCancel:Z

    if-nez v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mStopBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isCancel:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isFinish:Z

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 284
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->showNetworkStatus()V

    .line 285
    return-void

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->sync_tip:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mStopBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->stop_sync:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    goto :goto_1

    :cond_4
    move v0, v3

    .line 283
    goto :goto_2
.end method

.method private runAddRpc(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 696
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;

    .line 697
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 696
    invoke-direct {v0, p0, p0, v1, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 718
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    .line 719
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    .line 720
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 721
    return-void
.end method

.method private runBatchDelRpc(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 427
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 428
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->hideSelectMode()V

    .line 437
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->updateGridView()V

    .line 438
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$12;

    .line 439
    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    .line 438
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$12;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    .line 460
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    .line 461
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    .line 462
    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 463
    return-void

    .line 428
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 429
    iget-object v2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    iget-object v2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->moveBuildOrAddToDel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    goto :goto_0

    .line 433
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->removeFormAddList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    goto :goto_0
.end method

.method private runStatusAnim()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncStatusIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isAnimRunning:Z

    .line 256
    return-void
.end method

.method private showNetworkStatus()V
    .locals 2

    .prologue
    .line 288
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mNetworkStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->wifi_status:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string/jumbo v0, "none"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mNetworkStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->not_wifi_status:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mNetworkStatusTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->no_network_status:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    goto :goto_0
.end method

.method private showSelectMode()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    .line 739
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mDelLayout:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->setSelectMode(Z)V

    .line 741
    return-void
.end method

.method private startSync()V
    .locals 7

    .prologue
    .line 379
    const-string/jumbo v0, "none"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    sget v0, Lcom/alipay/android/phone/emotion/R$string;->no_network_status:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->toast(Ljava/lang/String;I)V

    .line 402
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    sget v0, Lcom/alipay/android/phone/emotion/R$string;->tips:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/alipay/android/phone/emotion/R$string;->download_tips:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/alipay/android/phone/emotion/R$string;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    new-instance v4, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$10;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$10;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    .line 391
    sget v0, Lcom/alipay/android/phone/emotion/R$string;->comfirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$11;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$11;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    move-object v0, p0

    .line 384
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->syn()V

    goto :goto_0
.end method

.method private stopStatusAnim()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncStatusIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->clearAnimation()V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isAnimRunning:Z

    .line 261
    return-void
.end method

.method private stopSync()V
    .locals 3

    .prologue
    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isCancel:Z

    .line 750
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getSyncTask()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    move-result-object v0

    .line 751
    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cancel()V

    .line 753
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->getListSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->getCuurIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->refreshSyncStatusView(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 757
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->stopStatusAnim()V

    .line 758
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private syn()V
    .locals 3

    .prologue
    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isCancel:Z

    .line 406
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getSyncTask()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_1

    .line 408
    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isForceSyn:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->continueTask(Z)V

    .line 412
    :goto_0
    if-eqz v0, :cond_0

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->getListSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->getCuurIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->refreshSyncStatusView(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 414
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->runStatusAnim()V

    .line 416
    :cond_0
    return-void

    .line 410
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isForceSyn:Z

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->runSyncTask(Z)V

    goto :goto_0
.end method

.method private uploadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$14;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$14;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->upLoad(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 646
    return-void
.end method

.method private uploadImage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 679
    return-void
.end method


# virtual methods
.method public OnChange(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 0

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->updateGridView()V

    .line 746
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
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 145
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->initService()V

    .line 146
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->width:I

    .line 147
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    iget v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->width:I

    iget v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->width:I

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;-><init>(Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    .line 148
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->data:Ljava/util/List;

    .line 149
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->registerListener(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->setList(Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mGridView:Lcom/alipay/mobile/emotion/view/NoScrollGridView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/view/NoScrollGridView;->setNumColumns(I)V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mGridView:Lcom/alipay/mobile/emotion/view/NoScrollGridView;

    iget v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->width:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/view/NoScrollGridView;->setColumnWidth(I)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mGridView:Lcom/alipay/mobile/emotion/view/NoScrollGridView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mGridView:Lcom/alipay/mobile/emotion/view/NoScrollGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/view/NoScrollGridView;->setFocusable(Z)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mGridView:Lcom/alipay/mobile/emotion/view/NoScrollGridView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/view/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->edit:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->initDelLayout()V

    .line 173
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->initSyncLayout()V

    .line 174
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->initMessageHandler()V

    .line 175
    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mNetworkListener:Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->addListener(Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;)V

    .line 176
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 467
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    .line 468
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 469
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    .line 470
    const/4 v2, 0x0

    .line 469
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v1

    .line 470
    const/4 v2, 0x1

    .line 468
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->setCustomEmotionModelVOList(Ljava/util/List;Z)V

    .line 471
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 475
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 476
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->unRegisterListener(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;)V

    .line 477
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->clearTempDelList()V

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->unregistByCategory(Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mNetworkListener:Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->removeListener(Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;)V

    .line 480
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->getItem(I)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v1

    .line 499
    if-nez v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const-string/jumbo v0, "add"

    iget-object v2, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getOnePhoto()V

    .line 505
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    if-eqz v0, :cond_0

    .line 506
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->icon_select:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 507
    if-eqz v0, :cond_0

    .line 508
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isTempDelModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 509
    sget v2, Lcom/alipay/android/phone/emotion/R$drawable;->icon_select:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 510
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->removeFormTempDelList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 515
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->refreshDelBtn()V

    goto :goto_0

    .line 512
    :cond_3
    sget v2, Lcom/alipay/android/phone/emotion/R$drawable;->icon_selected:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 513
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addToTempDelList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isInit:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->smoothScrollTo(II)V

    .line 369
    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isInit:Z

    .line 371
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getSyncTask()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isFinish:Z

    if-eqz v0, :cond_2

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 376
    :cond_2
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

.method protected updateGridView()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 725
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v3

    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->data:Ljava/util/List;

    .line 726
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->width:I

    .line 727
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    iget v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->width:I

    iget v4, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->width:I

    invoke-direct {v0, p0, v3, v4}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;-><init>(Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->setList(Ljava/util/List;)V

    .line 729
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    iget-boolean v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->setSelectMode(Z)V

    .line 730
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mGridView:Lcom/alipay/mobile/emotion/view/NoScrollGridView;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/emotion/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 731
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isSelectMode:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mTotalNumTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v3, Lcom/alipay/android/phone/emotion/R$string;->total_count:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 725
    goto :goto_0
.end method
