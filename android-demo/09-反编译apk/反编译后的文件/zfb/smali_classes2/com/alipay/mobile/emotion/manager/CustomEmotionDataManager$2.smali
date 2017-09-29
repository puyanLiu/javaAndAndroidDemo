.class Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;
.super Ljava/lang/Object;
.source "CustomEmotionDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

.field private final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$emotionFid:Ljava/lang/String;

.field private final synthetic val$emotionId:Ljava/lang/String;

.field private final synthetic val$gifPath:Ljava/lang/String;

.field private final synthetic val$hasGif:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$emotionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$gifPath:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$hasGif:Z

    iput-object p6, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$emotionFid:Ljava/lang/String;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "custom_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    .line 570
    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiResourceFolderPath(Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;)Ljava/lang/String;

    move-result-object v0

    .line 572
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 576
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v0

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$emotionId:Ljava/lang/String;

    .line 578
    sget-object v3, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->img:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    .line 576
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$gifPath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$hasGif:Z

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveBitmapOrGifFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$emotionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$emotionFid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->val$hasGif:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->createCustomEmotionVO(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addToAddList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 583
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;->this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->runAddRpc(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 584
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 585
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    .line 586
    const/4 v2, 0x0

    .line 585
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v1

    .line 586
    const/4 v2, 0x1

    .line 584
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->setCustomEmotionModelVOList(Ljava/util/List;Z)V

    .line 588
    :cond_1
    return-void
.end method
