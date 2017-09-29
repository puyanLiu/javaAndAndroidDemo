.class public Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;
.super Ljava/lang/Object;
.source "EmoiLoadTask.java"


# static fields
.field public static final DOWNLOAD_TYPE_GIF_FILE_IMAGE:I = 0x2

.field public static final DOWNLOAD_TYPE_STATIC_GIF_IMAGE:I = 0x3

.field public static final DOWNLOAD_TYPE_STATIC_IMAGE:I = 0x1

.field private static fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

.field private static imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private static instance:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static final mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->instance:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;

    .line 31
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->mUIHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method

.method static synthetic access$2()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    return-object v0
.end method

.method public static execute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 50
    sput-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->fileService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;

    .line 55
    :cond_0
    sget-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 59
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 56
    sput-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->imageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 61
    :cond_1
    sget-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;-><init>(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/emotion/util/EmotionConstants$MagicFaceSize;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->instance:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;

    return-object v0
.end method
