.class public Lcom/alipay/mobile/emotion/manager/EmotionDataManager;
.super Ljava/lang/Object;
.source "EmotionDataManager.java"


# static fields
.field public static final BASIC_EMOTION_PAGE_SIZE:I = 0x15

.field public static final BUILD_IN_EMOTION_PACKAGE_NUM:I = 0x2

.field private static final CACHE_KEY_EMOTIONS:Ljava/lang/String; = "emotions"

.field private static final CACHE_KEY_PACKAGES:Ljava/lang/String; = "emontion_packages"

.field public static final CHARTLET_EMOTION_PAGE_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String;

.field private static instence:Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

.field private static mOnChangeEmoiPackageListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private emoiPackageModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation
.end field

.field private emoiPageModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPageModel;",
            ">;"
        }
    .end annotation
.end field

.field private mBasicEmotionItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCustomEmotionModelVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoiDetailModelListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mOnChangeEmoiPackageListListeners:Ljava/util/List;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;II)I
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmotionPageNum(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mEmoiDetailModelListMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->updateEmoiPageModelList()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->saveCache()V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->handlePackageListChangeListener(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addBasicEmotionPackage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "basic"

    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_basic_emotion:I

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addOrUpdateCustomPacageModel()V

    .line 115
    return-void

    .line 103
    :cond_1
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;-><init>()V

    .line 104
    const-string/jumbo v1, "basic"

    iput-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    .line 105
    const/4 v1, 0x6

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    .line 106
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_basic_emotion:I

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addBuildInCustomEmotion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    .line 605
    :cond_0
    new-instance v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;-><init>()V

    .line 606
    const-string/jumbo v1, "op"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    .line 607
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_xyer:I

    iput v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->resourceId:I

    .line 608
    const-string/jumbo v1, "xyer"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->op:Ljava/lang/String;

    .line 609
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 615
    :goto_0
    new-instance v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;-><init>()V

    .line 616
    const-string/jumbo v1, "op"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    .line 617
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_sz:I

    iput v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->resourceId:I

    .line 618
    const-string/jumbo v1, "sz"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->op:Ljava/lang/String;

    .line 619
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 621
    new-instance v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;-><init>()V

    .line 622
    const-string/jumbo v1, "op"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    .line 623
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_sjb:I

    iput v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->resourceId:I

    .line 624
    const-string/jumbo v1, "sjb"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->op:Ljava/lang/String;

    .line 625
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 627
    new-instance v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;-><init>()V

    .line 628
    const-string/jumbo v1, "goto"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    .line 629
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_custom_list:I

    iput v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->resourceId:I

    .line 630
    const-string/jumbo v1, "alipays://platformapi/startapp?appId=20000999&path=favorite"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->gotoUrl:Ljava/lang/String;

    .line 631
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 632
    return-void

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addModelByPackage(ILcom/alipay/mobile/emotion/model/EmoiPackageModel;I)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 339
    const/4 v2, 0x0

    .line 341
    iget v0, p2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    if-ne v6, v0, :cond_7

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 379
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 347
    :goto_0
    iget v3, p2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    if-ne v5, v3, :cond_2

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 352
    const/16 v3, 0x8

    .line 351
    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmotionPageNum(II)I

    move-result v0

    .line 354
    :cond_2
    iget v3, p2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    if-nez v3, :cond_6

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mEmoiDetailModelListMap:Ljava/util/Map;

    iget-object v2, p2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 356
    if-eqz v0, :cond_0

    .line 359
    iget v2, p2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    move-object v3, v0

    .line 361
    :goto_1
    if-ge v1, v2, :cond_0

    .line 362
    new-instance v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;

    invoke-direct {v4}, Lcom/alipay/mobile/emotion/model/EmoiPageModel;-><init>()V

    .line 363
    iget-object v0, p2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->packageId:Ljava/lang/String;

    .line 364
    iput p1, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->cIndex:I

    .line 365
    iput v2, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->pageNum:I

    .line 366
    iput v1, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->pageIndex:I

    .line 367
    iget v0, p2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    iput v0, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->faceType:I

    .line 368
    iget v0, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->faceType:I

    if-ne v6, v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->basicEmotionsItems:Ljava/util/List;

    .line 371
    :cond_3
    iget v0, p2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    if-ne v5, v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-direct {p0, p3, v0, v2, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getSubList(ILjava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->chartletEmotionsItems:Ljava/util/List;

    .line 374
    :cond_4
    iget v0, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->faceType:I

    if-nez v0, :cond_5

    .line 375
    invoke-direct {p0, p3, v3, v2, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getSubList(ILjava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->chartletEmotionsItems:Ljava/util/List;

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPageModelList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move-object v3, v2

    move v2, v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private addOrUpdateCustomPacageModel()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    const-string/jumbo v1, "custom"

    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_custom_emotion:I

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmotionPageNum(II)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    .line 135
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;-><init>()V

    .line 125
    const-string/jumbo v1, "custom"

    iput-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    .line 126
    const/4 v1, 0x5

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    .line 127
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->icon_custom_emotion:I

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->iconResourceId:I

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmotionPageNum(II)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private createEmoiPackageModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)Lcom/alipay/mobile/emotion/model/EmoiPackageModel;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;-><init>()V

    .line 317
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    .line 318
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->type:I

    .line 319
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->name:Ljava/lang/String;

    .line 320
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->iconFid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->bIconFid:Ljava/lang/String;

    .line 321
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageFid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->resUrl:Ljava/lang/String;

    .line 322
    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->price:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->price:Ljava/lang/String;

    .line 323
    return-object v0
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->instence:Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    .line 636
    return-void
.end method

.method private getEmotionPageNum(II)I
    .locals 1

    .prologue
    .line 404
    rem-int v0, p1, p2

    if-nez v0, :cond_0

    .line 405
    div-int v0, p1, p2

    .line 409
    :goto_0
    return v0

    .line 407
    :cond_0
    div-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->instence:Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->instence:Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    .line 77
    :cond_0
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->instence:Lcom/alipay/mobile/emotion/manager/EmotionDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSubList(ILjava/util/List;II)Ljava/util/List;
    .locals 3

    .prologue
    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    add-int/lit8 v0, p4, 0x1

    if-ne v0, p3, :cond_3

    .line 388
    mul-int v0, p4, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 391
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_2

    .line 399
    :cond_0
    return-object v1

    .line 389
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    :cond_3
    mul-int v0, p4, p1

    :goto_2
    add-int/lit8 v2, p4, 0x1

    mul-int/2addr v2, p1

    if-ge v0, v2, :cond_0

    .line 396
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private handlePackageListChangeListener(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    .locals 3

    .prologue
    .line 413
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mOnChangeEmoiPackageListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    return-void

    .line 413
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    .line 415
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;->OnChange(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    sget-object v2, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->loadEmoiDetailModelListMapFromCache()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mEmoiDetailModelListMap:Ljava/util/Map;

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->loadPackageListFromCache()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    .line 83
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->initEmotionItemsList(I)V

    .line 84
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addBuildInCustomEmotion()V

    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addBasicEmotionPackage()V

    .line 86
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->updateEmoiPageModelList()V

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->saveCache()V

    .line 88
    return-void
.end method

.method private initEmotionItemsList(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->visibleValues()[Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    move-result-object v0

    array-length v3, v0

    move v0, v1

    .line 145
    :goto_1
    if-lt v0, v3, :cond_1

    .line 161
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    goto :goto_0

    .line 146
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    add-int/lit8 v2, p1, -0x1

    new-array v5, v2, [Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    move v2, v0

    move v0, v1

    .line 148
    :goto_2
    add-int/lit8 v6, p1, -0x1

    if-lt v0, v6, :cond_3

    .line 156
    :cond_2
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p1, :cond_4

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mBasicEmotionItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    .line 149
    :cond_3
    if-ge v2, v3, :cond_2

    .line 150
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->visibleValues()[Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    move-result-object v6

    aget-object v6, v6, v2

    aput-object v6, v5, v0

    .line 153
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private saveCache()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->savePackageListToCache()V

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->saveEmoiDetailModelListMapToCache()V

    .line 93
    return-void
.end method

.method private saveEmoiDetailModelListMapToCache()V
    .locals 2

    .prologue
    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mEmoiDetailModelListMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 528
    const-string/jumbo v1, "emotions"

    invoke-static {v1, v0}, Lcom/alipay/mobile/emotion/util/StorageHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    sget-object v1, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private savePackageListToCache()V
    .locals 2

    .prologue
    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 500
    const-string/jumbo v1, "emontion_packages"

    invoke-static {v1, v0}, Lcom/alipay/mobile/emotion/util/StorageHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    sget-object v1, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateEmoiPageModelList()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPageModelList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPageModelList:Ljava/util/List;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 331
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 335
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 333
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x8

    invoke-direct {p0, v2, v0, v3}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addModelByPackage(ILcom/alipay/mobile/emotion/model/EmoiPackageModel;I)V

    .line 331
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addEmotionPackage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;)V
    .locals 4

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->createEmoiPackageModel(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    move-result-object v0

    .line 206
    iget-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->hasZipDownloadInFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    :cond_0
    const-string/jumbo v0, "file not found"

    invoke-interface {p2, v0}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onFail(Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->hasEmotionPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-interface {p2}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onSuccess()V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiZipFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 216
    iget-object v2, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    invoke-static {v2, v3}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getEmoiResourceFolderPath(Ljava/lang/String;Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;)Ljava/lang/String;

    move-result-object v2

    .line 218
    new-instance v3, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;

    invoke-direct {v3, v1, v2}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    new-instance v1, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;-><init>(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;Lcom/alipay/mobile/emotion/model/EmoiPackageModel;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;)V

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->setStepObserver(Lcom/alipay/mobile/emotion/step/StepObserver;)V

    .line 310
    invoke-virtual {v3}, Lcom/alipay/mobile/emotion/step/PackageUnzipStep;->start()Z

    goto :goto_0
.end method

.method public delEmotionPackage(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 437
    if-lez v2, :cond_0

    .line 438
    iput-object v3, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mEmoiDetailModelListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->updateEmoiPageModelList()V

    .line 441
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->saveCache()V

    .line 442
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->DEL:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->handlePackageListChangeListener(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V

    .line 444
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 431
    iget-object v4, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 432
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 434
    goto :goto_1
.end method

.method public getAllEmoiPackageModelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCustomEmotionModelVOList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getEmoiPackageModelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    :cond_0
    return-object v0

    .line 175
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getEmoiPageModelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPageModelList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getEmotionModelVO(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mEmoiDetailModelListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 467
    if-nez v0, :cond_0

    move-object v0, v1

    .line 475
    :goto_0
    return-object v0

    .line 470
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 475
    goto :goto_0

    .line 470
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 471
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public getEmotionPackage(Ljava/lang/String;)Lcom/alipay/mobile/emotion/model/EmoiPackageModel;
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 457
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 458
    iget-object v2, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public hasEmotionPackage(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 448
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 449
    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected loadEmoiDetailModelListMapFromCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 508
    const-string/jumbo v0, "emotions"

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/StorageHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 513
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$3;-><init>(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 511
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 522
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    sget-object v2, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected loadPackageListFromCache()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 480
    const-string/jumbo v0, "emontion_packages"

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/StorageHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$2;-><init>(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 483
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    if-nez v0, :cond_0

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    sget-object v2, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public parseEmotionAndGetPopup(Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 555
    .line 556
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-object v2

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPageModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    .line 576
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 579
    :cond_2
    if-eqz v1, :cond_0

    .line 580
    new-instance v2, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;-><init>(Landroid/content/Context;)V

    .line 581
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setEmoiTips(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    goto :goto_0

    .line 560
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;

    .line 561
    iget-object v0, v0, Lcom/alipay/mobile/emotion/model/EmoiPageModel;->chartletEmotionsItems:Ljava/util/List;

    .line 562
    if-eqz v0, :cond_5

    .line 563
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 571
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 575
    :cond_5
    :goto_3
    if-nez v1, :cond_2

    goto :goto_1

    .line 563
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 564
    if-eqz v0, :cond_4

    .line 565
    iget-object v5, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->shortCut:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 570
    :goto_4
    if-nez v0, :cond_8

    move-object v1, v0

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_4

    :cond_8
    move-object v1, v0

    goto :goto_3
.end method

.method public registerListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V
    .locals 1

    .prologue
    .line 545
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mOnChangeEmoiPackageListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mOnChangeEmoiPackageListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_0
    return-void
.end method

.method public setCustomEmotionModelVOList(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 587
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mCustomEmotionModelVOList:Ljava/util/List;

    .line 588
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addBuildInCustomEmotion()V

    .line 589
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addOrUpdateCustomPacageModel()V

    .line 590
    if-eqz p2, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->updateEmoiPageModelList()V

    .line 592
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->REFRESH:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->handlePackageListChangeListener(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V

    .line 594
    :cond_0
    return-void
.end method

.method public setEmoiPackageModelList(Ljava/util/List;)V
    .locals 2
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
    .line 192
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPackageModelList:Ljava/util/List;

    .line 193
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addBasicEmotionPackage()V

    .line 194
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->updateEmoiPageModelList()V

    .line 195
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->MODIFY:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->handlePackageListChangeListener(Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V

    .line 196
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->savePackageListToCache()V

    .line 197
    return-void
.end method

.method public setEmoiPageModelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->emoiPageModelList:Ljava/util/List;

    .line 169
    return-void
.end method

.method public unRegisterListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->mOnChangeEmoiPackageListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method
