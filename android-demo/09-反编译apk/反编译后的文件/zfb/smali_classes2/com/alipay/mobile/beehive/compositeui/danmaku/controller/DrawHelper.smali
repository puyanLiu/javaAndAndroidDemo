.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;
.super Ljava/lang/Object;
.source "DrawHelper.java"


# static fields
.field public static PAINT:Landroid/graphics/Paint;

.field public static PAINT_FPS:Landroid/graphics/Paint;

.field public static RECT:Landroid/graphics/RectF;

.field private static USE_DRAWCOLOR_MODE_CLEAR:Z

.field private static USE_DRAWCOLOR_TO_CLEAR_CANVAS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->USE_DRAWCOLOR_TO_CLEAR_CANVAS:Z

    .line 34
    sput-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->USE_DRAWCOLOR_MODE_CLEAR:Z

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 38
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->PAINT:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->RECT:Landroid/graphics/RectF;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCanvas(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 61
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->USE_DRAWCOLOR_TO_CLEAR_CANVAS:Z

    if-eqz v0, :cond_1

    .line 62
    sget-boolean v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->USE_DRAWCOLOR_MODE_CLEAR:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->RECT:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->RECT:Landroid/graphics/RectF;

    invoke-static {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public static clearCanvas(Landroid/graphics/Canvas;FFFF)V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->RECT:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->RECT:Landroid/graphics/RectF;

    invoke-static {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 80
    return-void
.end method

.method private static clearCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static drawFPS(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 49
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->PAINT_FPS:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 51
    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->PAINT_FPS:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->PAINT_FPS:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/lit16 v0, v0, -0xc8

    .line 56
    add-int/lit8 v1, v0, -0x32

    int-to-float v1, v1

    sget-object v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->PAINT_FPS:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v4, v1, v2, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;FFFF)V

    .line 57
    int-to-float v0, v0

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->PAINT_FPS:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v4, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 58
    return-void
.end method

.method public static fillTransparent(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    return-void
.end method

.method public static useDrawColorToClearCanvas(ZZ)V
    .locals 0

    .prologue
    .line 44
    sput-boolean p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->USE_DRAWCOLOR_TO_CLEAR_CANVAS:Z

    .line 45
    sput-boolean p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DrawHelper;->USE_DRAWCOLOR_MODE_CLEAR:Z

    .line 46
    return-void
.end method
