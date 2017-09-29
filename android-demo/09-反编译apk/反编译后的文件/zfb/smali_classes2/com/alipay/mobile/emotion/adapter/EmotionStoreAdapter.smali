.class public Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmotionStoreAdapter.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I


# instance fields
.field private final fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private final imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private localCachePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;

.field private final mEmotionPackageBriefVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus()[I
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I

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
    sput-object v0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I

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

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->localCachePackageList:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->localCachePackageList:Ljava/util/List;

    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 65
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 62
    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 70
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 66
    iput-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->notifyDownloadStatus(Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->setInitDownloadView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->downloadFile(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method private downloadFile(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 8

    .prologue
    .line 233
    new-instance v6, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 234
    invoke-virtual {p2}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageFid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p2}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmotionRootFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {p2}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {v6, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setSavePath(Ljava/lang/String;)V

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 244
    iget-object v7, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Ljava/util/HashMap;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;)V

    invoke-virtual {v7, v6, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 319
    return-void
.end method

.method private getEmotionItemStatus(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->localCachePackageList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->localCachePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 484
    invoke-virtual {p1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->isContainEmoiDownload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Downloading:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 491
    :goto_0
    return-object v0

    .line 471
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 473
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    goto :goto_0

    .line 486
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getState()I

    move-result v0

    if-nez v0, :cond_4

    .line 488
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Saleout:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    goto :goto_0

    .line 491
    :cond_4
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Init:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    goto :goto_0
.end method

.method private notifyDownloadStatus(Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V
    .locals 3

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyDownloadStatus,status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",packageId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 430
    const-string/jumbo v1, "packageId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    new-instance v1, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 433
    const-string/jumbo v2, "com.alipay.emotion.message.install"

    .line 432
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 434
    invoke-static {v1}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 436
    return-void
.end method

.method private setDownloadView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->$SWITCH_TABLE$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    :pswitch_0
    return-void

    .line 176
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->setInitDownloadView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->setSuccessDownloadView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;)V

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->setDownloadingView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    goto :goto_0

    .line 185
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->setSaleoutView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setInitDownloadView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgressStatus:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadDesc:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadFinish:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 197
    sget v2, Lcom/alipay/android/phone/emotion/R$string;->download:I

    .line 196
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    .line 199
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 200
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/emotion/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(I)V

    .line 201
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 202
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 203
    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method private setSaleoutView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 218
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgressStatus:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadDesc:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadFinish:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 222
    sget v2, Lcom/alipay/android/phone/emotion/R$string;->saleout:I

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    .line 224
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 225
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/emotion/R$color;->gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(I)V

    .line 226
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 228
    return-void
.end method

.method private setSuccessDownloadView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 439
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgressStatus:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadDesc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadFinish:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 443
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getModelByDataId(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 529
    :goto_0
    return-object v0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 529
    goto :goto_0

    .line 524
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 525
    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mEmotionPackageBriefVOList:Ljava/util/List;

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 78
    if-nez p2, :cond_0

    .line 80
    new-instance v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 82
    sget v3, Lcom/alipay/android/phone/emotion/R$layout;->emotion_store_item:I

    .line 81
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->img_new_emoi:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->flagNew:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 84
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_avatar:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 86
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_package_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 85
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiName:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 88
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_package_desc:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 87
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDesc:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 89
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_download_desc:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadDesc:Landroid/view/View;

    .line 91
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->btn_download_over:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 90
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadFinish:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 93
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->btn_download_emoi:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APButton;

    .line 92
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emotionDownloadBtn:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 95
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_download_progress_status:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgressStatus:Landroid/view/View;

    .line 97
    sget v1, Lcom/alipay/android/phone/emotion/R$id;->emoi_download_progress:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APProgressBar;

    .line 96
    iput-object v1, v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgress:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    .line 99
    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_store_item:I

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v1, v2

    .line 103
    :goto_0
    iget-object v2, v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDesc:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getShortDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getIconFid()Ljava/lang/String;

    move-result-object v3

    .line 106
    iget-object v4, v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiIcon:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 105
    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 107
    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getFlag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 109
    :goto_1
    iget-object v3, v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->flagNew:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 112
    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->getEmotionItemStatus(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    move-result-object v2

    .line 114
    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->setDownloadView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "#prg#Tag"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    return-object p2

    .line 101
    :cond_0
    sget v1, Lcom/alipay/android/phone/emotion/R$layout;->emotion_store_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    goto :goto_0

    .line 108
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public onDownloading(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;ILcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgress:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->setDownloadingView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 506
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgress:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    if-nez v0, :cond_1

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgress:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setMax(I)V

    .line 510
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgress:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public setDownloadingView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgressStatus:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadDesc:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgress:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setVisibility(I)V

    .line 450
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgress:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setMax(I)V

    .line 451
    iget-object v0, p1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;->emoiDownloadProgress:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    .line 452
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getEmoiDownloader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    .line 453
    return-void
.end method

.method public updateCachePackageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->localCachePackageList:Ljava/util/List;

    .line 541
    return-void
.end method
