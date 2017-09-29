.class public Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmotionsLayout.java"


# instance fields
.field private mCurrentView:Landroid/view/View;

.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;


# direct methods
.method protected constructor <init>(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 440
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 441
    check-cast p3, Landroid/view/View;

    .line 442
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 443
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 445
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->destroyDrawingCache()V

    .line 446
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 447
    check-cast p3, Landroid/view/ViewGroup;

    .line 448
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 451
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$10(Lcom/alipay/mobile/emotion/view/EmotionsLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getmCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "page#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-object v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;->this$0:Lcom/alipay/mobile/emotion/view/EmotionsLayout;

    invoke-static {v0, p2}, Lcom/alipay/mobile/emotion/view/EmotionsLayout;->access$11(Lcom/alipay/mobile/emotion/view/EmotionsLayout;I)Landroid/view/View;

    move-result-object v0

    .line 428
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 429
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .line 430
    new-instance v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    .line 431
    const/16 v2, 0x11

    iput v2, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    .line 432
    iput v3, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    .line 433
    iput v3, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    .line 434
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 388
    instance-of v1, p2, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 389
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 391
    :cond_0
    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 414
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 415
    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;->setmCurrentView(Landroid/view/View;)V

    .line 417
    :cond_0
    return-void
.end method

.method public setmCurrentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/EmotionsLayout$EmotionPagerAdapter;->mCurrentView:Landroid/view/View;

    .line 464
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 400
    return-void
.end method
