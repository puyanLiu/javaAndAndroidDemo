.class public Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "ChatStageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/commonui/widget/APFrameLayout;",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Ljava/util/Observer;"
    }
.end annotation


# static fields
.field private static q:I


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Landroid/view/View;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

.field private h:Landroid/view/View;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;

.field private l:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;

.field private m:I

.field private n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0xfa

    sput v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->q:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->m:I

    .line 109
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->m:I

    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->m:I

    .line 119
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a()V

    .line 120
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 443
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "drawable"

    const-string/jumbo v2, "com.alipay.mobile.chatapp"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 447
    :goto_0
    return v0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "android-phone-publicplatform-commont"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$layout;->chat_stage_view:I

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->e:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->e:Landroid/view/View;

    .line 126
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->chat_stage_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    .line 125
    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->g:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->chat_stage_viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->c:Landroid/support/v4/view/ViewPager;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->chat_stage_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->f:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->chat_stage_indicator_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->h:Landroid/view/View;

    .line 130
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->g:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->g:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setFillColor(I)V

    .line 138
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->k:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;

    .line 140
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$dimen;->chat_stage_view_totle_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->m:I

    .line 142
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 144
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 142
    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 145
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$dimen;->chat_stage_appicon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->p:I

    .line 148
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)[Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->b:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)I
    .locals 1

    .prologue
    .line 210
    const/16 v0, 0x8

    return v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->l:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    const-string/jumbo v0, "SelectPanel"

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->n:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->p:I

    return v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;Ljava/lang/String;Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->o:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;)Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->k:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$GridItemClickListener;

    return-object v0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hideAppStage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 184
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->setVisibility(I)V

    .line 185
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->j:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 460
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->setVisibility(I)V

    .line 463
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->i:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->setVisibility(I)V

    .line 474
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 453
    return-void
.end method

.method public onViewDestroy()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->o:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 496
    :cond_1
    return-void

    .line 488
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 489
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method

.method public declared-synchronized refreshView(Ljava/util/List;)V
    .locals 5
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
    const/4 v0, 0x0

    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->onViewDestroy()V

    .line 237
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->b:[Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->notifyDataSetChanged()V

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->c:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->g:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->notifyDataSetChanged()V

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_0
    monitor-exit p0

    return-void

    .line 247
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->h:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->c:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 252
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->b()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->b:[Landroid/view/View;

    move v1, v0

    .line 253
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->b()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->d:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStagePagerAdapter;->notifyDataSetChanged()V

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->g:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->notifyDataSetChanged()V

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 259
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->b()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 254
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->b:[Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/publicsvc/common/R$layout;->chat_stage_gridlayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->home_apps_grid:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APGridView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APGridView;->setNumColumns(I)V

    new-instance v4, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$ChatStageGridAdapter;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;I)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    aput-object v3, v2, v1

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setOnChatAppSelectListener(Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->l:Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView$OnChateAppSelectedListener;

    .line 435
    return-void
.end method

.method public showAppStage()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->setVisibility(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 501
    if-nez p2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 505
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->o:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;

    .line 511
    if-eqz v0, :cond_0

    .line 512
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatStageViewHolder;->installStatusUpdate(Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;Landroid/content/Context;)V

    goto :goto_0
.end method
