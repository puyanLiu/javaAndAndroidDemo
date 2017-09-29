.class public Lcom/flybird/BorderHelper;
.super Ljava/lang/Object;
.source "BorderHelper.java"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:Landroid/graphics/drawable/GradientDrawable;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/flybird/BorderHelper;->a:Landroid/graphics/Path;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flybird/BorderHelper;->b:Landroid/graphics/Rect;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flybird/BorderHelper;->c:Landroid/graphics/RectF;

    .line 18
    iput v1, p0, Lcom/flybird/BorderHelper;->d:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 22
    iput v1, p0, Lcom/flybird/BorderHelper;->f:I

    .line 24
    iput v1, p0, Lcom/flybird/BorderHelper;->g:I

    .line 10
    return-void
.end method


# virtual methods
.method public clipBorder(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 38
    iget v0, p0, Lcom/flybird/BorderHelper;->g:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/flybird/BorderHelper;->d:I

    if-lez v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/flybird/BorderHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 41
    :cond_1
    iget v0, p0, Lcom/flybird/BorderHelper;->d:I

    if-lez v0, :cond_2

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/flybird/BorderHelper;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/flybird/BorderHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 44
    iget-object v0, p0, Lcom/flybird/BorderHelper;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flybird/BorderHelper;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/flybird/BorderHelper;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/flybird/BorderHelper;->d:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 45
    iget-object v0, p0, Lcom/flybird/BorderHelper;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 74
    iput-object v0, p0, Lcom/flybird/BorderHelper;->b:Landroid/graphics/Rect;

    .line 75
    iput-object v0, p0, Lcom/flybird/BorderHelper;->c:Landroid/graphics/RectF;

    .line 76
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iget v0, p0, Lcom/flybird/BorderHelper;->g:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/flybird/BorderHelper;->d:I

    if-lez v0, :cond_4

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_3

    .line 54
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 55
    iget-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 56
    iget v0, p0, Lcom/flybird/BorderHelper;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 57
    iput v3, p0, Lcom/flybird/BorderHelper;->f:I

    .line 59
    :cond_1
    iget v0, p0, Lcom/flybird/BorderHelper;->g:I

    if-lez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flybird/BorderHelper;->g:I

    iget v2, p0, Lcom/flybird/BorderHelper;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 63
    iget v0, p0, Lcom/flybird/BorderHelper;->d:I

    if-lez v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/flybird/BorderHelper;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/flybird/BorderHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 68
    iget-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    :cond_4
    return-void
.end method

.method public setBorder(II)V
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/flybird/BorderHelper;->f:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/flybird/BorderHelper;->g:I

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    .line 32
    :goto_0
    iput p1, p0, Lcom/flybird/BorderHelper;->f:I

    .line 33
    iput p2, p0, Lcom/flybird/BorderHelper;->g:I

    .line 34
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/BorderHelper;->e:Landroid/graphics/drawable/GradientDrawable;

    .line 35
    :cond_0
    return-void

    .line 31
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBorderadius(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/flybird/BorderHelper;->d:I

    .line 28
    return-void
.end method
