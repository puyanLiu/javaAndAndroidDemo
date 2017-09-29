.class public Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultListAdapter.java"


# static fields
.field public static final DEFAULT_LOGO:Ljava/lang/String; = "Bgw51_MgSkChVNsgu743yQAAACMAAQED"

.field private static final TAG:Ljava/lang/String; = "o2ohome.SearchAdapter"


# instance fields
.field private final birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private final context:Landroid/app/Activity;

.field private final convertViews:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field private hasPreGenerated:Z

.field private itemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;"
        }
    .end annotation
.end field

.field private shareParamUserId:Ljava/lang/String;

.field private shareParamUserType:Ljava/lang/String;

.field private viewItemsCreated:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I

    .line 57
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    .line 85
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;

    .line 86
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    .line 88
    iput-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    .line 89
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->startShare(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Lcom/alipay/android/app/template/event/TElementEventHandler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->preGenerateView(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method private getShareModel(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)Lcom/alipay/mobile/personalbase/model/ShareModel;
    .locals 4

    .prologue
    .line 210
    new-instance v1, Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-direct {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;-><init>()V

    .line 211
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setType(I)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setShowExtraWord(Z)V

    .line 215
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopName"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopName"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[\u94fe\u63a5]"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "shopName"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setBizMemo(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopTopicType"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    const-string/jumbo v2, "quanminkaidian"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    const/16 v0, 0x6f

    .line 228
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setTemplateCode(I)V

    .line 232
    :cond_1
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "priceAverage"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "priceAverage"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setSubTitle(Ljava/lang/String;)V

    .line 236
    :cond_2
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "address"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "address"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 240
    :cond_3
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopLogoUrl"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 241
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "shopLogoUrl"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setThumb(Ljava/lang/String;)V

    .line 247
    :goto_1
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setUrl(Ljava/lang/String;)V

    .line 249
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "rank"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "rank"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 250
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "rank"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setExtendData(Ljava/lang/String;)V

    .line 252
    :cond_4
    return-object v1

    .line 226
    :cond_5
    const/16 v0, 0x6e

    goto/16 :goto_0

    .line 244
    :cond_6
    const-string/jumbo v0, "Bgw51_MgSkChVNsgu743yQAAACMAAQED"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setThumb(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private preGenerateView(Landroid/view/ViewGroup;I)V
    .locals 4

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/ViewGroup;I)V

    .line 123
    const-wide/16 v2, 0x32

    .line 107
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    .line 127
    :cond_0
    return-void
.end method

.method private startShare(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)V
    .locals 5

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->getShareModel(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)Lcom/alipay/mobile/personalbase/model/ShareModel;

    move-result-object v1

    .line 189
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 190
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->shareParamUserType:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->shareParamUserId:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->shareMessageDirectly(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;)V

    .line 207
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 149
    if-nez p2, :cond_3

    .line 151
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    .line 158
    iget-object v0, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "isFromShare"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 160
    if-nez v0, :cond_1

    .line 163
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "o2ohome.SearchAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u70ed\u95e8\u63a8\u8350 generateView failed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 180
    :cond_2
    return-object v0

    :cond_3
    move-object v6, p2

    goto :goto_0
.end method

.method public setShareParamUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->shareParamUserId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setShareParamUserType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->shareParamUserType:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTemplates(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I

    .line 102
    return-void
.end method
