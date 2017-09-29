.class public final Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->c:Landroid/content/Context;

    .line 195
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
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
    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->notifyDataSetChanged()V

    .line 205
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 279
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 280
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 222
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 225
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 244
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->c:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    .line 245
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 247
    const/4 v0, -0x1

    const/4 v3, -0x2

    .line 246
    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 251
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->getScreenWidth()I

    move-result v3

    .line 252
    new-instance v4, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->c:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;-><init>(Landroid/content/Context;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v5

    rem-int v5, p2, v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {v4, v0, v1, v3, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

    .line 255
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;I)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    return-object v1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 239
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
