.class Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;
.super Ljava/lang/Object;
.source "EmoiLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private downloadType:I

.field private final imageView:Landroid/widget/ImageView;

.field private final mEmoiDetailModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

.field private final mFaceSize:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;


# direct methods
.method public constructor <init>(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->mEmoiDetailModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 72
    iput-object p2, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->mFaceSize:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;

    .line 73
    iput-object p3, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->imageView:Landroid/widget/ImageView;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Z)V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 146
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setType(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->access$2()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;-><init>(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;ZLcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 205
    return-void
.end method

.method private loadEmoiWithBlock(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 99
    .line 100
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;->Gif:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;

    if-ne p2, v1, :cond_2

    .line 101
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 102
    const/4 v2, 0x2

    iput v2, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->downloadType:I

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Z)V

    .line 140
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    iget-boolean v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    if-eqz v1, :cond_5

    .line 110
    const/4 v1, 0x3

    :try_start_0
    iput v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->downloadType:I

    .line 111
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getTempPath(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_3
    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    new-instance v3, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v3, v2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/io/File;)V

    .line 118
    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 119
    invoke-static {p1, v3}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getBitmapFromGif(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lpl/droidsonroids/gif/GifDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 120
    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    .line 121
    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    const-class v1, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getCurrentFrame error"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_5
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 133
    iput v3, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->downloadType:I

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 135
    invoke-static {}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->access$1()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 137
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showEmoiLoadResult(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->downloadType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->access$1()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, p1, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->access$1()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, p1, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 219
    :pswitch_2
    check-cast p2, Ljava/io/File;

    .line 220
    instance-of v0, p1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    if-eqz v0, :cond_0

    .line 221
    check-cast p1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->loadGifByFile(Ljava/io/File;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->showEmoiLoadResult(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_panel:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 96
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->mEmoiDetailModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->mFaceSize:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;

    .line 80
    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;->B:Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;

    .line 83
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->loadEmoiWithBlock(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->access$0()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$1;-><init>(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method
