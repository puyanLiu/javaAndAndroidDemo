.class public Lcom/alipay/android/phone/home/ui/HomeFrameLayout;
.super Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;
.source "HomeFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;
.implements Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field private final A:Landroid/os/Handler;

.field private B:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final C:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

.field protected j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

.field k:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

.field l:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

.field private final m:Landroid/content/Context;

.field private n:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

.field private o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

.field private p:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private r:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private s:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private w:Lcom/alipay/android/phone/home/ui/NearAnimHelper;

.field private x:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private y:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;-><init>(Landroid/content/Context;)V

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->z:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/alipay/android/phone/home/ui/v;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/home/ui/v;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->A:Landroid/os/Handler;

    .line 133
    iput-object v5, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 260
    new-instance v0, Lcom/alipay/android/phone/home/ui/ad;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/ad;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->C:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    .line 496
    new-instance v0, Lcom/alipay/android/phone/home/ui/af;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/af;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->k:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 523
    new-instance v0, Lcom/alipay/android/phone/home/ui/ah;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/ah;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->l:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "constructor"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->h:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->B:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->B:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->n:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->B:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->B:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->p:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const/4 v0, 0x4

    sput v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->r:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->q:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->y:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setOverScrollMode(I)V

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->F:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->s:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->I:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->G:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->H:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->m:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->x:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->x:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    const-string/jumbo v1, "alipassIcon"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->x:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->XIN:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->x:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    new-instance v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->u:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/home/ui/NearAnimHelper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->w:Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->Y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->s:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->b()V

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "initHomeAppGrid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/android/phone/home/ui/DragReorderGridView;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1, p0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    new-instance v2, Lcom/alipay/android/phone/home/ui/aj;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/home/ui/aj;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->setDragReorderListener(Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->j:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->p:I

    sget v2, Lcom/alipay/android/phone/openplatform/R$drawable;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->enableEditMode(II)V

    invoke-virtual {p0, v4}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->refreshAppListData(Z)V

    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a()V

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v1, "initDefaultBanner"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->a()Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/AdvertisementObtainLocalManager;->b()Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->k:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;->onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->n:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;->setO2ORemoteHandler(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;)V

    .line 85
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    .line 393
    new-instance v0, Lcom/alipay/android/phone/home/ui/al;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/al;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    .line 407
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/al;->start()V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APImageView;I)V
    .locals 2

    .prologue
    .line 615
    const-string/jumbo v0, "topAppSubStage1"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p2, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 636
    :goto_0
    return-void

    .line 618
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/home/ui/y;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/phone/home/ui/y;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Lcom/alipay/mobile/commonui/widget/APImageView;)V

    .line 634
    const-string/jumbo v1, "topAppSubStage1"

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 645
    const-string/jumbo v0, "topAppSubStage1"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    return-void

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/home/widget/UserAvatarImageView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/home/ui/NearAnimHelper;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->w:Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 652
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getTopScreenAppsFromLocal size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getTopScreenAppsFromLocal  app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "20000689"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->v:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v3, "O2ORemoteInfo setStoreInfoFromAppCenter "

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "topAppSubStage1"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/alipay/android/phone/home/ui/w;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/w;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    const-string/jumbo v3, "topAppSubStage1"

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v3, "topAppSubStage1"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "20000056"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->Z:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/android/phone/openplatform/R$drawable;->l:I

    invoke-direct {p0, v1, v0, v3}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APImageView;I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->aa:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->E:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "10000007"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->ac:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/android/phone/openplatform/R$drawable;->m:I

    invoke-direct {p0, v1, v0, v3}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APImageView;I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->ad:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->F:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "20000021"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->n:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/android/phone/openplatform/R$drawable;->e:I

    invoke-direct {p0, v1, v0, v3}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APImageView;I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    sget v3, Lcom/alipay/android/phone/openplatform/R$id;->o:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->p:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic access$13(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 742
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->c()V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;-><init>()V

    iput-object p1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$dimen;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "store logo size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->p:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    move-object v4, p0

    move v6, v5

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "text= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->r:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;

    iput-object p1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    goto :goto_0
.end method

.method static synthetic access$14(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->c()V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 3

    .prologue
    .line 554
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "has no ad clear ads"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->C:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->e()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->saveAppsInStage(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->reportUserRank(Z)Z

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->b()V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a()V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->y:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-nez v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addObserver(Ljava/util/Observer;)V

    .line 693
    new-instance v0, Lcom/alipay/android/phone/home/ui/aa;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/aa;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    .line 704
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/aa;->start()V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 724
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;

    .line 726
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->p:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->unregisteLoadCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->A:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 731
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->w:Lcom/alipay/android/phone/home/ui/NearAnimHelper;

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iput-boolean v2, v0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->a:Z

    .line 732
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 735
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->z:Ljava/lang/String;

    .line 736
    return-void
.end method


# virtual methods
.method protected memoryAppsChange(Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;)V
    .locals 2

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;->getParentStageCode()Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string/jumbo v1, "topAppStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->t:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->A:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/an;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/an;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    const-string/jumbo v1, "strategyStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->A:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/ao;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/ao;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onBannerAdClick(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 715
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " ad click and upload later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    const-string/jumbo v1, "CLICK"

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->ab:I

    if-ne v0, v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->jumpToSaoyisao()V

    .line 203
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->b()V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->Y:I

    if-ne v0, v1, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->jumpToSaomafu()V

    .line 207
    const-string/jumbo v0, "20000056"

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->l:I

    if-ne v0, v1, :cond_3

    .line 210
    const-string/jumbo v0, "20000021"

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/LaunchAppUtils;->a(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v0, "20000021"

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->b(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    const-string/jumbo v1, "alipassIcon"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->F:I

    if-ne v0, v1, :cond_0

    .line 215
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->c()V

    .line 216
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;

    .line 217
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_5

    .line 218
    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "O2ORemoteInfo jumpUrl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v3, v3, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 222
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 223
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 224
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string/jumbo v4, "u"

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "dt"

    .line 227
    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/android/phone/openplatform/R$string;->q:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "st"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    const-string/jumbo v0, "pe"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    const-string/jumbo v0, "sb"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    const-string/jumbo v0, "le"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 233
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 233
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    goto/16 :goto_0

    .line 236
    :cond_4
    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->v:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->v:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->onDestroy()V

    .line 427
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->n:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->n:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;->setO2ORemoteHandler(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->x:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->x:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->unRegisterBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 433
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 571
    invoke-super {p0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->onDetachedFromWindow()V

    .line 572
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->removeObserver(Ljava/util/Observer;)V

    .line 575
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 576
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "onDraw"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-super {p0, p1}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 283
    return-void
.end method

.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 832
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v1, "O2ORemoteInfo image onError "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 822
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v1, "O2ORemoteInfo image onProcess "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public onRefresh()V
    .locals 5

    .prologue
    .line 412
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "onRefresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedRefreshHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 415
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshHome(Z)V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->refreshHomeAppsData()V

    .line 418
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshAds() return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->s:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->s:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v1, "home onReturn send broadcast"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.alipay.mobile.RETURN_TO_HOME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "home broadcast content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v4, v4, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "iconurl"

    iget-object v3, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v3, v3, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "jumpurl"

    iget-object v3, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v3, v3, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "desc"

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 420
    :cond_3
    return-void

    .line 418
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshAds"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/home/ui/ap;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/ap;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/ap;->start()V

    goto/16 :goto_0
.end method

.method public onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    .locals 3

    .prologue
    .line 772
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "O2ORemoteInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->A:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/ac;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/ui/ac;-><init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 2

    .prologue
    .line 807
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    const-string/jumbo v1, "O2ORemoteInfo image onSucc "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->q:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;

    .line 809
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->b:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    iput-object v1, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout$StoreRemoteInfo;->a:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    .line 811
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->A:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 813
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 563
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 564
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 565
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 567
    :cond_0
    return-void
.end method

.method protected whenRefreshApplistData()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->isStrategicTemplate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Z)V

    .line 439
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->c:Ljava/lang/String;

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isStrategicTemplate(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->isStrategicTemplate()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method
