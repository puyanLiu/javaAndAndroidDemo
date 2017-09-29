.class public Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "EmotionStoreActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "emotion_store_activity"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

.field private mEmoiPackageModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEmotionPackageBriefVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
            ">;"
        }
    .end annotation
.end field

.field private mEmotionStoreAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

.field private mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

.field protected mListView:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "listview"
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 76
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    .line 49
    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionStoreAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->updateListView(Ljava/util/List;)V

    return-void
.end method

.method private getEmotionStoreVersion()J
    .locals 4

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    .line 254
    const-string/jumbo v2, "EmotionStoreListVersion"

    invoke-static {v2}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 261
    :cond_0
    return-wide v0
.end method

.method private initContent()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 114
    const-string/jumbo v0, "EmotionStoreList"

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$3;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    .line 118
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionPackageBriefVOList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    .line 130
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPackageModelList()Ljava/util/List;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 132
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initListView()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V

    .line 135
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionStoreAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    .line 137
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    const-string/jumbo v1, "EMOJI_STORE_BANNER"

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionStoreAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$4;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 165
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 167
    return-void
.end method

.method private initMessageHandler()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->getInstance()Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "dwd:progressupdate"

    .line 181
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$5;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "com.alipay.emotion.message.install"

    .line 214
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$6;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 224
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 225
    const-string/jumbo v2, "com.alipay.emotion.message.cancel.download"

    .line 226
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$7;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    goto :goto_0
.end method

.method private initRPCResult()V
    .locals 2

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->getEmotionStoreVersion()J

    move-result-wide v0

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->runRpc(Ljava/lang/Long;)V

    .line 247
    return-void
.end method

.method private runRpc(Ljava/lang/Long;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;

    .line 272
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 271
    invoke-direct {v0, p0, p0, v1, p1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;Landroid/app/Activity;Landroid/view/View;Ljava/lang/Long;)V

    .line 322
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    .line 323
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    .line 324
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method private unregisterMessageHandler()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->unregistByCategory(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateListView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionStoreAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->notifyDataSetChanged()V

    .line 268
    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->initContent()V

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->initData()V

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->initListView()V

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->initRPCResult()V

    .line 72
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->initMessageHandler()V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->registerListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 88
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->unRegisterListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->unregisterMessageHandler()V

    .line 90
    return-void
.end method

.method protected refreshListView()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPackageModelList()Ljava/util/List;

    move-result-object v0

    .line 238
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionStoreAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->updateCachePackageList(Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->mEmotionStoreAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->notifyDataSetChanged()V

    .line 242
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
