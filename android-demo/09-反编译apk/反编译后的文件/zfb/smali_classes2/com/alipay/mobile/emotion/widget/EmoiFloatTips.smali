.class public Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;
.super Lcom/alipay/mobile/commonui/widget/APPopupWindow;
.source "EmoiFloatTips.java"


# instance fields
.field private final gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

.field private final halfScreenWidth:I

.field private final mContext:Landroid/content/Context;

.field private mEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

.field private mHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mContext:Landroid/content/Context;

    .line 38
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mHeight:I

    .line 39
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mHeight:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setWidth(I)V

    .line 40
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mHeight:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setHeight(I)V

    .line 41
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setTouchable(Z)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setOutsideTouchable(Z)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->chat_emotion_tips:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->halfScreenWidth:I

    .line 47
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->gif_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    .line 48
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->stop()V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->dismiss()V

    .line 126
    return-void
.end method

.method public getEmotionModelVO()Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    return-object v0
.end method

.method public initChatletEmotionTips(I)V
    .locals 0

    .prologue
    .line 51
    if-lez p1, :cond_0

    .line 52
    iput p1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mHeight:I

    .line 54
    :cond_0
    return-void
.end method

.method public setEmoiTips(I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setImageResource(I)V

    .line 70
    return-void
.end method

.method public setEmoiTips(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 3

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mEmotionModelVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 58
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;->B:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;

    .line 59
    iget-boolean v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    if-eqz v1, :cond_0

    .line 60
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;->Gif:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    const-string/jumbo v2, "progress.gif"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->loadGifImageByAssetName(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->execute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Landroid/widget/ImageView;)V

    .line 64
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mHeight:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setWidth(I)V

    .line 65
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mHeight:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setHeight(I)V

    .line 66
    return-void
.end method

.method public setEmoiTips(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Z)V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "custom_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0, p1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p4, :cond_2

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    const-string/jumbo v2, "progress.gif"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->loadGifImageByAssetName(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->loadGifByFile(Ljava/io/File;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->gifImageView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0
.end method

.method public show(Landroid/view/View;II)V
    .locals 5

    .prologue
    .line 92
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 95
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 99
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->halfScreenWidth:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 101
    :goto_0
    if-eqz v0, :cond_2

    .line 103
    const/16 v0, 0x53

    .line 110
    :goto_1
    iget v2, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 111
    if-lez v2, :cond_0

    move v1, v2

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 116
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->showAtLocation(Landroid/view/View;III)V

    .line 118
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_2
    const/16 v0, 0x55

    .line 108
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1
.end method
