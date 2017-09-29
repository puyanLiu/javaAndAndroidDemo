.class Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

.field private final synthetic val$reset:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    iput-boolean p2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->val$reset:Z

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->setCurrentItem(I)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$2(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$2(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setVisibility(I)V

    .line 99
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->val$reset:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v0

    .line 102
    mul-int/lit16 v0, v0, 0x3e8

    .line 103
    div-int/lit8 v0, v0, 0x2

    .line 100
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->setCurrentItem(I)V

    .line 114
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startLoop, position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$5(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",currentitem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "adapter count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$3(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;Z)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$4(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$4(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Landroid/os/Handler;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    .line 109
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$2;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->access$5(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getItems(I)Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;->getLoopTime()J

    move-result-wide v2

    .line 107
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
