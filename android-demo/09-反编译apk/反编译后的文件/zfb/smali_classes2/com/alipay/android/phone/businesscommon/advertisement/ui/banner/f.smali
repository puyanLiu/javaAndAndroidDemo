.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    iput-boolean p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->b:Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->setCurrentItem(I)V

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$2(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setVisibility(I)V

    .line 113
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$2(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setVisibility(I)V

    .line 96
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->b:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v0

    .line 99
    mul-int/lit16 v0, v0, 0x3e8

    .line 100
    div-int/lit8 v0, v0, 0x2

    .line 97
    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->setCurrentItem(I)V

    .line 111
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startLoop, position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$5(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, ",currentitem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "adapter count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$3(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;Z)V

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$4(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$4(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Landroid/os/Handler;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    .line 106
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/f;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$5(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a(I)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->d()J

    move-result-wide v2

    .line 104
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
