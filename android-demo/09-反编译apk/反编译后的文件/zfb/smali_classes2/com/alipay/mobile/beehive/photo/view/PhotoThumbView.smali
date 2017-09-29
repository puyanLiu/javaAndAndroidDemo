.class public Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;
.super Landroid/view/ViewGroup;
.source "PhotoThumbView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoThumbView"


# instance fields
.field private defaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private foregroundSelector:Landroid/graphics/drawable/Drawable;

.field private gap:I

.field private listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->init()V

    .line 48
    return-void
.end method

.method private addImageView()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 186
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 187
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->defaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->defaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$color;->photo_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 85
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->image_foreground_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->foregroundSelector:Landroid/graphics/drawable/Drawable;

    .line 81
    return-void
.end method

.method private layoutChildrenView()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->width:I

    .line 138
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    sub-int v0, v5, v0

    div-int/lit8 v6, v0, 0x2

    .line 141
    if-ne v4, v3, :cond_1

    .line 145
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 147
    invoke-virtual {v0, v2, v2, v5, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v0, 0x2

    if-ne v4, v0, :cond_2

    move v3, v2

    .line 149
    :goto_1
    if-ge v3, v4, :cond_0

    .line 150
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 152
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    add-int/2addr v1, v6

    mul-int/2addr v1, v3

    .line 153
    add-int v7, v1, v6

    .line 155
    add-int/lit8 v8, v5, 0x0

    .line 156
    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 149
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 158
    :cond_2
    const/4 v0, 0x3

    if-ne v4, v0, :cond_4

    .line 159
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 161
    invoke-virtual {v0, v2, v2, v6, v5}, Landroid/widget/ImageView;->layout(IIII)V

    move v2, v3

    .line 162
    :goto_2
    if-ge v2, v4, :cond_0

    .line 163
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 165
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    add-int/2addr v1, v6

    .line 166
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    add-int/2addr v3, v6

    add-int/lit8 v5, v2, -0x1

    mul-int/2addr v3, v5

    .line 167
    add-int v5, v1, v6

    .line 168
    add-int v7, v3, v6

    .line 169
    invoke-virtual {v0, v1, v3, v5, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 162
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 175
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    add-int/2addr v1, v6

    div-int/lit8 v3, v2, 0x2

    mul-int/2addr v1, v3

    .line 176
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->gap:I

    add-int/2addr v3, v6

    rem-int/lit8 v4, v2, 0x2

    mul-int/2addr v3, v4

    .line 177
    add-int v4, v1, v6

    .line 178
    add-int v5, v3, v6

    .line 179
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 172
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :cond_4
    const/4 v0, 0x4

    if-lt v2, v0, :cond_3

    goto/16 :goto_0
.end method

.method private setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getThumbPath()Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoThumbView"

    const-string/jumbo v2, "set photo view from thumb drawable"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->width:I

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->reorderSize(I)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->defaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v4

    .line 206
    new-instance v5, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoHeight()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    move-object v0, p2

    .line 204
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/photo/wrapper/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->foregroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->foregroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->invalidate()V

    .line 60
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->width:I

    .line 92
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->width:I

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->width:I

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setMeasuredDimension(II)V

    .line 93
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->foregroundSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    return-void
.end method

.method public setDefaultBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->defaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    return-void
.end method

.method public setImagesData(Ljava/util/List;)V
    .locals 7
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
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 96
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    .line 104
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    move v0, v2

    .line 123
    :goto_2
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    .line 124
    if-eqz v0, :cond_7

    .line 125
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->layoutChildrenView()V

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->addImageView()V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 111
    if-le v3, v4, :cond_6

    .line 112
    add-int/lit8 v0, v4, -0x1

    sub-int v5, v3, v4

    invoke-virtual {p0, v0, v5}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->removeViews(II)V

    .line 119
    :cond_4
    if-eq v3, v4, :cond_5

    if-lt v3, v6, :cond_8

    if-lt v4, v6, :cond_8

    :cond_5
    move v0, v1

    .line 120
    goto :goto_2

    .line 113
    :cond_6
    if-ge v3, v4, :cond_4

    .line 114
    sub-int v5, v4, v3

    move v0, v1

    .line 115
    :goto_3
    if-ge v0, v5, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->addImageView()V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getChildCount()I

    move-result v3

    move v2, v1

    .line 128
    :goto_4
    if-ge v2, v3, :cond_0

    .line 129
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->listData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoThumbView;->setImageThumbnail(Lcom/alipay/mobile/beehive/service/PhotoInfo;Landroid/widget/ImageView;)V

    .line 128
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_2
.end method
