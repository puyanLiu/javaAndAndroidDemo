.class public Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;
.super Landroid/view/ViewGroup;
.source "PhotoGridLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoGridLayout"


# instance fields
.field private columns:I

.field private defaultGridDrawable:Landroid/graphics/drawable/Drawable;

.field private gap:I

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;

.field private maxSingleHeight:I

.field private maxSingleWidth:I

.field private minSingleHeight:I

.field private minSingleWidth:I

.field private orderedSize:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

.field private rows:I

.field private singleWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    .line 33
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    .line 34
    const/16 v0, 0xe6

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    .line 35
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleHeight:I

    .line 36
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleWidth:I

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    .line 33
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    .line 34
    const/16 v0, 0xe6

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    .line 35
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleHeight:I

    .line 36
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleWidth:I

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    .line 33
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    .line 34
    const/16 v0, 0xe6

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    .line 35
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleHeight:I

    .line 36
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleWidth:I

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->init()V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;)Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listener:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;

    return-object v0
.end method

.method private addGridImageView()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;-><init>(Landroid/content/Context;)V

    .line 296
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 297
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$color;->photo_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;->setBackgroundColor(I)V

    .line 298
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-void
.end method

.method private addSingleImageView(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 3

    .prologue
    .line 302
    new-instance v0, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;-><init>(Landroid/content/Context;)V

    .line 303
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 304
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$color;->photo_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;->setBackgroundColor(I)V

    .line 305
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getSuggestedLayoutParams(Lcom/alipay/mobile/beehive/service/PhotoInfo;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    return-void
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 105
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private findPosition(I)[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 179
    const/4 v0, 0x2

    new-array v3, v0, [I

    move v0, v1

    .line 180
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->rows:I

    if-lt v0, v2, :cond_0

    .line 189
    return-object v3

    :cond_0
    move v2, v1

    .line 181
    :goto_1
    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->columns:I

    if-lt v2, v4, :cond_1

    .line 180
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->columns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    if-ne v4, p1, :cond_2

    .line 183
    aput v0, v3, v1

    .line 184
    const/4 v4, 0x1

    aput v2, v3, v4

    goto :goto_2

    .line 181
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private generateChildrenLayout(I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x3

    .line 279
    if-gt p1, v1, :cond_1

    .line 280
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->rows:I

    .line 281
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->columns:I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/4 v0, 0x6

    if-gt p1, v0, :cond_2

    .line 283
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->rows:I

    .line 284
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->columns:I

    .line 285
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 286
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->columns:I

    goto :goto_0

    .line 289
    :cond_2
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->rows:I

    .line 290
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->columns:I

    goto :goto_0
.end method

.method private getSuggestedLayoutParams(Lcom/alipay/mobile/beehive/service/PhotoInfo;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 310
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoHeight()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    .line 312
    const v4, 0x3e6147ae    # 0.22f

    .line 311
    invoke-static {v0, v2, v3, v4}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->getSingleImageSize(IIIF)[I

    move-result-object v0

    .line 313
    aget v2, v0, v5

    if-eqz v2, :cond_0

    .line 314
    aget v2, v0, v5

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 315
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, v1

    .line 341
    :goto_0
    return-object v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 319
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 320
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 325
    :goto_1
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 326
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 327
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 328
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleWidth:I

    if-ge v0, v2, :cond_1

    .line 329
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleWidth:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    :goto_2
    move-object v0, v1

    .line 341
    goto :goto_0

    .line 322
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 323
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 331
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 332
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleHeight:I

    if-ge v0, v2, :cond_1

    .line 335
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleHeight:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 338
    :cond_4
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleHeight:I

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleWidth:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleWidth:I

    .line 63
    return-void
.end method

.method private layoutChildrenView()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->singleWidth:I

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->reorderSize(I)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->orderedSize:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    .line 131
    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->singleWidth:I

    .line 133
    if-ne v4, v11, :cond_0

    .line 134
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;

    .line 135
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setSingleImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 136
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;->layout(IIII)V

    .line 153
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v2, v3

    .line 139
    :goto_1
    if-lt v2, v4, :cond_1

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoGridLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "layoutChildren cost: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 142
    invoke-direct {p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->findPosition(I)[I

    move-result-object v1

    .line 143
    iget v8, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->singleWidth:I

    iget v9, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    add-int/2addr v8, v9

    aget v9, v1, v11

    mul-int/2addr v8, v9

    .line 144
    iget v9, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    add-int/2addr v9, v5

    aget v1, v1, v3

    mul-int/2addr v1, v9

    .line 145
    iget v9, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->singleWidth:I

    add-int/2addr v9, v8

    .line 146
    add-int v10, v1, v5

    .line 148
    invoke-virtual {v0, v8, v1, v9, v10}, Lcom/alipay/mobile/beehive/photo/view/CustomImageView;->layout(IIII)V

    .line 139
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private setChildClickListener()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listener:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 101
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$1;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$2;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->defaultGridDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->orderedSize:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->orderedSize:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v4

    .line 174
    new-instance v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoHeight()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    move-object v0, p2

    .line 172
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)V

    .line 176
    return-void
.end method

.method private setSingleImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    .line 160
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->reorderSize(I)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->defaultGridDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v3

    .line 162
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v4

    .line 163
    new-instance v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoHeight()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    move-object v0, p2

    .line 161
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)V

    .line 165
    return-void
.end method


# virtual methods
.method public getGap()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 112
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    .line 113
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 115
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->rows:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->rows:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setMeasuredDimension(II)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getSuggestedLayoutParams(Lcom/alipay/mobile/beehive/service/PhotoInfo;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setDefaultGridDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->defaultGridDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    return-void
.end method

.method public setGap(I)V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->gap:I

    .line 198
    return-void
.end method

.method public setImagesData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->generateChildrenLayout(I)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    if-nez v0, :cond_4

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 213
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->addSingleImageView(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    move v0, v3

    .line 243
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 244
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    if-eqz v0, :cond_9

    .line 246
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->layoutChildrenView()V

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setChildClickListener()V

    goto :goto_0

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->addGridImageView()V

    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 215
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    move v0, v3

    goto :goto_1

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 223
    if-ne v2, v3, :cond_6

    .line 224
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->removeAllViews()V

    .line 225
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->addSingleImageView(Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    .line 238
    :cond_5
    :goto_3
    if-ne v5, v2, :cond_b

    move v0, v1

    .line 241
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "PhotoGridLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "oldViewCount:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ",newViewCount:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_6
    if-le v5, v2, :cond_7

    .line 227
    add-int/lit8 v0, v2, -0x1

    sub-int v4, v5, v2

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->removeViews(II)V

    goto :goto_3

    .line 228
    :cond_7
    if-ge v5, v2, :cond_5

    .line 229
    sub-int v0, v2, v5

    .line 230
    if-ne v5, v3, :cond_8

    .line 231
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->removeAllViews()V

    move v0, v2

    :cond_8
    move v4, v1

    .line 234
    :goto_5
    if-ge v4, v0, :cond_5

    .line 235
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->addGridImageView()V

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 248
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getChildCount()I

    move-result v4

    move v2, v1

    .line 249
    :goto_6
    if-ge v2, v4, :cond_2

    .line 250
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 251
    if-ne v4, v3, :cond_a

    .line 252
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setSingleImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 249
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 254
    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    goto :goto_7

    :cond_b
    move v0, v3

    goto :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->listener:Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout$OnItemClickListener;

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->setChildClickListener()V

    .line 76
    return-void
.end method

.method public setSingleImageRegion(IIII)V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleWidth:I

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->minSingleHeight:I

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleWidth:I

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p4

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoGridLayout;->maxSingleHeight:I

    .line 71
    return-void
.end method
