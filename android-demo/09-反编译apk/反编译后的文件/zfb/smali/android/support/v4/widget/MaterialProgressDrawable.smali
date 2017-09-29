.class Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field static final DEFAULT:I = 0x1

.field static final LARGE:I

.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private final c:[I

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

.field private f:F

.field private g:Landroid/content/res/Resources;

.field private h:Landroid/view/View;

.field private i:Landroid/view/animation/Animation;

.field private j:F

.field private k:D

.field private l:D

.field private final m:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-array v0, v3, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->c:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/MaterialProgressDrawable$3;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->m:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/content/res/Resources;

    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->m:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->c:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    new-instance v1, Landroid/support/v4/widget/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$1;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v2, Landroid/support/v4/widget/MaterialProgressDrawable;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$2;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/animation/Animation;

    return-void
.end method

.method private static a(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    .locals 6

    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(DDDDFF)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:D

    float-to-double v2, v1

    mul-double/2addr v2, p3

    iput-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    double-to-float v2, p7

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    float-to-double v2, v1

    mul-double/2addr v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    mul-float v2, p9, v1

    mul-float/2addr v1, p10

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    iget-wide v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:D

    double-to-int v1, v1

    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setInsets(II)V

    return-void
.end method

.method private static a(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 9

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    sub-float v0, p0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColor()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v1, v1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v6, v3

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x18

    sub-int v6, v7, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    sub-int v4, v8, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 4

    invoke-static {p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v3

    sub-float v1, v3, v1

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/MaterialProgressDrawable;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:F

    return v0
.end method

.method static synthetic access$402(Landroid/support/v4/widget/MaterialProgressDrawable;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->l:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->k:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setAlpha(I)V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method setRotation(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:F

    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    return-void
.end method

.method public showArrow(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    return-void
.end method

.method public updateSizes(I)V
    .locals 13
    .param p1    # I
        .annotation build Landroid/support/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v11, 0x4044000000000000L    # 40.0

    if-nez p1, :cond_0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object v0, p0

    move-wide v3, v1

    invoke-direct/range {v0 .. v10}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(DDDDFF)V

    :goto_0
    return-void

    :cond_0
    const-wide v5, 0x4021800000000000L    # 8.75

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x40a00000    # 5.0f

    move-object v0, p0

    move-wide v1, v11

    move-wide v3, v11

    invoke-direct/range {v0 .. v10}, Landroid/support/v4/widget/MaterialProgressDrawable;->a(DDDDFF)V

    goto :goto_0
.end method
