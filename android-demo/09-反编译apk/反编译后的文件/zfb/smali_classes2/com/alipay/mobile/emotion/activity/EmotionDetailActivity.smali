.class public Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "EmotionDetailActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "emotion_detail_activity"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I


# instance fields
.field protected emoiDownloadCancel:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emoi_download_cancel"
    .end annotation
.end field

.field protected emoiDownloadProgressInfo:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emoi_download_progress_info"
    .end annotation
.end field

.field private fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected mAPProgressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emoi_download_progress"
    .end annotation
.end field

.field protected mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected mBigIconIV:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emtion_detail_big_icon"
    .end annotation
.end field

.field protected mCopyrightTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_detail_copyright"
    .end annotation
.end field

.field protected mDeclareServiceTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "declare_service"
    .end annotation
.end field

.field protected mDesciptionTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_detail_desciption"
    .end annotation
.end field

.field protected mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_detail_submit_button"
    .end annotation
.end field

.field private mEmotionDetailModelVO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field protected mForwordBtn:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_detail_forword_button"
    .end annotation
.end field

.field private mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

.field protected mNoAutoScrollView:Lcom/alipay/mobile/emotion/view/NoAutoScrollView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "scroll_view"
    .end annotation
.end field

.field protected mPackageNameTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_detail_name"
    .end annotation
.end field

.field private mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

.field private mSocialSdkChatService:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

.field protected mUseFeeTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_detail_use_fee"
    .end annotation
.end field

.field protected mUseLimitTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_detail_use_limit"
    .end annotation
.end field

.field private packageId:Ljava/lang/String;

