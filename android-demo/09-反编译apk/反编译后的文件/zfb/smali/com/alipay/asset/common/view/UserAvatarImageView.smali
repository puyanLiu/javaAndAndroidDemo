.class public Lcom/alipay/asset/common/view/UserAvatarImageView;
.super Lcom/alipay/mobile/commonui/widget/APImageView;
.source "UserAvatarImageView.java"


# static fields
.field public static final TYPE_CIRCLE:I = 0x1

.field public static final TYPE_RECT:I = 0x0

.field public static final TYPE_ROUND:I = 0x2


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/asset/common/view/UserAvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/UserAvatarImageView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/asset/common/view/UserAvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/UserAvatarImageView;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->a:Z

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->b:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->e:I

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/UserAvatarImageView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 50
    iget v1, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    .line 51
    iget v1, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    .line 52
    return-void
.end method

.method private a(Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    return-void
.end method


# virtual methods
.method public getStrokeBackgroundColor()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->b:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    return v0
.end method

.method public getmRoundRadius()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    return v0
.end method

.method public getmType()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->e:I

    return v0
.end method

.method public isShowStroke()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->a:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/UserAvatarImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 57
    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/UserAvatarImageView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 60
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/UserAvatarImageView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 61
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 62
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 64
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v7, v1, v1, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/UserAvatarImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/UserAvatarImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    .line 67
    mul-float/2addr v8, v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 66
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 69
    mul-float v8, v0, v4

    mul-float v9, v3, v5

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 70
    mul-float/2addr v0, v7

    sub-float v0, v3, v0

    mul-float/2addr v0, v10

    add-float/2addr v0, v10

    move v13, v1

    move v1, v0

    move v0, v13

    .line 75
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 77
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 79
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v1, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 81
    invoke-virtual {v0, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 82
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 87
    iget v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->e:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_1
    return-void

    .line 72
    :cond_0
    mul-float v0, v5, v7

    sub-float v0, v4, v0

    mul-float/2addr v0, v10

    add-float/2addr v0, v10

    goto :goto_0

    .line 89
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rect_mSideLength=>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rect_strokeWidth=>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->a:Z

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 95
    invoke-direct {p0, v0}, Lcom/alipay/asset/common/view/UserAvatarImageView;->a(Landroid/graphics/Paint;)V

    .line 96
    new-instance v2, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v5, v5

    iget v7, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v7, v7

    iget v8, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    iget v8, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    invoke-direct {v2, v5, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 103
    :pswitch_1
    cmpg-float v0, v3, v4

    if-gez v0, :cond_2

    div-float v0, v3, v12

    .line 104
    :goto_2
    iget-boolean v2, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->a:Z

    if-eqz v2, :cond_3

    .line 106
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 107
    invoke-direct {p0, v2}, Lcom/alipay/asset/common/view/UserAvatarImageView;->a(Landroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p1, v0, v0, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    iget v2, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 103
    :cond_2
    div-float v0, v4, v12

    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 115
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRoundRect_mRoundRadius=>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    iget-boolean v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->a:Z

    if-eqz v0, :cond_4

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 118
    invoke-direct {p0, v0}, Lcom/alipay/asset/common/view/UserAvatarImageView;->a(Landroid/graphics/Paint;)V

    .line 119
    new-instance v2, Landroid/graphics/RectF;

    iget v5, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v5, v5

    iget v7, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v7, v7

    iget v8, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    iget v8, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    invoke-direct {v2, v5, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 120
    iget v3, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    int-to-float v4, v4

    invoke-virtual {p1, v6, v3, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 121
    iget v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    int-to-float v0, v0

    iget v3, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 123
    :cond_4
    iget v0, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    int-to-float v2, v2

    invoke-virtual {p1, v6, v0, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 127
    :cond_5
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsShowStroke(Z)V
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->a:Z

    .line 156
    return-void
.end method

.method public setStrokeBackgroundColor(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->b:I

    .line 172
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->c:I

    .line 148
    return-void
.end method

.method public setmRoundRadius(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->d:I

    .line 164
    return-void
.end method

.method public setmType(I)V
    .locals 0

    .prologue
    .line 139
    iput p1, p0, Lcom/alipay/asset/common/view/UserAvatarImageView;->e:I

    .line 140
    return-void
.end method
