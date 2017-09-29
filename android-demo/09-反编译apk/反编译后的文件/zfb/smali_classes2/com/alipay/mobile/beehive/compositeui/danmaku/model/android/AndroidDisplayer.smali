.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;
.source "AndroidDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer",
        "<",
        "Landroid/graphics/Canvas;",
        ">;"
    }
.end annotation


# static fields
.field private static ALPHA_PAINT:Landroid/graphics/Paint; = null

.field private static ANTI_ALIAS:Z = false

.field private static BORDER_PAINT:Landroid/graphics/Paint; = null

.field public static final BORDER_WIDTH:I = 0x4

.field public static CONFIG_ANTI_ALIAS:Z

.field public static CONFIG_HAS_PROJECTION:Z

.field public static CONFIG_HAS_SHADOW:Z

.field public static CONFIG_HAS_STROKE:Z

.field private static HAS_PROJECTION:Z

.field private static HAS_SHADOW:Z

.field private static HAS_STROKE:Z

.field public static PAINT:Landroid/text/TextPaint;

.field public static PAINT_DUPLICATE:Landroid/text/TextPaint;

.field private static SHADOW_RADIUS:F

.field private static STROKE_WIDTH:F

.field private static final TAG:Ljava/lang/String;

.field public static UNDERLINE_HEIGHT:I

.field private static UNDERLINE_PAINT:Landroid/graphics/Paint;

.field private static final sCachedScaleSize:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastScaleTextSize:F

.field private static sProjectionAlpha:I

.field private static sProjectionOffsetX:F

.field private static sProjectionOffsetY:F

.field private static final sTextHeightCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private HIT_CACHE_COUNT:I

.field private NO_CACHE_COUNT:I

.field private camera:Landroid/graphics/Camera;

.field public canvas:Landroid/graphics/Canvas;

.field private density:F

.field private densityDpi:I

.field private height:I

.field private mIsHardwareAccelerated:Z

.field private mMaximumBitmapHeight:I

.field private mMaximumBitmapWidth:I

.field private mSlopPixel:I

.field private matrix:Landroid/graphics/Matrix;

.field private scaledDensity:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Danmaku_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sTextHeightCache:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sCachedScaleSize:Ljava/util/Map;

    .line 74
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->UNDERLINE_HEIGHT:I

    .line 84
    sput v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    .line 89
    const/high16 v0, 0x40600000    # 3.5f

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    .line 94
    sput v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    .line 95
    sput v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    .line 96
    const/16 v0, 0xcc

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    .line 102
    sput-boolean v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    sput-boolean v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    .line 108
    sput-boolean v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    sput-boolean v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    .line 114
    sput-boolean v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    sput-boolean v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    .line 120
    sput-boolean v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_ANTI_ALIAS:Z

    sput-boolean v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->ANTI_ALIAS:Z

    .line 123
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 124
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 125
    new-instance v0, Landroid/text/TextPaint;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT_DUPLICATE:Landroid/text/TextPaint;

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->ALPHA_PAINT:Landroid/graphics/Paint;

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 128
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->UNDERLINE_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 131
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x800

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AbsDisplayer;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    .line 58
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HIT_CACHE_COUNT:I

    .line 61
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->NO_CACHE_COUNT:I

    .line 185
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->density:F

    .line 187
    const/16 v0, 0xa0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    .line 189
    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    .line 191
    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    .line 195
    iput v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    .line 197
    iput v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    .line 45
    return-void
.end method

.method private static applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V
    .locals 3

    .prologue
    const v1, 0xffffff

    .line 459
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->isTranslucent:Z

    if-eqz v0, :cond_3

    .line 460
    if-eqz p2, :cond_2

    .line 461
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 462
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    int-to-float v0, v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->transparency:I

    int-to-float v1, v1

    sget v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 465
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 484
    :goto_2
    return-void

    .line 461
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    .line 464
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->transparency:I

    goto :goto_1

    .line 467
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->transparency:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 472
    :cond_3
    if-eqz p2, :cond_6

    .line 473
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 474
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    .line 476
    :goto_4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 473
    :cond_4
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_3

    .line 475
    :cond_5
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    goto :goto_4

    .line 478
    :cond_6
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 479
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2
.end method

