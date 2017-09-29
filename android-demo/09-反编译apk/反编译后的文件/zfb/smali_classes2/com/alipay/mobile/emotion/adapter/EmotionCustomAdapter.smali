.class public Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmotionCustomAdapter.java"


# instance fields
.field private final fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private final imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private isSelectMode:Z

.field private final mActivity:Landroid/app/Activity;

.field private mEmotionModelVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemHeight:I

.field private final mItemWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mItemWidth:I

    .line 48
    iput p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mItemHeight:I

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mActivity:Landroid/app/Activity;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 50
    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 57
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 54
    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 58
    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method

.method private downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 139
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setSavePath(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setType(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    new-instance v2, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 175
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mEmotionModelVOList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mEmotionModelVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mEmotionModelVOList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mEmotionModelVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mEmotionModelVOList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->getItem(I)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 83
    if-nez p2, :cond_0

    .line 85
    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    sget v2, Lcom/alipay/android/phone/emotion/R$layout;->emotion_custom_item:I

    .line 86
    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 88
    iput-object v0, v1, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->contentImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 91
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->icon_select:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 90
    iput-object v0, v1, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->iconSelectIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 97
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->getItem(I)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v1

    .line 99
    if-nez v1, :cond_1

    .line 100
    iget-object v2, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->contentImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 117
    :goto_1
    iget-boolean v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->isSelectMode:Z

    if-eqz v2, :cond_7

    .line 118
    iget-object v2, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->iconSelectIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isTempDelModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    iget-object v0, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->iconSelectIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_selected:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 127
    :goto_2
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mItemWidth:I

    iget v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mItemHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-object p2

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;

    .line 95
    iget-object v1, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->contentImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 101
    :cond_1
    const-string/jumbo v2, "add"

    iget-object v3, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->contentImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/android/phone/emotion/R$drawable;->icon_add:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_1

    .line 103
    :cond_2
    iget-object v2, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v3, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->contentImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_1

    .line 105
    :cond_3
    iget-boolean v2, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    if-eqz v2, :cond_4

    .line 106
    iget-object v2, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->contentImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;->load(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;Z)V

    goto :goto_1

    .line 109
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "custom_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v3, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    iget-object v3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->contentImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3, v2, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_1

    .line 114
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->contentImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 122
    :cond_6
    iget-object v0, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->iconSelectIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_select:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 125
    :cond_7
    iget-object v0, v0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$ViewHolder;->iconSelectIV:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public isSelectMode()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->isSelectMode:Z

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
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
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->mEmotionModelVOList:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setSelectMode(Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->isSelectMode:Z

    .line 183
    return-void
.end method
