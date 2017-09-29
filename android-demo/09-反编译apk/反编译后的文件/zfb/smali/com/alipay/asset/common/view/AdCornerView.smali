.class public Lcom/alipay/asset/common/view/AdCornerView;
.super Lcom/alipay/mobile/commonui/widget/APImageView;
.source "AdCornerView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->a:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/alipay/asset/common/view/AdCornerView;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->a:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/alipay/asset/common/view/AdCornerView;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->a:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/alipay/asset/common/view/AdCornerView;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v1, 0x37

    const/16 v2, 0xff

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->b:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 38
    iget-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->c:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 42
    iget-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 43
    iget-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AdCornerView;->getMeasuredWidth()I

    move-result v1

    .line 54
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AdCornerView;->getMeasuredHeight()I

    move-result v0

    .line 55
    if-le v1, v0, :cond_1

    .line 57
    :goto_0
    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x9

    .line 58
    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x9

    .line 59
    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 61
    mul-int/lit8 v4, v3, 0x7

    div-int/lit8 v4, v4, 0x8

    sub-int v4, v1, v4

    .line 62
    mul-int/lit8 v5, v3, 0x7

    div-int/lit8 v5, v5, 0x8

    .line 63
    iget-object v6, p0, Lcom/alipay/asset/common/view/AdCornerView;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_0

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/asset/common/view/AdCornerView;->a:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/asset/common/view/AdCornerView;->a:Ljava/lang/String;

    .line 76
    :cond_0
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 77
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 78
    sub-int v2, v1, v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v6, v2, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 79
    sub-int v2, v1, v3

    int-to-float v2, v2

    invoke-virtual {v6, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    int-to-float v2, v1

    int-to-float v7, v3

    invoke-virtual {v6, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    int-to-float v1, v1

    add-int v2, v3, v3

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    iget-object v1, p0, Lcom/alipay/asset/common/view/AdCornerView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 85
    iget-object v1, p0, Lcom/alipay/asset/common/view/AdCornerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    const/high16 v0, 0x42340000    # 45.0f

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 87
    iget-object v0, p0, Lcom/alipay/asset/common/view/AdCornerView;->a:Ljava/lang/String;

    int-to-float v1, v4

    int-to-float v2, v5

    iget-object v3, p0, Lcom/alipay/asset/common/view/AdCornerView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    const/high16 v0, -0x3dcc0000    # -45.0f

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 90
    invoke-virtual {p1, v10, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    return-void

    :cond_1
    move v0, v1

    .line 55
    goto/16 :goto_0
.end method

.method public setAdvertText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/asset/common/view/AdCornerView;->a:Ljava/lang/String;

    .line 48
    return-void
.end method