.field protected thumbnailLayout:Lcom/alipay/mobile/commonui/widget/APFrameLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emotion_detail_thumbnail"
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus()[I
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->values()[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Cancel:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Downloading:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Error:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Init:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Saleout:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Start:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mSocialSdkChatService:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$13(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->saveCache(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->notifyDownloadStatus(Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->cancelAddPackage()V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;I)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->changeDownLoadBtnStatus(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method private cancelAddPackage()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 270
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 271
    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageFid()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->getLoadTaskStatusByCloudId(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 274
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getTaskId()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->cancelLoad(Ljava/lang/String;)V

    .line 277
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Cancel:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->notifyDownloadStatus(Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V

    .line 283
    return-void
.end method

.method private changeDownLoadBtnStatus(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mForwordBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->emoiDownloadProgressInfo:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->emoiDownloadCancel:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPProgressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 317
    packed-switch p1, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->download:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->emoiDownloadProgressInfo:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->emoiDownloadCancel:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPProgressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPProgressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setMax(I)V

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPProgressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getEmoiDownloader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 329
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mForwordBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0

    .line 336
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->saleout:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0

    .line 344
    :pswitch_4
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->download_error_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->download:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 4

    .prologue
    .line 537
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 538
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageFid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    .line 540
    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmotionRootFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setSavePath(Ljava/lang/String;)V

    .line 544
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 546
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;

    invoke-direct {v3, p0, v1, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/util/HashMap;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 602
    return-void
.end method

.method private initContent()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mForwordBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->emoiDownloadCancel:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$3;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_share_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDeclareServiceTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$5;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->detail_title:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initGridView()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->thumbnailLayout:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    .line 453
    new-instance v0, Lcom/alipay/mobile/emotion/model/PanelInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/model/PanelInfo;-><init>()V

    .line 454
    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-static {p0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    .line 455
    iget v1, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    iput v1, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnWidth:I

    .line 456
    const/4 v1, 0x4

    iput v1, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewNumColumns:I

    .line 457
    new-instance v1, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;-><init>(Landroid/content/Context;)V

    .line 458
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mNoAutoScrollView:Lcom/alipay/mobile/emotion/view/NoAutoScrollView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->setInterceptableView(Lcom/alipay/mobile/emotion/widget/Interceptable;)V

    .line 459
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionDetailModelVO:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->setEmotionItems(Ljava/util/List;)V

    .line 460
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->setShowShortCut(Z)V

    .line 461
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->initEmotionPanel(Lcom/alipay/mobile/emotion/model/PanelInfo;)V

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->thumbnailLayout:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    .line 463
    return-void
.end method

.method private initMessageHandler()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->getInstance()Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "dwd:progressupdate"

    .line 366
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$8;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 389
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "com.alipay.emotion.message.install"

    .line 390
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$9;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 407
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 408
    const-string/jumbo v2, "com.alipay.emotion.message.cancel.download"

    .line 409
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$10;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 431
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "emotion:download:error"

    .line 432
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$11;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$11;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    goto :goto_0
.end method

.method private initParam()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "packageId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "toEmotionDetailID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 162
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 164
    return-void
.end method

.method private initService()V
    .locals 2

    .prologue
    .line 167
    .line 168
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 170
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 167
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 171
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 173
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 171
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mSocialSdkChatService:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 175
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 178
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 174
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 179
    return-void
.end method

.method private loadCache()Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;
    .locals 4

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "cache_emotion_detail"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$7;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$7;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 294
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    return-object v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private notifyDownloadStatus(Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V
    .locals 3

    .prologue
    .line 672
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyDownloadStatus,status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",packageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-static {}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus()[I

    move-result-object v1

    .line 676
    invoke-virtual {p2}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 688
    :goto_0
    :pswitch_0
    return-void

    .line 678
    :pswitch_1
    const-string/jumbo v1, "packageId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v1, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 680
    const-string/jumbo v2, "com.alipay.emotion.message.cancel.download"

    .line 679
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 681
    invoke-static {v1}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    goto :goto_0

    .line 684
    :pswitch_2
    const-string/jumbo v1, "packageId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v1, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 686
    const-string/jumbo v2, "com.alipay.emotion.message.install"

    .line 685
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 687
    invoke-static {v1}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private renderDownLoadBtn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->hasEmotionPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->changeDownLoadBtnStatus(I)V

    .line 527
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 519
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->isContainEmoiDownload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->changeDownLoadBtnStatus(I)V

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 523
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->changeDownLoadBtnStatus(I)V

    goto :goto_0

    .line 525
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->changeDownLoadBtnStatus(I)V

    goto :goto_0
.end method

.method private runRpc(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;

    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 466
    invoke-direct {v0, p0, p0, v1, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 488
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    .line 489
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    .line 490
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method private saveCache(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cache_emotion_detail"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/CacheHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method private showAlertDialog()V
    .locals 7

    .prologue
    .line 258
    const-string/jumbo v1, ""

    sget v0, Lcom/alipay/android/phone/emotion/R$string;->cancel_download:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/alipay/android/phone/emotion/R$string;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 259
    sget v0, Lcom/alipay/android/phone/emotion/R$string;->comfirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    new-instance v6, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$6;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$6;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    move-object v0, p0

    .line 258
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 267
    return-void
.end method

.method private unregisterMessageHandler()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->unregistByCategory(Ljava/lang/String;)V

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
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->initParam()V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->initContent()V

    .line 136
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->initService()V

    .line 137
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->loadCache()Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->updateListViewByBriefVO(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->packageId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->runRpc(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->initMessageHandler()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 150
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->unregisterMessageHandler()V

    .line 151
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

.method protected updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 495
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->emotionPackageDetailVOs:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    if-nez v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->emotionPackageDetailVOs:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mPackageNameTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v1, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mUseFeeTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v0, "0.00"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->price:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/alipay/android/phone/emotion/R$string;->free:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDesciptionTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v1, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->fullDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mUseLimitTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->live_time:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->timeLimit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mCopyrightTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->copyright:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&nbsp;&copy;&nbsp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mDeclareServiceTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v1, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->declare:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->packageId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->renderDownLoadBtn(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v1, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->bannerFid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mBigIconIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-static {p0, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 507
    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {p0, v4}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 506
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 508
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->emotionPackageDetailVOs:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->emotionPackageDetailVOs:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->emotions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->emotionPackageDetailVOs:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->emotions:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mEmotionDetailModelVO:Ljava/util/List;

    .line 511
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->initGridView()V

    goto/16 :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mResult:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->price:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected updateListViewByBriefVO(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mPackageNameTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mUseLimitTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->no_live_time:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->renderDownLoadBtn(Ljava/lang/String;)V

    .line 534
    return-void
.end method