.method private static applyTextScaleConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 487
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget-boolean v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->isTextScaled:Z

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 490
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sCachedScaleSize:Ljava/util/Map;

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 491
    if-eqz v0, :cond_1

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sLastScaleTextSize:F

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 492
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    sput v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sLastScaleTextSize:F

    .line 493
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->DEFAULT:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;

    iget v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DanmakuGlobalConfig;->scaleTextSize:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 494
    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sCachedScaleSize:Ljava/util/Map;

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private calcPaintWH(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 518
    .line 519
    invoke-static {p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 520
    iget-object v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 522
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->setDanmakuPaintWidthAndHeight(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;FF)V

    .line 534
    :goto_1
    return-void

    .line 521
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 526
    :cond_1
    iget-object v3, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v4, :cond_2

    .line 533
    iget-object v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->setDanmakuPaintWidthAndHeight(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;FF)V

    goto :goto_1

    .line 526
    :cond_2
    aget-object v5, v3, v1

    .line 527
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 528
    invoke-virtual {p2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 529
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 526
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static clearTextHeightCache()V
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 562
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sCachedScaleSize:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 563
    return-void
.end method

.method public static drawDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V
    .locals 11

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 336
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->padding:I

    int-to-float v0, v0

    add-float v1, p2, v0

    .line 337
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->padding:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    .line 338
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v2, :cond_0

    .line 339
    add-float/2addr v1, v5

    .line 340
    add-float/2addr v0, v5

    .line 343
    :cond_0
    sget-boolean v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_STROKE:Z

    sput-boolean v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    .line 344
    sget-boolean v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_SHADOW:Z

    sput-boolean v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    .line 345
    sget-boolean v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_HAS_PROJECTION:Z

    sput-boolean v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    .line 346
    if-nez p4, :cond_5

    sget-boolean v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->CONFIG_ANTI_ALIAS:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->ANTI_ALIAS:Z

    .line 347
    invoke-static {p0, p4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getPaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;

    move-result-object v7

    .line 348
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 349
    iget-object v8, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    .line 350
    array-length v2, v8

    if-ne v2, v3, :cond_6

    .line 351
    invoke-static {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->hasStroke(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-static {p0, v7, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 354
    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v2, v0, v2

    .line 355
    sget-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v3, :cond_d

    .line 356
    sget v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    add-float/2addr v3, v1

    .line 357
    sget v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    add-float/2addr v2, v5

    .line 359
    :goto_1
    aget-object v5, v8, v4

    invoke-virtual {p1, v5, v3, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 361
    :cond_1
    invoke-static {p0, v7, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 362
    aget-object v2, v8, v4

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p1, v2, v1, v0, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 399
    :cond_2
    :goto_2
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->underlineColor:I

    if-eqz v0, :cond_3

    .line 400
    invoke-static {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getUnderlinePaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;

    move-result-object v5

    .line 401
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float/2addr v0, p3

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->UNDERLINE_HEIGHT:I

    int-to-float v1, v1

    sub-float v2, v0, v1

    .line 402
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    add-float v3, p2, v0

    move-object v0, p1

    move v1, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v0, :cond_4

    .line 407
    invoke-static {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getBorderPaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;

    move-result-object v5

    .line 408
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    add-float v3, p2, v0

    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    add-float v4, p3, v0

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 416
    :cond_4
    return-void

    :cond_5
    move v2, v4

    .line 346
    goto :goto_0

    .line 364
    :cond_6
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    iget v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    array-length v5, v8

    int-to-float v5, v5

    div-float v9, v2, v5

    move v2, v4

    .line 365
    :goto_3
    array-length v5, v8

    if-ge v2, v5, :cond_2

    .line 366
    aget-object v5, v8, v2

    if-eqz v5, :cond_8

    aget-object v5, v8, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 367
    invoke-static {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->hasStroke(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 370
    invoke-static {p0, v7, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 372
    int-to-float v5, v2

    mul-float/2addr v5, v9

    add-float/2addr v5, v0

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    .line 373
    sget-boolean v6, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v6, :cond_c

    .line 374
    sget v6, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    add-float/2addr v6, v1

    .line 375
    sget v10, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    add-float/2addr v5, v10

    .line 377
    :goto_4
    aget-object v10, v8, v2

    invoke-virtual {p1, v10, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 379
    :cond_7
    invoke-static {p0, v7, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 380
    aget-object v5, v8, v2

    int-to-float v6, v2

    mul-float/2addr v6, v9

    add-float/2addr v6, v0

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float/2addr v6, v10

    invoke-virtual {p1, v5, v1, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 365
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 384
    :cond_9
    invoke-static {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->hasStroke(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 385
    invoke-static {p0, v7, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 387
    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v2, v0, v2

    .line 388
    sget-boolean v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v3, :cond_b

    .line 389
    sget v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    add-float/2addr v3, v1

    .line 390
    sget v5, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    add-float/2addr v2, v5

    .line 392
    :goto_5
    iget-object v5, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {p1, v5, v3, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 394
    :cond_a
    invoke-static {p0, v7, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 395
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p1, v2, v1, v0, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_b
    move v3, v1

    goto :goto_5

    :cond_c
    move v6, v1

    goto :goto_4

    :cond_d
    move v3, v1

    goto/16 :goto_1
.end method

.method public static getBorderPaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 423
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->BORDER_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method private static final getMaximumBitmapHeight(Landroid/graphics/Canvas;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private static final getMaximumBitmapWidth(Landroid/graphics/Canvas;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public static getPaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getPaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method private static getPaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Z)Landroid/text/TextPaint;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    if-eqz p1, :cond_1

    .line 435
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT_DUPLICATE:Landroid/text/TextPaint;

    .line 436
    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 440
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 441
    invoke-static {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyTextScaleConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;)V

    .line 444
    sget-boolean v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    cmpg-float v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    if-nez v1, :cond_2

    .line 445
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 449
    :goto_1
    sget-boolean v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->ANTI_ALIAS:Z

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 450
    return-object v0

    .line 438
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    goto :goto_0

    .line 447
    :cond_2
    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_1
.end method

.method private static getTextHeight(Landroid/text/TextPaint;)F
    .locals 4

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 551
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 552
    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 554
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 555
    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sTextHeightCache:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getUnderlinePaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 428
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->underlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->UNDERLINE_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method private static hasStroke(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    .locals 2

    .prologue
    .line 419
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_PROJECTION:Z

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPaintAlpha(Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    if-eq v0, v1, :cond_0

    .line 299
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 301
    :cond_0
    return-void
.end method

.method private restoreCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 305
    return-void
.end method

.method private saveCanvas(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)I
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->rotationY:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->rotationZ:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 315
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 317
    return v0
.end method

.method private setDanmakuPaintWidthAndHeight(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;FF)V
    .locals 4

    .prologue
    const/high16 v3, 0x41000000    # 8.0f

    .line 538
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v1, p2, v0

    .line 539
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->padding:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, p3

    .line 541
    iget v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->borderColor:I

    if-eqz v2, :cond_0

    .line 542
    add-float/2addr v1, v3

    .line 543
    add-float/2addr v0, v3

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getStrokeWidth()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 546
    iput v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 547
    return-void
.end method

.method public static setFakeBoldText(Z)V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 177
    return-void
.end method

.method public static setPaintStorkeWidth(F)V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 164
    sput p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    .line 165
    return-void
.end method

.method public static setProjectionConfig(FFI)V
    .locals 3

    .prologue
    const/16 v1, 0xff

    const/high16 v0, 0x3f800000    # 1.0f

    .line 168
    sget v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    cmpl-float v2, v2, p0

    if-nez v2, :cond_0

    sget v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    sget v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    if-eq v2, p2, :cond_2

    .line 169
    :cond_0
    cmpl-float v2, p0, v0

    if-lez v2, :cond_3

    :goto_0
    sput p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetX:F

    .line 170
    cmpl-float v2, p1, v0

    if-lez v2, :cond_4

    :goto_1
    sput p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionOffsetY:F

    .line 171
    if-gez p2, :cond_5

    const/4 p2, 0x0

    :cond_1
    :goto_2
    sput p2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->sProjectionAlpha:I

    .line 173
    :cond_2
    return-void

    :cond_3
    move p0, v0

    .line 169
    goto :goto_0

    :cond_4
    move p1, v0

    .line 170
    goto :goto_1

    .line 171
    :cond_5
    if-le p2, v1, :cond_1

    move p2, v1

    goto :goto_2
.end method

.method public static setShadowRadius(F)V
    .locals 0

    .prologue
    .line 159
    sput p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    .line 160
    return-void
.end method

.method public static setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 156
    :cond_0
    return-void
.end method

.method private update(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->width:I

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->height:I

    .line 204
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getMaximumBitmapWidth(Landroid/graphics/Canvas;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    .line 206
    invoke-static {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getMaximumBitmapHeight(Landroid/graphics/Canvas;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getTop()F

    move-result v5

    .line 240
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getLeft()F

    move-result v6

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 243
    const/4 v3, 0x0

    .line 245
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_9

    .line 246
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v0

    sget v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->TRANSPARENT:I

    if-ne v0, v4, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->rotationZ:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_2

    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->rotationY:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_8

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->saveCanvas(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FF)I

    move v0, v2

    .line 254
    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v4

    .line 255
    sget v7, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    if-eq v4, v7, :cond_7

    .line 256
    sget-object v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->ALPHA_PAINT:Landroid/graphics/Paint;

    .line 257
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v4, v3

    move v3, v0

    .line 262
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    sget v7, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->TRANSPARENT:I

    if-eq v0, v7, :cond_0

    .line 269
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->cache:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDrawingCache;

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCache;->get()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_4

    .line 272
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, v6, v5, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/DrawingCacheHolder;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z

    move-result v1

    .line 277
    :cond_4
    if-nez v1, :cond_6

    .line 278
    if-eqz v4, :cond_5

    .line 279
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 283
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1, v0, v6, v5, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->drawDanmaku(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Canvas;FFZ)V

    .line 284
    const/4 v1, 0x2

    .line 287
    :goto_4
    if-eqz v3, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->restoreCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 281
    :cond_5
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->PAINT:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->resetPaintAlpha(Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move-object v4, v3

    move v3, v0

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    move-object v4, v3

    move v3, v1

    goto :goto_2
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->density:F

    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    return v0
.end method

.method public getExtraData()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public bridge synthetic getExtraData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getExtraData()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->height:I

    return v0
.end method

.method public getMaximumCacheHeight()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapHeight:I

    return v0
.end method

.method public getMaximumCacheWidth()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mMaximumBitmapWidth:I

    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    return v0
.end method

.method public getSlopPixel()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .prologue
    .line 610
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-eqz v0, :cond_0

    .line 611
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    sget v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 619
    :goto_0
    return v0

    .line 613
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_SHADOW:Z

    if-eqz v0, :cond_1

    .line 614
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->SHADOW_RADIUS:F

    goto :goto_0

    .line 616
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-eqz v0, :cond_2

    .line 617
    sget v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->STROKE_WIDTH:F

    goto :goto_0

    .line 619
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->width:I

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    return v0
.end method

.method public measure(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)V
    .locals 2

    .prologue
    .line 501
    invoke-static {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getPaint(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Landroid/text/TextPaint;

    move-result-object v0

    .line 502
    sget-boolean v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-eqz v1, :cond_0

    .line 503
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 505
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->calcPaintWH(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/text/TextPaint;)V

    .line 506
    sget-boolean v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->HAS_STROKE:Z

    if-eqz v1, :cond_1

    .line 507
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->applyPaintConfig(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Landroid/graphics/Paint;Z)V

    .line 509
    :cond_1
    return-void
.end method

.method public resetSlopPixel(F)V
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->density:F

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 573
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 574
    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    .line 575
    float-to-int v1, v0

    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 576
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 577
    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mSlopPixel:I

    .line 578
    :cond_0
    return-void
.end method

.method public setDensities(FIF)V
    .locals 0

    .prologue
    .line 587
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->density:F

    .line 588
    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->densityDpi:I

    .line 589
    iput p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->scaledDensity:F

    .line 590
    return-void
.end method

.method public setExtraData(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->update(Landroid/graphics/Canvas;)V

    .line 601
    return-void
.end method

.method public bridge synthetic setExtraData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->setExtraData(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setHardwareAccelerated(Z)V
    .locals 0

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->mIsHardwareAccelerated:Z

    .line 625
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .prologue
    .line 594
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->width:I

    .line 595
    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/AndroidDisplayer;->height:I

    .line 596
    return-void
.end method
