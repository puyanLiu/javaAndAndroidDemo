.class public Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;
.super Landroid/widget/FrameLayout;
.source "BannerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static final BANNER_GAP_COLOR:I = -0xa0a07

.field private static final SCALE_FACTOR:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BannerView"


# instance fields
.field private handler:Landroid/os/Handler;

.field private lastPageScrolled:Z

.field private mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

.field private mItemClickListener:Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;

.field private mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;",
            ">;",
            "Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->lastPageScrolled:Z

    .line 36
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$1;-><init>(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->handler:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BannerView created, callback:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->d(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->init(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->setBannerItems(Ljava/util/List;)V

    .line 54
    iput-object p3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mItemClickListener:Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mItemClickListener:Lcom/alipay/mobile/beehive/compositeui/banner/BannerItemClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->lastPageScrolled:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->position:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/16 v3, 0xa

    .line 150
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->removeAllViews()V

    .line 151
    const v0, -0xa0a07

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->setBackgroundColor(I)V

    .line 152
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 154
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    new-instance v2, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;-><init>(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setPadding(IIII)V

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method


# virtual methods
.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 171
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 59
    goto :goto_0
.end method

.method public notifyBannerViewPager()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageScrolled, i:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",i2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->lastPageScrolled:Z

    .line 129
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageSelected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->position:I

    .line 135
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->lastPageScrolled:Z

    if-eqz v0, :cond_0

    .line 136
    iput-boolean v4, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->lastPageScrolled:Z

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    .line 139
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getItems(I)Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;->getLoopTime()J

    move-result-wide v2

    .line 138
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    :cond_0
    return-void
.end method

.method public setBannerItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BannerView setBannerItems:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->d(Ljava/lang/String;)V

    .line 65
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->init(Landroid/content/Context;)V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->setItems(Ljava/util/List;)V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setVisibility(I)V

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mCircleIndicator:Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    .line 77
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    .line 76
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public startLoop(Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->mPager:Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 90
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;-><init>(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
