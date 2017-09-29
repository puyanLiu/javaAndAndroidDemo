.class public Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;
.super Landroid/os/AsyncTask;
.source "CustomEmotionDataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static isFinish:Z


# instance fields
.field private cuurIndex:I

.field private final handler:Landroid/os/Handler;

.field private isCancel:Z

.field private isDownLoadFail:Z

.field private isForceSyn:Z

.field private mTaskModel:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

.field private final syncList:Ljava/util/List;
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
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 310
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isForceSyn:Z

    .line 311
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CustomEmotionSyncTask"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 313
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->handler:Landroid/os/Handler;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    .line 315
    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;I)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->downloadFiles(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;I)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->next(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;Z)V
    .locals 0

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isDownLoadFail:Z

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->mTaskModel:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    return-void
.end method

.method private downloadFiles(I)V
    .locals 6

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 378
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isDownLoadFail:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isFinish:Z

    .line 379
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isDownLoadFail:Z

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->access$1()V

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->sendFinishMsg()V

    .line 443
    :goto_1
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 385
    :cond_2
    iput p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cuurIndex:I

    .line 386
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isCancel:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "none"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 387
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isForceSyn:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->sendCancelMsg()V

    goto :goto_1

    .line 391
    :cond_4
    if-nez p1, :cond_5

    .line 392
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->sendStartMsg()V

    .line 396
    :goto_2
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 398
    iget-object v2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiCacheFullPath()Ljava/lang/String;

    move-result-object v2

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "custom_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getUserIdForCache()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 401
    sget-object v5, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->img:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    .line 399
    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct;->getEmotionFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 403
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->next(I)V

    goto :goto_1

    .line 394
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->sendProgressMsg()V

    goto :goto_2

    .line 406
    :cond_6
    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setSavePath(Ljava/lang/String;)V

    .line 407
    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setType(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->access$2()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;-><init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;I)V

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->mTaskModel:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_1
.end method

.method private next(I)V
    .locals 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$3;-><init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;I)V

    .line 453
    const-wide/16 v2, 0x9c4

    .line 446
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    return-void
.end method

.method private sendCancelMsg()V
    .locals 3

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isCancel:Z

    .line 499
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 500
    const-string/jumbo v1, "curr_index"

    .line 501
    iget v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cuurIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 500
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v1, "total_count"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v1, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 504
    const-string/jumbo v2, "sync_cancel"

    .line 503
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 505
    invoke-static {v1}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 506
    return-void
.end method

.method private sendFinishMsg()V
    .locals 3

    .prologue
    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 489
    const-string/jumbo v1, "curr_index"

    .line 490
    iget v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cuurIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 489
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string/jumbo v1, "total_count"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v1, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 493
    const-string/jumbo v2, "sync_finish"

    .line 492
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 494
    invoke-static {v1}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 495
    return-void
.end method

.method private sendProgressMsg()V
    .locals 3

    .prologue
    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 479
    const-string/jumbo v1, "curr_index"

    .line 480
    iget v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cuurIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 479
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string/jumbo v1, "total_count"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v1, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 483
    const-string/jumbo v2, "sync_progress"

    .line 482
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 484
    invoke-static {v1}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 485
    return-void
.end method

.method private sendStartMsg()V
    .locals 3

    .prologue
    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 469
    const-string/jumbo v1, "curr_index"

    .line 470
    iget v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cuurIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 469
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string/jumbo v1, "total_count"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v1, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 473
    const-string/jumbo v2, "sync_start"

    .line 472
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 474
    invoke-static {v1}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 475
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isCancel:Z

    .line 510
    return-void
.end method

.method public continueTask(Z)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isCancel:Z

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isForceSyn:Z

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isCancel:Z

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->mTaskModel:Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    if-nez v0, :cond_0

    .line 463
    iget v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cuurIndex:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->downloadFiles(I)V

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    const/4 v1, 0x0

    .line 321
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 323
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 324
    const-class v2, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;

    .line 321
    invoke-interface {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;->queryCustomEmotionByUser()Lcom/alipay/mobilechat/biz/emotion/rpc/response/CustomEmotionResp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/CustomEmotionResp;->customEmotionVOs:Ljava/util/List;

    if-nez v1, :cond_1

    .line 330
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->access$1()V

    .line 331
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->sendFinishMsg()V

    .line 332
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 354
    :goto_1
    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->access$0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/CustomEmotionResp;->customEmotionVOs:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->retainAllBuildList(Ljava/util/List;)V

    .line 335
    iget-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/CustomEmotionResp;->customEmotionVOs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->sendFinishMsg()V

    .line 337
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/CustomEmotionResp;->customEmotionVOs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getAddEmotionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getDelEmotionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getBulidInEmotionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->sendFinishMsg()V

    .line 345
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$1;-><init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCuurIndex()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->cuurIndex:I

    return v0
.end method

.method public getListSize()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 524
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSyncList()Ljava/util/List;
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
    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->syncList:Ljava/util/List;

    return-object v0
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isCancel:Z

    return v0
.end method

.method public isForceSyn()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isForceSyn:Z

    return v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isFinish:Z

    .line 362
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setForceSyn(Z)V
    .locals 0

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->isForceSyn:Z

    .line 374
    return-void
.end method
