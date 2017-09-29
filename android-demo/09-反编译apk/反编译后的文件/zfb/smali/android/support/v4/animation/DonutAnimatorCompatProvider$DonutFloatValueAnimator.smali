.class Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/animation/ValueAnimatorCompat;


# instance fields
.field private a:J

.field private b:J

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Runnable;

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field mTarget:Landroid/view/View;

.field mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorUpdateListenerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->b:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->c:F

    iput-boolean v2, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->d:Z

    iput-boolean v2, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->e:Z

    new-instance v0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;-><init>(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->a:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->b:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->c:F

    return v0
.end method

.method static synthetic access$302(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;F)F
    .locals 0

    iput p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->c:F

    return p1
.end method

.method static synthetic access$400(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->a()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->f:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->e:Z

    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->a()V

    goto :goto_0
.end method

.method public getAnimatedFraction()F
    .locals 1

    iget v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->c:F

    return v0
.end method

.method public setDuration(J)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->d:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->b:J

    :cond_0
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    return-void
.end method

.method public start()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->d:Z

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->c:F

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->a:J

    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
