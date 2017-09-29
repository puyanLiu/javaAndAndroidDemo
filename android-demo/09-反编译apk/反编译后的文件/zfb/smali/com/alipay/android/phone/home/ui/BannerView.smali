.class public Lcom/alipay/android/phone/home/ui/BannerView;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;
.source "BannerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

.field private b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

.field private final c:Landroid/widget/AbsListView;

.field private d:Z

.field private e:I

.field private f:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

.field private g:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

.field private h:Lcom/alipay/android/phone/home/ui/RecommandView;

.field private i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x2

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v5, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Z

    .line 52
    new-instance v0, Lcom/alipay/android/phone/home/ui/q;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/q;-><init>(Lcom/alipay/android/phone/home/ui/BannerView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->j:Landroid/os/Handler;

    .line 71
    invoke-virtual {p0, v5}, Lcom/alipay/android/phone/home/ui/BannerView;->setOrientation(I)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BannerView"

    const-string/jumbo v2, "inittttttttttttttt"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->removeAllViews()V

    sget v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    sget v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    invoke-virtual {p0, v3, v0, v3, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->setPadding(IIII)V

    const v0, -0xa0a07

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$color;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v0, Lcom/alipay/android/phone/home/ui/RecommandView;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/home/ui/RecommandView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Lcom/alipay/android/phone/home/ui/RecommandView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Lcom/alipay/android/phone/home/ui/RecommandView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/RecommandView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Lcom/alipay/android/phone/home/ui/RecommandView;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/phone/home/ui/BannerViewPager;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3e6b851f    # 0.23f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    new-instance v2, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;-><init>(Lcom/alipay/android/phone/home/ui/BannerView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setPadding(IIII)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$color;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->g:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 73
    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Landroid/widget/AbsListView;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->f:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/CirclePageIndicator;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/home/ui/BannerView;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/home/ui/BannerView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/home/ui/BannerView;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->e:I

    return v0
.end method

.method public static getMeasureH()I
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3e6b851f    # 0.23f

    .line 189
    mul-float/2addr v0, v1

    .line 191
    sget v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    mul-int/lit8 v1, v1, 0x2

    .line 192
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$dimen;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 191
    add-int/2addr v1, v2

    .line 194
    float-to-int v0, v0

    .line 191
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAPBannerViewState()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public hasAdverts()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getMeasuredWidth()I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v1

    .line 179
    sub-int/2addr v0, v1

    .line 181
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v1

    .line 179
    sub-int/2addr v0, v1

    .line 182
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 185
    invoke-super {p0, v0, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onMeasure(II)V

    .line 186
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageScrolled, i:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",i2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Z

    .line 155
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageSelected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    iput p1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->e:I

    .line 161
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Z

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v4, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Z

    .line 163
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->j:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(I)Lcom/alipay/android/phone/home/ads/Advert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getLoopTime()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->g:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    sget-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(I)Lcom/alipay/android/phone/home/ads/Advert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SHOW"

    .line 166
    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setAdverts(Ljava/util/List;)V
    .locals 7
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
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "BannerView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAdverts, adverts == null:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 113
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 81
    goto :goto_0

    .line 89
    :cond_3
    const-string/jumbo v0, "BannerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mRecommandView getVisibility ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Lcom/alipay/android/phone/home/ui/RecommandView;

    invoke-virtual {v4}, Lcom/alipay/android/phone/home/ui/RecommandView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "BannerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "apLinearLayout.getVisibility() ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(Ljava/util/List;)V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setVisibility(I)V

    .line 104
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->invalidate()V

    .line 110
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->requestLayout()V

    goto :goto_1

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setCurrentItem(I)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mPager.setCurrentItem= "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public setBannerClickListener(Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->f:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    .line 366
    return-void
.end method

.method public setRecommandApps(Ljava/util/List;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 203
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Lcom/alipay/android/phone/home/ui/RecommandView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/RecommandView;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Lcom/alipay/android/phone/home/ui/RecommandView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/phone/home/ui/RecommandView;->setData(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->requestLayout()V

    .line 210
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Lcom/alipay/android/phone/home/ui/RecommandView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/RecommandView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startLoop(Z)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->i:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 121
    new-instance v0, Lcom/alipay/android/phone/home/ui/r;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/home/ui/r;-><init>(Lcom/alipay/android/phone/home/ui/BannerView;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
