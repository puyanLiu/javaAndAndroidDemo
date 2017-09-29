.class public Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;
.super Ljava/lang/Object;
.source "CustomEmotionDataManager.java"


# static fields
.field public static final MAX_SIZE:I = 0x9c

.field private static final TAG:Ljava/lang/String;

.field private static fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field public static instence:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

.field private static mOnChangeCustomEmotionListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;


# instance fields
.field private addEmotionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private buildInEmotionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private delEmotionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private tempDelEmotionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->TAG:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->init()V

    .line 85
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 287
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->resetSyncTask()V

    return-void
.end method

.method static synthetic access$2()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->copyFileAndSyncToServer(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    return-void
.end method

.method private addCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getCustomEmotionTotalSize()I

    move-result v1

    const/16 v2, 0x9c

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->hasCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    .line 562
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v2

    .line 561
    invoke-virtual {v1, v2, v7}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->setCustomEmotionModelVOList(Ljava/util/List;Z)V

    .line 590
    :goto_0
    return v0

    .line 566
    :cond_1
    new-instance v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$2;-><init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    move v0, v7

    .line 590
    goto :goto_0
.end method

.method public static declared-synchronized clearSyncTask()V
    .locals 2

    .prologue
    .line 841
    const-class v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    monitor-exit v0

    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private copyFileAndSyncToServer(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 3

    .prologue
    .line 805
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "custom_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 806
    invoke-static {v1, v2}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 805
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isAddDelModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 816
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 817
    const-class v1, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;

    .line 813
    invoke-interface {v0, p1}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;->addCustomEmotion(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;->success:Z

    if-eqz v0, :cond_0

    .line 820
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->moveAddToBuild(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 821
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 822
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    .line 823
    const/4 v2, 0x0

    .line 822
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v1

    .line 823
    const/4 v2, 0x1

    .line 821
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->setCustomEmotionModelVOList(Ljava/util/List;Z)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createCustomEmotionVO(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;
    .locals 2

    .prologue
    .line 696
    new-instance v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;-><init>()V

    .line 697
    const-string/jumbo v1, "FavoriteEmotion"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    .line 698
    iput-object p0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 699
    iput-object p1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    .line 700
    iput-object p3, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    .line 701
    iput-boolean p2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    .line 702
    return-object v0
.end method

.method public static destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 533
    sput-object v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->instence:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    .line 534
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cancel()V

    .line 537
    :cond_0
    sput-object v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    .line 538
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isFinish:Z

    .line 539
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 630
    if-nez p0, :cond_0

    .line 631
    const/4 v0, 0x0

    .line 647
    :goto_0
    return-object v0

    .line 634
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 635
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 638
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 641
    :goto_1
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 643
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 644
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 646
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 639
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public static declared-synchronized getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;
    .locals 3

    .prologue
    .line 104
    const-class v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->instence:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->instence:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    .line 107
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 109
    const-class v2, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 106
    sput-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 111
    :cond_0
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->instence:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSyncTask()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;
    .locals 1

    .prologue
    .line 845
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    return-object v0
.end method

.method private handleCustomEmotionListListener(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 3

    .prologue
    .line 278
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mOnChangeCustomEmotionListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    return-void

    .line 278
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;

    .line 280
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;->OnChange(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    sget-object v2, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    const-string/jumbo v1, "custom_emo_build"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->loadFromCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    const-string/jumbo v1, "custom_emo_add"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->loadFromCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    const-string/jumbo v1, "custom_emo_del"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->loadFromCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->tempDelEmotionList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mOnChangeCustomEmotionListListeners:Ljava/util/List;

    .line 98
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 100
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 97
    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 101
    return-void
.end method

.method public static isCustomEmotion(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 676
    const-string/jumbo v0, "FavoriteEmotion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static resetSyncTask()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    .line 289
    return-void
.end method

.method public static declared-synchronized runSyncTask(Z)V
    .locals 3

    .prologue
    .line 829
    const-class v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isFinish:Z

    if-nez v0, :cond_1

    .line 830
    new-instance v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;-><init>(Z)V

    .line 831
    sput-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mSyncTask:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 832
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isForceStop:Z

    if-nez v0, :cond_0

    .line 833
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getSyncTask()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    move-result-object v0

    .line 834
    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->continueTask(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 672
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveBitmapOrGifFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveBitmapOrGifFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 651
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    if-eqz p3, :cond_0

    .line 654
    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 655
    invoke-virtual {v1, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setSavePath(Ljava/lang/String;)V

    .line 657
    sget-object v2, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    new-instance v3, Lcom/alipay/mobile/emotion/util/DefaultAPFileDownCallback;

    invoke-direct {v3}, Lcom/alipay/mobile/emotion/util/DefaultAPFileDownCallback;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoadSync(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;

    .line 658
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 668
    :goto_0
    return v0

    .line 660
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 661
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 662
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 663
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    const/4 v0, 0x1

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveToCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {p1, v0}, Lcom/alipay/mobile/emotion/util/StorageHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    sget-object v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private uploadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 3

    .prologue
    .line 744
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 745
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setSavePath(Ljava/lang/String;)V

    .line 746
    sget-object v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    new-instance v2, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$4;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$4;-><init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->upLoadSync(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileUploadRsp;

    .line 768
    return-void
.end method

.method private uploadImage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 2

    .prologue
    .line 771
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;-><init>()V

    .line 772
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->isSync:Z

    .line 773
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->path:Ljava/lang/String;

    .line 774
    new-instance v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$5;-><init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    iput-object v1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;

    .line 800
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 801
    return-void
.end method


# virtual methods
.method public addCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Z
    .locals 7

    .prologue
    .line 551
    instance-of v0, p5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    :cond_0
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public addGifCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7

    .prologue
    .line 595
    invoke-static {p5}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    :cond_0
    const/4 v0, 0x0

    .line 598
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public addToAddList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getCustomEmotionTotalSize()I

    move-result v0

    const/16 v1, 0x9c

    if-lt v0, v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string/jumbo v0, "custom_emo_add"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveToCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public addToBuildInList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getCustomEmotionTotalSize()I

    move-result v0

    const/16 v1, 0x9c

    if-lt v0, v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->ADD:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->handleCustomEmotionListListener(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V

    .line 154
    const-string/jumbo v0, "custom_emo_build"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveToCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public addToDelList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    const-string/jumbo v0, "custom_emo_del"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveToCache(Ljava/lang/String;Ljava/util/List;)V

    .line 174
    return-void
.end method

.method public addToTempDelList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->tempDelEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public clearTempDelList()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->tempDelEmotionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    return-void
.end method

.method public getAddEmotionList()Ljava/util/List;
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
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    return-object v0
.end method

.method public getBulidInEmotionList()Ljava/util/List;
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
    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    return-object v0
.end method

.method public getCustomEmotion(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 719
    :goto_0
    return-object v0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 719
    goto :goto_0

    .line 709
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 710
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 714
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 715
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public getCustomEmotionTotalSize()I
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDelEmotionList()Ljava/util/List;
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
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    return-object v0
.end method

.method public getShowCustomEmotionList(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 220
    if-eqz p1, :cond_0

    .line 221
    new-instance v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-direct {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;-><init>()V

    .line 222
    const-string/jumbo v2, "add"

    iput-object v2, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    return-object v0
.end method

.method public getTempDelEmotionList()Ljava/util/List;
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
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->tempDelEmotionList:Ljava/util/List;

    return-object v0
.end method

.method public hasCustomEmotion(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 688
    const-string/jumbo v1, "FavoriteEmotion"

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 680
    const-string/jumbo v1, "FavoriteEmotion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    invoke-static {p2, p3, v0, p4}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->createCustomEmotionVO(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v1

    .line 684
    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAddDelModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCanAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 542
    const-string/jumbo v1, "FavoriteEmotion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 545
    :cond_1
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->createCustomEmotionVO(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTempDelModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->tempDelEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected loadFromCache(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    invoke-static {p1}, Lcom/alipay/mobile/emotion/util/StorageHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$1;-><init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 237
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :cond_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    sget-object v2, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public moveAddToBuild(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->removeFormAddList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addToBuildInList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 205
    :cond_0
    return-void
.end method

.method public moveBuildOrAddToDel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->removeFormBuildList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->removeFormDelList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->removeFormAddList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->removeFormDelList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    goto :goto_0
.end method

.method public registerListener(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;)V
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mOnChangeCustomEmotionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public removeFormAddList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v0, "custom_emo_add"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addEmotionList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveToCache(Ljava/lang/String;Ljava/util/List;)V

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFormBuildList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string/jumbo v0, "custom_emo_build"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveToCache(Ljava/lang/String;Ljava/util/List;)V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFormDelList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    const-string/jumbo v0, "custom_emo_del"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->delEmotionList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveToCache(Ljava/lang/String;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method public removeFormTempDelList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->tempDelEmotionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public retainAllBuildList(Ljava/util/List;)V
    .locals 2
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
    .line 166
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getBulidInEmotionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 167
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->REFRESH:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->handleCustomEmotionListListener(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V

    .line 168
    const-string/jumbo v0, "custom_emo_build"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->buildInEmotionList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveToCache(Ljava/lang/String;Ljava/util/List;)V

    .line 169
    return-void
.end method

.method public runAddRpc(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    new-instance v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;-><init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 624
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    .line 625
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    .line 626
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method public unRegisterListener(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$OnChangeCustomEmotionListListener;)V
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->mOnChangeCustomEmotionListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const/4 v0, 0x0

    .line 740
    :goto_0
    return-object v0

    .line 727
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getCustomEmotion(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v0

    .line 728
    if-nez v0, :cond_1

    .line 729
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->createCustomEmotionVO(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v0

    .line 732
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 733
    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    goto :goto_0

    .line 735
    :cond_2
    if-eqz p3, :cond_3

    .line 736
    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->uploadFile(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 740
    :goto_1
    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    goto :goto_0

    .line 738
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->uploadImage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    goto :goto_1
.end method
