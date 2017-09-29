.class public Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "EmotionDownListActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "emotion_download_list_activity"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

.field private mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

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
    .line 50
    const-class v0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 63
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 75
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    .line 48
    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->updateListView(Ljava/util/List;)V

    return-void
.end method

.method private getEmotionManagerVersion()J
    .locals 4

    .prologue
    .line 253
    const-wide/16 v0, 0x0

    .line 255
    const-string/jumbo v2, "EmotionManageListVersion"

    invoke-static {v2}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 262
    :cond_0
    return-wide v0
.end method

.method private initContent()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 112
    const-string/jumbo v0, "EmotionManageList"

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/CacheHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$3;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    .line 116
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmotionPackageBriefVOList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    .line 128
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getEmoiPackageModelList()Ljava/util/List;

    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 130
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
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
    .line 133
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V

    .line 133
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$4;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 164
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 166
    return-void
.end method

.method private initMessageHandler()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->getInstance()Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "dwd:progressupdate"

    .line 180
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$5;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const-string/jumbo v2, "com.alipay.emotion.message.install"

    .line 213
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$6;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 224
    const-string/jumbo v2, "com.alipay.emotion.message.cancel.download"

    .line 225
    new-instance v3, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$7;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;->regist(Ljava/lang/String;Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;)Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    goto :goto_0
.end method

.method private initRPCResult()V
    .locals 2

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->getEmotionManagerVersion()J

    move-result-wide v0

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->runRpc(Ljava/lang/Long;)V

    .line 248
    return-void
.end method

.method private runRpc(Ljava/lang/Long;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8;

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 272
    invoke-direct {v0, p0, p0, v1, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$8;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;Landroid/app/Activity;Landroid/view/View;Ljava/lang/Long;)V

    .line 323
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    .line 324
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    .line 325
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method private unregisterMessageHandler()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mHandlerFactory:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

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
    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmotionPackageBriefVOList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->notifyDataSetChanged()V

    .line 269
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
    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->initContent()V

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->initData()V

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->initListView()V

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->initRPCResult()V

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->initMessageHandler()V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->registerListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 86
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->listener:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->unRegisterListener(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$OnChangeEmoiPackageListListener;)V

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->unregisterMessageHandler()V

    .line 88
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
    iput-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmoiPackageModelList:Ljava/util/List;

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mEmoiPackageModelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->updateCachePackageList(Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mAdapter:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->notifyDataSetChanged()V

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
