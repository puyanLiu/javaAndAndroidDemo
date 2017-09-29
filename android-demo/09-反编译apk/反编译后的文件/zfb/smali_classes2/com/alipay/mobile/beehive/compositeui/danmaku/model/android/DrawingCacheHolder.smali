.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;
.super Ljava/lang/Object;
.source "DrawingCacheHolder.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapArray:[[Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public drawn:Z

.field public extra:Ljava/lang/Object;

.field public height:I

.field private mDensity:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->buildCache(IIIZ)V

    .line 41
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->buildCache(IIIZ)V

    .line 46
    return-void
.end method

.method private eraseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 159
    :cond_0
    return-void
.end method

.method private eraseBitmapArray()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    move v0, v1

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 169
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 164
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->eraseBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private recycleBitmapArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    move v0, v1

    .line 173
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 181
    iput-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    .line 183
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 174
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    aput-object v4, v3, v2

    .line 174
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public buildCache(IIIZ)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-eqz p4, :cond_2

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    if-ne p2, v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 85
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    if-gt p1, v2, :cond_3

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    if-le p2, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->recycle()V

    .line 73
    :cond_5
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    .line 74
    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    .line 75
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 76
    if-lez p3, :cond_6

    .line 77
    iput p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 80
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_7

    .line 81
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->setDensity(I)V

    goto :goto_1

    .line 84
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    move v0, v1

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v1, v3

    .line 210
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v2, v1

    .line 189
    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    array-length v4, v4

    if-lt v2, v4, :cond_2

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    .line 191
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 192
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v5, p2

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-gtz v6, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_3

    .line 194
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v0

    int-to-float v6, v6

    add-float/2addr v6, p3

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_3

    .line 198
    invoke-virtual {p1, v4, v5, v6, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 189
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v1, v3

    .line 208
    goto :goto_1
.end method

.method public erase()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->eraseBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->eraseBitmapArray()V

    .line 90
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 102
    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->extra:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public splitWith(IIII)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->recycleBitmapArray()V

    .line 112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    move/from16 v0, p4

    if-le v2, v0, :cond_0

    .line 119
    :cond_2
    move/from16 v0, p3

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 120
    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 121
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    div-int/2addr v4, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    rem-int v2, v5, v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    add-int v5, v4, v2

    .line 122
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    div-int v4, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    add-int v6, v4, v2

    .line 123
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->width:I

    div-int v7, v2, v5

    .line 124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->height:I

    div-int v8, v2, v6

    .line 125
    filled-new-array {v6, v5}, [I

    move-result-object v2

    const-class v3, Landroid/graphics/Bitmap;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Landroid/graphics/Bitmap;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_3

    .line 127
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    .line 128
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    if-lez v3, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 132
    :cond_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 133
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 134
    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-lt v4, v6, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmapArray:[[Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 121
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 122
    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 135
    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v5, :cond_7

    .line 134
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 136
    :cond_7
    aget-object v11, v2, v4

    .line 137
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 136
    invoke-static {v7, v8, v12}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v11, v3

    .line 138
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    if-lez v11, :cond_8

    .line 139
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->mDensity:I

    invoke-virtual {v12, v11}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 142
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    mul-int v11, v3, v7

    mul-int v13, v4, v8

    .line 144
    add-int v14, v11, v7

    add-int v15, v13, v8

    invoke-virtual {v9, v11, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 145
    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v10, v11, v13, v14, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->bitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v9, v10, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method
