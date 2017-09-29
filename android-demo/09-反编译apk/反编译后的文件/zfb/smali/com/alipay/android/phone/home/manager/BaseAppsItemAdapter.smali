.class public Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseAppsItemAdapter.java"


# static fields
.field public static c:I


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/view/LayoutInflater;

.field protected d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field protected f:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

.field g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

.field private h:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

.field private i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

.field private j:Lcom/alipay/android/phone/home/ui/BannerView;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/ads/Advert;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private final n:Landroid/os/Handler;

.field private o:I

.field private final p:F

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0xa

    sput v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    .line 69
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:Landroid/os/Handler;

    .line 71
    iput v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->o:I

    .line 73
    const v0, 0x3e6b851f    # 0.23f

    iput v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:F

    .line 74
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 80
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    .line 81
    invoke-direct {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    .line 69
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:Landroid/os/Handler;

    .line 71
    iput v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->o:I

    .line 73
    const v0, 0x3e6b851f    # 0.23f

    iput v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->p:F

    .line 74
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 85
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    .line 86
    invoke-direct {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j()V

    .line 87
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/view/View;Z)Landroid/view/View;
    .locals 12

    .prologue
    const/16 v4, 0xa0

    const/4 v8, 0x1

    const/4 v11, 0x4

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 368
    if-eqz p2, :cond_1d

    instance-of v0, p2, Lcom/alipay/android/phone/home/manager/AppItemView;

    if-nez v0, :cond_1d

    .line 369
    const/4 p2, 0x0

    move-object v7, p2

    .line 372
    :goto_0
    if-nez v7, :cond_1

    .line 373
    if-eqz p3, :cond_5

    .line 374
    new-instance v0, Lcom/alipay/android/phone/home/ui/StrategicView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/home/ui/StrategicView;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Ljava/lang/String;)V

    move-object v1, v0

    .line 380
    :goto_1
    new-instance v2, Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-direct {v2}, Lcom/alipay/android/phone/home/manager/ViewHolder;-><init>()V

    .line 383
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->g:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 382
    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 386
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->b:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 385
    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 388
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->a:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 387
    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 390
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->K:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/PieProgressView;

    .line 389
    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    .line 392
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 391
    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 394
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->t:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 393
    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 396
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->J:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 398
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->C:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->k:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 400
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->e:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/AdCornerView;

    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    .line 402
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->V:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    .line 403
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 406
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->W:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    .line 405
    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    .line 407
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    .line 408
    iget-object v3, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    .line 407
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 410
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->p:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 412
    if-eqz p1, :cond_0

    .line 413
    iget-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    .line 414
    iget-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    .line 415
    iget-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, v2, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTag(Ljava/lang/Object;)V

    .line 420
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    .line 423
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/android/phone/home/manager/ViewHolder;

    .line 424
    if-eqz p1, :cond_2

    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    :cond_2
    move-object v0, v7

    .line 427
    check-cast v0, Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/manager/AppItemView;->setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/android/phone/home/manager/AppItemView;

    .line 430
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 431
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    invoke-virtual {v0, v11}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setVisibility(I)V

    .line 433
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 434
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseAppsItemAdapter"

    const-string/jumbo v2, "getView, app==null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 436
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 437
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 438
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->k:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 439
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 440
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    .line 441
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    .line 442
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    .line 446
    invoke-virtual {v7, v9}, Landroid/view/View;->setClickable(Z)V

    .line 447
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :cond_4
    :goto_2
    return-object v7

    .line 377
    :cond_5
    new-instance v0, Lcom/alipay/android/phone/home/manager/AppItemView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/home/manager/AppItemView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_1

    .line 450
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseAppsItemAdapter"

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getView, app!=null, convertview visibility:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 454
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 455
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 456
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 457
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 460
    sget v0, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 463
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 464
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    const-string/jumbo v1, "50001000"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 465
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 466
    iget-object v1, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    move-object v0, v7

    check-cast v0, Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->addObserver(Ljava/util/Observer;)V

    .line 467
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setAppManageService(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    .line 468
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 477
    :goto_3
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#AppCenter#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "20000081"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "50001000"

    :cond_7
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getWidgetInfoByWidgetId(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCount()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v8

    :goto_4
    if-eqz v0, :cond_d

    .line 478
    invoke-virtual {p1, v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setRedPointStatus(Z)V

    .line 479
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 480
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v9}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    .line 481
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setMoreBadgeViewStyleMsg()V

    .line 482
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    .line 494
    :goto_5
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p3, :cond_e

    .line 495
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 501
    :goto_6
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    if-ne v0, v1, :cond_8

    .line 502
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    .line 503
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getMoreAppNewFlag()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 504
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 510
    :cond_8
    :goto_7
    if-eqz p3, :cond_10

    .line 511
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 517
    :goto_8
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 518
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    .line 519
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 520
    sget v0, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    move v3, v0

    .line 521
    :goto_9
    invoke-static {p3, v6, v3}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(ZLcom/alipay/android/phone/home/manager/ViewHolder;I)V

    .line 523
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const-string/jumbo v1, ""

    iget-object v2, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v5, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v5}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 524
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v5, v4

    .line 523
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 566
    :cond_9
    :goto_a
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->b(Lcom/alipay/android/phone/home/manager/ViewHolder;Landroid/content/Context;)V

    .line 567
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 568
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 569
    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->D:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 571
    sget v2, Lcom/alipay/android/phone/openplatform/R$color;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 570
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundColor(I)V

    .line 572
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(Lcom/alipay/android/phone/home/manager/ViewHolder;Landroid/content/Context;)V

    .line 600
    :goto_b
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 601
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "10000111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 603
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 605
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BaseAppsItemAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "adsID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v1, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setAdvertText(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 608
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    invoke-virtual {v0, v9}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    .line 612
    :goto_c
    invoke-virtual {p1, v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    .line 622
    :goto_d
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->isLockMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v8

    :goto_e
    if-eqz v0, :cond_1b

    .line 623
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->k:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 624
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    .line 625
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 626
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 627
    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->g:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 470
    :cond_a
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#AppCenter#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 472
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 473
    iget-object v1, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    move-object v0, v7

    check-cast v0, Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->addObserver(Ljava/util/Observer;)V

    .line 474
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setAppManageService(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V

    .line 475
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setWidgetId(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    move v0, v9

    .line 477
    goto/16 :goto_4

    .line 484
    :cond_c
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v9}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    .line 485
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    goto/16 :goto_5

    .line 488
    :cond_d
    invoke-virtual {p1, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setRedPointStatus(Z)V

    .line 489
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    .line 490
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    goto/16 :goto_5

    .line 497
    :cond_e
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 506
    :cond_f
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 513
    :cond_10
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 514
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_11
    move v3, v0

    .line 520
    goto/16 :goto_9

    .line 526
    :cond_12
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    .line 527
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 528
    sget v0, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    move v3, v0

    .line 529
    :goto_f
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, ".gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 531
    new-instance v0, Lcom/alipay/android/phone/home/manager/j;

    invoke-direct {v0, p0, p1, v6, p3}, Lcom/alipay/android/phone/home/manager/j;-><init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;Z)V

    .line 550
    invoke-static {p3, v6, v3}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(ZLcom/alipay/android/phone/home/manager/ViewHolder;I)V

    .line 551
    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadGifImage(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    move v3, v0

    .line 528
    goto :goto_f

    .line 552
    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 553
    if-eqz p3, :cond_15

    .line 554
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 555
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v2, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v4}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 557
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x21c

    const/16 v5, 0x10e

    .line 556
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_a

    .line 559
    :cond_15
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 560
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v2, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v5, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v5}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_a

    .line 592
    :cond_16
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 593
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 595
    :cond_17
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 610
    :cond_18
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    goto/16 :goto_c

    .line 614
    :cond_19
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    .line 615
    invoke-virtual {p1, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    goto/16 :goto_d

    .line 618
    :cond_1a
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    .line 619
    invoke-virtual {p1, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    goto/16 :goto_d

    .line 629
    :cond_1b
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->k:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 630
    if-nez p3, :cond_4

    .line 631
    iget-object v0, v6, Lcom/alipay/android/phone/home/manager/ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_1c
    move v0, v9

    goto/16 :goto_e

    :cond_1d
    move-object v7, p2

    goto/16 :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/alipay/android/phone/home/ui/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/BannerView;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    .line 181
    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->h:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->setBannerClickListener(Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;)V

    .line 184
    :cond_0
    return-void
.end method

.method private f(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    sget v1, Lcom/alipay/android/phone/openplatform/R$dimen;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 110
    sput v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseAppsItemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init, banner_gap:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e6b851f    # 0.23f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->o:I

    .line 114
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 115
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 114
    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 116
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 117
    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 116
    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 118
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;
    .locals 5

    .prologue
    .line 668
    const/4 v1, 0x0

    .line 669
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v1

    .line 677
    :goto_0
    if-eqz v0, :cond_2

    .line 678
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    sget-object v2, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 679
    const-string/jumbo v4, "SHOW"

    .line 678
    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_2
    return-object v0

    .line 670
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 671
    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    if-nez v0, :cond_2

    .line 779
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    .line 780
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int/2addr p1, v0

    .line 783
    :cond_0
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 784
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int/2addr p2, v0

    .line 813
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 814
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->d(Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 816
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->n:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/manager/l;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/manager/l;-><init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_1
    return-void

    .line 786
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    if-eqz v0, :cond_4

    .line 787
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    .line 788
    add-int/lit8 p1, p1, -0x2

    .line 791
    :cond_3
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_1

    .line 792
    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 794
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    if-eqz v0, :cond_1

    .line 795
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_6

    .line 796
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-ge p1, v0, :cond_6

    .line 797
    add-int/lit8 p1, p1, -0x2

    .line 803
    :cond_5
    :goto_2
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_7

    .line 804
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-ge p2, v0, :cond_7

    .line 805
    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 798
    :cond_6
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 799
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_5

    .line 800
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int v0, p1, v0

    add-int/lit8 p1, v0, -0x2

    goto :goto_2

    .line 806
    :cond_7
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 807
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 808
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int v0, p2, v0

    add-int/lit8 p2, v0, -0x2

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->h:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    .line 830
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/home/ui/DragReorderGridView;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    .line 200
    return-void
.end method

.method public final a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->i:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 862
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    .line 863
    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 107
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseAppsItemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStrategicFlag, flag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-boolean p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    .line 96
    return-void
.end method

.method public final b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    if-nez v1, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt p1, v1, :cond_2

    .line 273
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 275
    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object v0

    .line 278
    :cond_1
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int/2addr p1, v1

    .line 305
    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    goto :goto_0

    .line 282
    :cond_3
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-lt p1, v1, :cond_2

    .line 283
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-ne p1, v1, :cond_4

    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getStrategicApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_4
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_5

    .line 287
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getStrategicApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_5
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt p1, v1, :cond_7

    .line 289
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 292
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 293
    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    .line 295
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 296
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 297
    sget v2, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_7

    .line 298
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int v1, p1, v1

    add-int/lit8 p1, v1, -0x2

    goto :goto_1

    .line 300
    :cond_7
    add-int/lit8 p1, p1, -0x2

    goto :goto_1
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/ads/Advert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->k:Ljava/util/List;

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BaseAppsItemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set adverts => "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Lcom/alipay/android/phone/home/manager/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/manager/i;-><init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(Z)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->setAdverts(Ljava/util/List;)V

    .line 147
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    return v0
.end method

.method public final b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z
    .locals 1

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->getAPBannerViewState()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->startLoop(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public final c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 714
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    .line 715
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 706
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 705
    if-eqz v0, :cond_0

    .line 707
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 708
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Ljava/util/List;

    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/BannerView;->setRecommandApps(Ljava/util/List;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    .line 158
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Z

    .line 188
    return-void
.end method

.method public final d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 5

    .prologue
    .line 723
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const/4 v1, 0x0

    .line 728
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 734
    :goto_1
    if-eqz v0, :cond_3

    .line 735
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 738
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 728
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 729
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    return-object v0
.end method

.method public final e(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 5

    .prologue
    .line 742
    const/4 v1, 0x0

    .line 743
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 752
    :goto_1
    if-eqz v0, :cond_0

    .line 753
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 754
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->f(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 759
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 746
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 747
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 757
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 838
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->k:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v0

    .line 843
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 846
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->e:I

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 255
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 256
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    .line 255
    div-int/2addr v0, v1

    .line 257
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    .line 255
    mul-int/2addr v0, v1

    .line 258
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v0, v1

    .line 261
    :cond_0
    return v0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 253
    :cond_2
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->d:I

    goto :goto_1
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    int-to-long v0, p1

    .line 328
    :goto_0
    return-wide v0

    .line 325
    :cond_0
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-lt p1, v0, :cond_1

    .line 326
    sget v0, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    sub-int/2addr p1, v0

    .line 328
    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 206
    iget-boolean v3, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->q:Z

    if-nez v3, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-ne p1, v3, :cond_2

    move v0, v1

    .line 213
    goto :goto_0

    .line 214
    :cond_2
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-le p1, v1, :cond_0

    .line 215
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 216
    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v3

    if-ge p1, v1, :cond_0

    move v0, v2

    .line 217
    goto :goto_0

    .line 225
    :cond_3
    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    if-ne p1, v3, :cond_4

    .line 226
    const/4 v0, 0x3

    goto :goto_0

    .line 227
    :cond_4
    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->c:I

    add-int/lit8 v3, v3, 0x1

    if-ne p1, v3, :cond_5

    .line 228
    const/4 v0, 0x4

    goto :goto_0

    .line 229
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-ne p1, v3, :cond_6

    move v0, v1

    .line 231
    goto :goto_0

    .line 232
    :cond_6
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    if-le p1, v1, :cond_0

    .line 233
    sget v1, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->b:I

    .line 234
    sget v3, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->a:I

    add-int/2addr v1, v3

    if-ge p1, v1, :cond_0

    move v0, v2

    .line 235
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 335
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-nez v0, :cond_2

    .line 336
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(Z)V

    .line 341
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    .line 361
    :cond_1
    :goto_1
    return-object p2

    .line 337
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    iget-boolean v1, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->startLoop(Z)V

    .line 339
    iput-boolean v2, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->m:Z

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 343
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-direct {p0, v0, p2, v3}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/view/View;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 344
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 345
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 348
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->j:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->getMeasuredHeight()I

    move-result v0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/alipay/android/phone/home/ui/BannerView;->getMeasureH()I

    move-result v0

    goto :goto_2

    .line 350
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 351
    if-nez p2, :cond_1

    .line 352
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 354
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 355
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    .line 356
    iget v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->o:I

    .line 355
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 356
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->g:Lcom/alipay/android/phone/home/ui/DragReorderGridView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/DragReorderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_3

    .line 361
    :cond_8
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-direct {p0, v0, p2, v2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/view/View;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x5

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->o:I

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
