.class public Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;
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


# instance fields
.field private a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

.field private b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

.field private c:Z

.field private d:I

.field private e:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->c:Z

    .line 37
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->f:Landroid/os/Handler;

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/16 v3, 0xa

    .line 148
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->removeAllViews()V

    .line 150
    const v0, -0xa0a07

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->setBackgroundColor(I)V

    .line 151
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 153
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 157
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 161
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setPadding(IIII)V

    .line 165
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->e:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->c:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->d:I

    return v0
.end method


# virtual methods
.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 183
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public hasAdverts()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 57
    goto :goto_0
.end method

.method public notifyBannerViewPager()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 83
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageScrolled, i:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",i2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->c:Z

    .line 127
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageSelected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->d:I

    .line 134
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->c:Z

    if-eqz v0, :cond_0

    .line 135
    iput-boolean v4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->c:Z

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->f:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    .line 138
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a(I)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->d()J

    move-result-wide v2

    .line 137
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    :cond_0
    return-void
.end method

.method public setAdverts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a(Landroid/content/Context;)V

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a(Ljava/util/List;)V

    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setVisibility(I)V

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    .line 74
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    .line 73
    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public setBannerClickListener(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->e:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;

    .line 286
    return-void
.end method

.method public startLoop(Z)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 87
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
