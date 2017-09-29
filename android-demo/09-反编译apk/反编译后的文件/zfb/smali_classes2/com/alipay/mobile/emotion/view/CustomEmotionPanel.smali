.class public Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;
.super Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;
.source "CustomEmotionPanel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/emotion/view/AbsEmotionPanel",
        "<",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ChartletEmotionPanel"


# instance fields
.field private fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private isShowShortCut:Z

.field private mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

.field private mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

.field private mEmotionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemPressingListener:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

.field private mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mEmotionItems:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->isShowShortCut:Z

    .line 90
    new-instance v0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;-><init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 251
    new-instance v0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;-><init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnItemPressingListener:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mEmotionItems:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->isShowShortCut:Z

    .line 90
    new-instance v0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;-><init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 251
    new-instance v0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;-><init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnItemPressingListener:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    .line 57
    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mEmotionItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;I)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->initChatletEmotionTips(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method

.method private downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 182
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setSavePath(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setType(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    new-instance v2, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$3;-><init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 218
    return-void
.end method

.method private getItemView(IILandroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Z)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    if-nez p3, :cond_0

    .line 144
    new-instance p3, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    move-object v0, p3

    .line 149
    :goto_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 150
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v2, Lcom/alipay/android/phone/emotion/R$layout;->emotion_panel:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    :goto_1
    return-object p3

    :cond_0
    move-object v0, p3

    .line 147
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    goto :goto_0

    .line 155
    :cond_1
    if-nez p4, :cond_2

    .line 156
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 175
    :goto_2
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    :cond_2
    iget v1, p4, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->resourceId:I

    if-eqz v1, :cond_3

    .line 159
    iget v1, p4, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->resourceId:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_2

    .line 160
    :cond_3
    iget-boolean v1, p4, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    if-eqz v1, :cond_4

    .line 161
    const/4 v1, 0x1

    invoke-static {p4, v0, v1}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;->load(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;Z)V

    goto :goto_2

    .line 164
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v2, p4, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 163
    invoke-static {v1, v2}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 167
    iget-object v2, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0, v3, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadOriginalImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_2

    .line 168
    :cond_5
    iget-object v2, p4, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1, v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 171
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v2, p4, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadOriginalImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_2
.end method

.method private initChatletEmotionTips(I)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    .line 246
    :cond_0
    if-lez p1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mChatletEmotionTips:Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->initChatletEmotionTips(I)V

    .line 249
    :cond_1
    return-void
.end method


# virtual methods
.method protected getChangeBGHandler()Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$4;-><init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    return-object v0
.end method

.method protected getEmotionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mEmotionItems:Ljava/util/List;

    return-object v0
.end method

.method protected getGridItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method protected getGridItemView(IIILandroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Landroid/view/View;
    .locals 7

    .prologue
    .line 137
    sget-object v5, Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;->B:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getItemView(IILandroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getGridItemView(IIILandroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1
    move-object v5, p5

    check-cast v5, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getGridItemView(IIILandroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getGridViewColumnHeight()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget v0, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnHeight:I

    return v0
.end method

.method protected getGridViewColumnWidth()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget v0, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewColumnWidth:I

    return v0
.end method

.method protected getGridViewMargin()I
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected getGridViewNumColumns()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    iget v0, v0, Lcom/alipay/mobile/emotion/model/PanelInfo;->mGridViewNumColumns:I

    return v0
.end method

.method protected getGridViewVerticalSpacing()I
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected getOnItemPressingListener()Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnItemPressingListener:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    return-object v0
.end method

.method protected hasLongPressing()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public initEmotionPanel(Lcom/alipay/mobile/emotion/model/PanelInfo;)V
    .locals 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mPanelInfo:Lcom/alipay/mobile/emotion/model/PanelInfo;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 73
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 70
    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 75
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 77
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 74
    iput-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->initView(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public isShowShortCut()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->isShowShortCut:Z

    return v0
.end method

.method public setEmotionItems(Ljava/util/List;)V
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
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mEmotionItems:Ljava/util/List;

    .line 83
    return-void
.end method

.method public setShowShortCut(Z)V
    .locals 0

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->isShowShortCut:Z

    .line 322
    return-void
.end method
