.class public Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "EmotionPreviewActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "emotion_preview_activity"
.end annotation


# instance fields
.field private emotionHeight:I

.field private emotionId:Ljava/lang/String;

.field private emotionWidth:I

.field private fid:Ljava/lang/String;

.field private fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private hasGif:Z

.field private imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

.field protected mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_emoi"
    .end annotation
.end field

.field protected mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gif_view"
    .end annotation
.end field

.field protected mIconIV:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "img_emoi_icon"
    .end annotation
.end field

.field protected mLine:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "line"
    .end annotation
.end field

.field protected mNameTV:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "emoi_package_name"
    .end annotation
.end field

.field private packageId:Ljava/lang/String;

.field protected packageInfoLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "ll_packageInfo"
    .end annotation
.end field

.field private popMenu:Lcom/alipay/mobile/commonui/widget/APPopMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->hasGif:Z

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->fid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Lcom/alipay/mobile/commonui/widget/APPopMenu;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->popMenu:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->gotoDetail(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method private downloadFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 301
    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setType(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$6;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$6;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 335
    return-void
.end method

.method private gotoDetail(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 256
    const-string/jumbo v1, "toEmotionDetailID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 258
    const-class v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 259
    return-void
.end method

.method private initParam()V
    .locals 4

    .prologue
    const/high16 v3, 0x42f00000    # 120.0f

    .line 352
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "packageId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "emotionId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionId:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "fid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->fid:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "hasGif"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->hasGif:Z

    .line 362
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "emotionWidth"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "emotionHeight"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionWidth:I

    .line 366
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionHeight:I

    .line 371
    :goto_1
    return-void

    .line 359
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->hasGif:Z

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionWidth:I

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionHeight:I

    goto :goto_1
.end method

.method private renderByFid()V
    .locals 5

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->hasGif:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->fid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->downloadFile(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->fid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    iget v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionWidth:I

    iget v4, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0
.end method

.method private renderCharletEmotion()V
    .locals 5

    .prologue
    .line 122
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmotionModelVO(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 123
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->hasGif:Z

    if-eqz v0, :cond_0

    .line 124
    iget v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionWidth:I

    iget v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionHeight:I

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->setGifImageViewSize(II)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    iget-boolean v1, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->loadGifByFile(Ljava/io/File;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->runRpc(Ljava/lang/String;)V

    .line 137
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    iget v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionWidth:I

    iget v4, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionHeight:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->renderByFid()V

    goto :goto_0
.end method

.method private renderCustomEmotion()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getCustomEmotion(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 154
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionWidth:I

    iget v5, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionHeight:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;->load(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZII)V

    .line 159
    :goto_0
    new-instance v1, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->forward:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->add_emotion:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->popMenu:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->popMenu:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_more_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 199
    return-void

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->renderByFid()V

    goto :goto_0
.end method

.method private renderPackageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageInfoLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mLine:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mIconIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mNameTV:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    const-string/jumbo v1, "0.00"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/alipay/android/phone/emotion/R$string;->free:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 349
    return-void
.end method

.method private runRpc(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 262
    invoke-direct {v0, p0, p0, v1, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    .line 286
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    .line 287
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method private setGifImageViewSize(II)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    return-void

    .line 144
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setOnClickListener(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$4;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
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
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 98
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->initParam()V

    .line 100
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 102
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 99
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 104
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 107
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 103
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->finish()V

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageInfoLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mLine:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isCustomEmotion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->renderCustomEmotion()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->renderCharletEmotion()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStop()V

    .line 340
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->finish()V

    .line 341
    return-void
.end method

.method protected sendEmotion()V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 203
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 204
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 205
    const-string/jumbo v2, "emotionFid"

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->fid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, "packageId"

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "emotionId"

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->emotionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v2, "hasGif"

    iget-boolean v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->hasGif:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    if-eqz v2, :cond_0

    .line 210
    const-string/jumbo v2, "localPath"

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->localEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    iget-object v3, v3, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->packageId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isCustomEmotion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 214
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_1

    instance-of v3, v2, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v3, :cond_2

    .line 215
    :cond_1
    const-string/jumbo v3, "emotionWidth"

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string/jumbo v3, "emotionHeight"

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    :cond_2
    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$3;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)V

    .line 231
    const/4 v3, 0x0

    .line 219
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->shareEmotion(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V

    .line 232
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

.method protected updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->iconFid:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->price:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->renderPackageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->setOnClickListener(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 296
    :cond_0
    return-void
.end method
