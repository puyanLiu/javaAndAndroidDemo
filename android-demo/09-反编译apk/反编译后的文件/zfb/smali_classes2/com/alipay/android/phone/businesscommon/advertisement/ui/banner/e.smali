.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;
.super Landroid/os/Handler;
.source "BannerView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleMessage, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->setCurrentItem(I)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method
