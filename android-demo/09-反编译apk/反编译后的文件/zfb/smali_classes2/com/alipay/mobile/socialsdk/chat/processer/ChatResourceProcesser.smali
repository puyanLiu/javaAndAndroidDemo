.class public Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;
.super Ljava/lang/Object;
.source "ChatResourceProcesser.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioDownloadCallback;
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;


# static fields
.field public static final TAG_DOWNLOAD_DELETE:I = 0x6

.field public static final TAG_DOWNLOAD_EMOTION_COLLECT:I = 0x3

.field public static final TAG_DOWNLOAD_EMOTION_FILE:I = 0x5

.field public static final TAG_DOWNLOAD_EMOTION_GIF:I = 0x4

.field public static final TAG_DOWNLOAD_IMAGE:I = 0x1

.field public static final TAG_DOWNLOAD_NULL:I = 0x0

.field public static final TAG_DOWNLOAD_VOICE:I = 0x2

.field private static f:Z


# instance fields
.field protected a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

.field protected b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/chat/processer/k",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;",
            ">;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

.field private e:Lcom/alipay/mobile/socialsdk/chat/receiver/ResourceNetChangeReceiver;

.field private final g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private final h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

.field private final i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private final l:I

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->f:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x42fa0000    # 125.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->l:I

    .line 81
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->m:I

    .line 88
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    .line 89
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 90
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    .line 91
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    new-instance v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    iget v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->l:I

    iget v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->l:I

    invoke-direct {v2, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->getDjangoNearestImageSize(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    .line 95
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->j:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->f:Z

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->initReceiver()V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 407
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;

    move-result-object v1

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/k;

    .line 409
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getCurrentChatPage()Ljava/lang/String;

    move-result-object v3

    .line 412
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/processer/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    :cond_0
    if-eqz p2, :cond_1

    .line 420
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->processMessages(Ljava/util/List;Z)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;->deleteMessageList(Ljava/util/ArrayList;)Z

    .line 425
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->c:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 412
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 413
    if-eqz v3, :cond_4

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 414
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataManager;->getIncrementalMessageId()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->incrementalId:J

    .line 416
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 428
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 103
    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 105
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;

    invoke-direct {v0, p1, p2, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;-><init>(Ljava/lang/String;II)V

    .line 277
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->queryImageFor(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;

    move-result-object v0

    .line 278
    iget-boolean v0, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->success:Z

    return v0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 485
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/k;

    .line 486
    if-eqz v0, :cond_1

    .line 487
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/processer/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 504
    :cond_1
    return-void

    .line 487
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 488
    const-string/jumbo v0, "1"

    iget-object v4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 489
    const/4 v0, 0x0

    .line 490
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->j:Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 493
    :cond_3
    if-ne v0, v2, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    .line 494
    :goto_1
    const-class v4, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v4, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 495
    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->updateVoiceStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 493
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->fromUId:Ljava/lang/String;

    goto :goto_1

    .line 496
    :cond_5
    const-string/jumbo v0, "2"

    iget-object v4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iget-object v4, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->toUId:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 497
    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->updateVoiceStatus(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static netChange()V
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->f:Z

    .line 573
    return-void
.end method


# virtual methods
.method public createSmallImage(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    if-nez p1, :cond_0

    .line 310
    :goto_0
    return v2

    .line 286
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    .line 287
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->getInstance()Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    move-result-object v4

    .line 290
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->containsKey(Ljava/lang/String;)Z

    move-result v5

    .line 291
    if-eqz v5, :cond_1

    move v2, v1

    .line 292
    goto :goto_0

    .line 296
    :cond_1
    iget-object v5, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->resources:[B

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->resources:[B

    array-length v5, v5

    if-lez v5, :cond_2

    .line 299
    :try_start_0
    new-instance v2, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getW()I

    move-result v5

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getH()I

    move-result v6

    invoke-direct {v2, v5, v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    .line 300
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 301
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v2

    iget v7, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->l:I

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v2, v7, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->calculateCutImageRect(IIILjava/lang/String;)[I

    move-result-object v0

    .line 303
    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->resources:[B

    invoke-virtual {v4, v2, v0}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->Bytes2BimapFor([B[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 305
    invoke-virtual {v4, v3, v0}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->save(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    move v2, v0

    .line 310
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public deletePreDownload(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    .line 259
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;->deleteSingleMessage(Ljava/lang/String;)V

    .line 263
    return-void

    .line 247
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/k;

    .line 249
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/processer/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 250
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 258
    :goto_1
    if-nez v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 251
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 252
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public getPluginKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return-object v0
.end method

.method public initReceiver()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->e:Lcom/alipay/mobile/socialsdk/chat/receiver/ResourceNetChangeReceiver;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/receiver/ResourceNetChangeReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/chat/receiver/ResourceNetChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->e:Lcom/alipay/mobile/socialsdk/chat/receiver/ResourceNetChangeReceiver;

    .line 559
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->e:Lcom/alipay/mobile/socialsdk/chat/receiver/ResourceNetChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    return-void
.end method

.method public isInPreDownCache(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeedDownLoad(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 133
    iput v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    .line 134
    const-string/jumbo v0, "14"

    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "814"

    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    .line 136
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    .line 137
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    .line 167
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const/4 v0, 0x6

    iput v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    .line 170
    :cond_1
    return-void

    .line 138
    :cond_2
    const-string/jumbo v0, "12"

    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "812"

    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    :cond_3
    const/4 v0, 0x2

    iput v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    .line 140
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    .line 141
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->getV()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_4
    const-string/jumbo v0, "13"

    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;

    .line 144
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->packageId:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->isCustomEmotion(Ljava/lang/String;)Z

    move-result v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v2

    .line 147
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->packageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionFid:Ljava/lang/String;

    .line 148
    iget-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->localPath:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->hasCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 150
    if-eqz v2, :cond_5

    :goto_1
    iput v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    .line 162
    :goto_2
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->getEmotionFid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    .line 153
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v2

    .line 154
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->packageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->emotionId:Ljava/lang/String;

    .line 153
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmotionModelVO(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_7

    move-object v2, p1

    .line 158
    :goto_3
    iput v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    goto :goto_2

    :cond_7
    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/EmotionMediaInfo;->hasGif:Z

    if-eqz v1, :cond_8

    .line 159
    const/4 v1, 0x4

    move-object v2, p1

    goto :goto_3

    :cond_8
    const/4 v1, 0x5

    move-object v2, p1

    goto :goto_3
.end method

.method public loadEmotionMedia(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 370
    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_0
    return-void

    .line 372
    :pswitch_0
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;-><init>()V

    .line 373
    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->setCloudId(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1, v0, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;->downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 378
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/socialsdk/chat/processer/j;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/chat/processer/j;-><init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;)V

    .line 401
    iget v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->m:I

    iget v6, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->m:I

    move-object v3, v2

    move-object v7, v2

    .line 378
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPreDownResource()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;->loadAllUndoneResources()Ljava/util/List;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 122
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->loadResourceMsg(Ljava/util/List;)V

    .line 130
    return-void

    .line 123
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 124
    iget v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    if-nez v3, :cond_0

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 126
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public loadResourceMsg(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7f51\u7edc\u73af\u5883 wifi "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u65b0\u52a0\u9884\u52a0\u8f7d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v11, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v11

    .line 193
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 193
    :cond_2
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    move-object v2, v0

    .line 194
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/chat/processer/k;

    move v14, v3

    move-object v3, v1

    move v1, v14

    .line 202
    :goto_2
    iget-object v4, v3, Lcom/alipay/mobile/socialsdk/chat/processer/k;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    if-eqz v1, :cond_1

    .line 205
    iget v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 210
    :pswitch_0
    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    const-class v3, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v13

    new-instance v9, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v10}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getW()I

    move-result v1

    invoke-virtual {v10}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getH()I

    move-result v3

    invoke-direct {v9, v1, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->getInstance()Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->createSmallImage(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)Z

    move-result v1

    :cond_3
    iget v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->l:I

    invoke-direct {p0, v13, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->f:Z

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v10}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v6

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->d:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    :goto_4
    sget-boolean v1, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->f:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v13, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v10}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMediaInfo;->getI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_1

    .line 199
    :cond_4
    const/4 v1, 0x1

    .line 200
    new-instance v3, Lcom/alipay/mobile/socialsdk/chat/processer/k;

    iget-object v4, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/socialsdk/chat/processer/k;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 207
    :pswitch_1
    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->templateData:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/VoiceMediaInfo;->getV()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->fromCloudId(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;->checkAudioReady(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;

    invoke-virtual {v2, v1, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;->submitAudioDownloadTask(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioDownloadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_1

    .line 210
    :cond_6
    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    invoke-direct {p0, v13, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    goto :goto_4

    .line 215
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->loadEmotionMedia(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 5

    .prologue
    .line 536
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getFileReq()Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->getCloudId()Ljava/lang/String;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6587\u4ef6\u4e0b\u8f7d\u8d44\u6e90\u5931\u8d25 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    .line 539
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioDownloadRsp;)V
    .locals 5

    .prologue
    .line 464
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8bed\u97f3\u4e0b\u8f7d\u8d44\u6e90\u5931\u8d25 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    :goto_0
    return-void

    .line 469
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b(Ljava/lang/String;I)V

    .line 471
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getFileReq()Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->getCloudId()Ljava/lang/String;

    move-result-object v0

    .line 544
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    .line 545
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 476
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b(Ljava/lang/String;I)V

    .line 481
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;)V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u56fe\u7247\u4e0b\u8f7d\u8d44\u6e90\u5931\u8d25 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public process(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public putCache(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 177
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->c:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 179
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->preDownId:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->e:Lcom/alipay/mobile/socialsdk/chat/receiver/ResourceNetChangeReceiver;

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->e:Lcom/alipay/mobile/socialsdk/chat/receiver/ResourceNetChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 568
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/chat/util/SmallImageLruCache;->release()V

    .line 569
    return-void
.end method

.method public replaceRevertMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 224
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 225
    const/4 v1, 0x0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 236
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 239
    :cond_0
    if-eqz v0, :cond_1

    .line 240
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;->updateWithRevertMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;)V

    .line 224
    :cond_1
    monitor-exit v2

    return-void

    .line 226
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/processer/k;

    .line 228
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/chat/processer/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 235
    :goto_1
    if-nez v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 228
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    .line 229
    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->clientMsgId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;->replaceWithRevertMsg(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public saveResourceMessages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/ChatResourceProcesser;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;->saveResourceMessages(Ljava/util/List;)V

    goto :goto_0
.end method
