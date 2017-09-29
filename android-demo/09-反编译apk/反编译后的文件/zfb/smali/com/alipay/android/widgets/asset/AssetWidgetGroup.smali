.class public Lcom/alipay/android/widgets/asset/AssetWidgetGroup;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidgetGroup;
.implements Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/ViewGroup;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private g:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

.field private k:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/alipay/asset/common/view/AccountInfoView;

.field private r:Landroid/os/Handler;

.field private s:Lcom/alipay/android/widgets/asset/listener/AdvertListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Ljava/util/List;

    .line 85
    new-instance v0, Lcom/alipay/android/widgets/asset/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/g;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->s:Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    .line 392
    :goto_0
    return-object v0

    .line 388
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 392
    goto :goto_0

    .line 389
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 390
    new-instance v3, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-direct {v3}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>()V

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setWidgetId(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setMainInfo(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSecondaryInfo(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSchema(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setExtInfos(Ljava/util/Map;)V

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;Z)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-virtual {v0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->setAmountHidden(Z)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a(Z)V

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 375
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c(Ljava/lang/String;)Z

    move-result v0

    .line 380
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Ljava/util/List;

    .line 455
    :goto_0
    return-object v0

    .line 432
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 455
    goto :goto_0

    .line 433
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;

    .line 434
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 435
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;->modules:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 436
    iget-object v0, v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleGroup;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 449
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    .line 451
    invoke-virtual {v0, v4}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    .line 452
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;

    .line 437
    if-eqz v1, :cond_4

    iget-boolean v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->hidden:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Ljava/util/Map;

    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 440
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Ljava/util/Map;

    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->copy()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v0

    .line 444
    :goto_3
    if-eqz v0, :cond_7

    if-nez v1, :cond_9

    .line 445
    :cond_7
    :goto_4
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 442
    :cond_8
    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>()V

    goto :goto_3

    .line 444
    :cond_9
    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->mainInfo:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setMainInfo(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->secondaryInfo:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSecondaryInfo(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setSchema(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->extInfos:Ljava/util/Map;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setExtInfos(Ljava/util/Map;)V

    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setWidgetId(Ljava/lang/String;)V

    :cond_a
    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setTitle(Ljava/lang/String;)V

    :cond_b
    iget-object v6, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v1, v1, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeModuleInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->setIconUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    const-string/jumbo v1, "HOME"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    return-object v0
.end method

.method private static c(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 467
    if-eqz p0, :cond_1

    .line 468
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 478
    :cond_1
    return-object v1

    .line 468
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    .line 469
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 471
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 472
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/listener/AdvertListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->s:Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/asset/common/view/AccountInfoView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;)V
    .locals 4

    .prologue
    .line 322
    const-string/jumbo v1, "AssetWidgetGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateWealthTab, null result:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v0

    .line 324
    if-nez p1, :cond_3

    .line 325
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a()V

    .line 326
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->setAccountInfoList(Ljava/util/List;Z)V

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a(Ljava/util/List;Z)V

    .line 349
    :cond_1
    :goto_1
    return-void

    .line 322
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AssetWidgetGroup"

    const-string/jumbo v3, "\u62ff\u5230\u670d\u52a1\u7aefrpc\u7ed3\u679c\uff0c\u5237\u65b0tab"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v1

    .line 336
    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->markInfos:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/util/Map;)V

    .line 337
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->dynamicGroups:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a(Ljava/util/List;Z)V

    .line 338
    iget-object v1, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;->fixModules:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->p:Ljava/util/List;

    .line 339
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    if-eqz v1, :cond_4

    .line 340
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->p:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->setAccountInfoList(Ljava/util/List;Z)V

    .line 342
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 344
    if-ne v0, v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 353
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onRpcFinish"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v0, "pullrefresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    .line 362
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->e:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "getIndicator start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->e:I

    .line 123
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Landroid/widget/RelativeLayout;

    .line 126
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->W:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 127
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const-string/jumbo v1, "50000003"

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Landroid/widget/RelativeLayout;

    .line 130
    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->V:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->w:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->k:I

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 136
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 135
    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-static {}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a()Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    .line 140
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-virtual {v0, p0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;)V

    .line 142
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v8}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$string;->u:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setTitle(Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_ACC_BALANCE"

    const-string/jumbo v2, "balance"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "--"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000019&source=asset"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_BANKCARD"

    const-string/jumbo v2, "bankcard"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->x:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000014"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_MFUND"

    const-string/jumbo v2, "fund"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->D:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000032&source=asset"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_FIXED"

    const-string/jumbo v2, "myfixeddeposit"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->F:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000165&url=/www/index.htm&showTitleBar=YES&showToolBar=NO&showLoading=NO&readTitle=NO&defaultTitle=\u62db\u8d22\u5b9d&showOptionMenu=NO"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_STOCK"

    const-string/jumbo v2, "stock"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->A:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000134"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_BOLLYWOOD"

    const-string/jumbo v2, "bollywood"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->E:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000142"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v9}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v8}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_CREDIT"

    const-string/jumbo v2, "credit"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->i:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000118&target=credit"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_HUABEI"

    const-string/jumbo v2, "spend"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->z:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000195"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_JIEBEI"

    const-string/jumbo v2, "ecmobile"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->l:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000180"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v9}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$string;->j:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setTitle(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v8}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_INSURANCE"

    const-string/jumbo v2, "insurance"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->p:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000110&source=asset"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v9}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v8}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_CHARITY"

    const-string/jumbo v2, "charity"

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/wealth/home/R$string;->h:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v5, Lcom/alipay/android/phone/wealth/home/R$string;->C:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=10000009"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v9}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->setModules(Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v7, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->n:Ljava/util/Map;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_ACC_BALANCE"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "--"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "alipays://platformapi/startapp?appId=20000243"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_BANKCARD"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_KABAO"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v1, "WEALTH_HOME_TOTAL_ASSET"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "--"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v7, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->p:Ljava/util/List;

    .line 143
    new-instance v0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    .line 144
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->o:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a(Ljava/util/List;Z)V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->h:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/lang/String;)Z

    .line 152
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->r:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 154
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const-string/jumbo v1, "WEALTH_HOME_AVATAR"

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->b(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "getView"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 180
    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Landroid/view/ViewGroup;

    .line 181
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->K:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->g:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/android/widgets/asset/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/i;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->D:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/asset/common/view/AccountInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->p:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/asset/common/view/AccountInfoView;->setAccountInfoList(Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    new-instance v2, Lcom/alipay/android/widgets/asset/j;

    invoke-direct {v2, p0}, Lcom/alipay/android/widgets/asset/j;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V

    invoke-virtual {v1, v2}, Lcom/alipay/asset/common/view/AccountInfoView;->setShowAmountClickListener(Lcom/alipay/android/widgets/asset/listener/ShowAmountClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->k:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v1, v2}, Lcom/alipay/asset/common/view/AccountInfoView;->bindAvatarFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->l:Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onRefresh start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onResume start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 258
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 260
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/widgets/asset/k;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/widgets/asset/k;-><init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;Lcom/alipay/mobile/framework/service/ext/security/AuthService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->j:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->f:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-static {}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a()Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->s:Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a(ZLcom/alipay/android/widgets/asset/listener/AdvertListener;)V

    .line 275
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/AccountInfoView;->updateAmountHiddenState()V

    .line 265
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/AccountInfoView;->refreshUserData()V

    .line 267
    :cond_2
    const-string/jumbo v0, "resume"

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    .line 269
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onResume end"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReturn()V
    .locals 3

    .prologue
    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AssetWidgetGroup"

    const-string/jumbo v2, "onReturn start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v0, "return"

    invoke-direct {p0, v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->q:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/AccountInfoView;->refreshUserData()V

    .line 250
    :cond_0
    invoke-static {}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a()Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->s:Lcom/alipay/android/widgets/asset/listener/AdvertListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/advert/AdvertProcessor;->a(ZLcom/alipay/android/widgets/asset/listener/AdvertListener;)V

    .line 251
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b:Landroid/app/Activity;

    .line 107
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 102
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c:Ljava/lang/String;

    .line 117
    return-void
.end method
