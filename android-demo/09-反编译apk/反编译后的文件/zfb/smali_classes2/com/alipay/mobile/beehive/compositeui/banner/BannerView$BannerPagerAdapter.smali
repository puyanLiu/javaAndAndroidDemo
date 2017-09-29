.class public Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerView.java"


# instance fields
.field private item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCtx:Landroid/content/Context;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->mCtx:Landroid/content/Context;

    .line 181
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;)Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 266
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 215
    :goto_0
    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 207
    const/4 v0, -0x2

    return v0
.end method

.method public getItems(I)Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;

    return-object v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public insertItem(ILcom/alipay/mobile/beehive/compositeui/banner/BannerItem;)V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getItems(I)Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 200
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v0

    rem-int v2, p2, v0

    .line 233
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    .line 234
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 235
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 236
    const/4 v0, -0x1

    const/4 v4, -0x2

    .line 235
    invoke-direct {v3, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->this$0:Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView;->getScreenWidth()I

    move-result v4

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v5, Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    iget-object v6, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0, v1, v4, v4}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    .line 246
    :cond_1
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pos:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "item:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerLog;->d(Ljava/lang/String;)V

    .line 248
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter$1;-><init>(Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;I)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 261
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 225
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
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
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->notifyDataSetChanged()V

    .line 191
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->item:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
