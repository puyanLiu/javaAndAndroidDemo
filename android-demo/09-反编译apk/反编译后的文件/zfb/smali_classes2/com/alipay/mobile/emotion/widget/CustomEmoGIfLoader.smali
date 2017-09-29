.class public Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;
.super Ljava/lang/Object;
.source "CustomEmoGIfLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;->showImage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZIILjava/lang/String;)V

    return-void
.end method

.method private static downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZII)V
    .locals 8

    .prologue
    .line 65
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    new-instance v7, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "image"

    invoke-virtual {v7, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setType(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 74
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 71
    new-instance v0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;-><init>(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZII)V

    invoke-virtual {v6, v7, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0
.end method

.method public static load(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-static {p0, p1, p2, v0, v0}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;->load(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZII)V

    .line 26
    return-void
.end method

.method public static load(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZII)V
    .locals 6

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "custom_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 32
    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;->downloadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZII)V

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 42
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;->showImage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZIILjava/lang/String;)V

    goto :goto_0
.end method

.method private static showImage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZIILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    if-nez v0, :cond_3

    .line 49
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 51
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 52
    if-lez p3, :cond_2

    if-lez p4, :cond_2

    .line 53
    invoke-virtual {v0, p5, p1, p3, p4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    invoke-virtual {v0, p5, p1, v2, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadOriginalImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 57
    :cond_3
    instance-of v0, p1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    const-string/jumbo v1, "progress.gif"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->loadGifImageByAssetName(Ljava/lang/String;)V

    .line 59
    check-cast p1, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {p1, p5}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->loadGifByFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method
