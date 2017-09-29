.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;


# static fields
.field public static final DEFAULT:I = 0x1

.field public static final LARGE:I

.field private static final a:Ljava/lang/String;

.field private static final u:[I


# instance fields
.field private A:Landroid/view/animation/Animation;

.field private B:Landroid/view/animation/Animation;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:F

.field private F:Z

.field private G:I

.field private H:I

.field private I:Z

.field private J:Landroid/view/animation/Animation$AnimationListener;

.field private final K:Landroid/view/animation/Animation;

.field private final L:Landroid/view/animation/Animation;

.field private final M:Landroid/view/animation/Animation;

.field private b:Landroid/view/View;

.field private c:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private d:Z

.field private e:I

.field private f:F

.field private g:F

.field private final h:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final i:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final j:[I

.field private k:I

.field private l:I

.field private m:Z

.field protected mFrom:I

.field protected mOriginalOffsetTop:I

.field private n:F

.field private o:F

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Z

.field private final t:Landroid/view/animation/DecelerateInterpolator;

.field private v:Landroid/support/v4/widget/CircleImageView;

.field private w:I

.field private x:F

.field private y:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v1, -0x1

    const v5, -0x50506

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:[I

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->L:Landroid/view/animation/Animation;

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:I

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/DecelerateInterpolator;

    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->u:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:I

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    new-instance v1, Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v1, v2, v5, v3}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    new-instance v1, Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:Landroid/support/v4/view/NestedScrollingParentHelper;

    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-static {p0, p1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0
.end method

.method private a(II)Landroid/view/animation/Animation;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(F)V
    .locals 1

    invoke-static {}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private a(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->offsetTopAndBottom(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->A:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-eq v0, p1, :cond_1

    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Z

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->K:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 3

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    return v0
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    return v0
.end method

.method static synthetic access$802(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    return p1
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(F)V
    .locals 14

    const/high16 v6, 0x40800000    # 4.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    sub-float v3, v0, v3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    :goto_0
    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v4, v3, v6

    float-to-double v4, v4

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v3, v4, v6

    double-to-float v3, v3

    mul-float/2addr v3, v11

    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v1, v10}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    div-float v1, p1, v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(F)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    if-le v1, v4, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    invoke-direct {p0, v1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->B:Landroid/view/animation/Animation;

    :cond_3
    mul-float v1, v2, v13

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v12, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    :cond_4
    :goto_1
    const/high16 v1, -0x41800000    # -0.25f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    return-void

    :cond_5
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    invoke-direct {p0, v1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method private c(F)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0, v2, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    if-eqz v2, :cond_4

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    invoke-static {}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    :goto_1
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$9;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$9;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->x:F

    goto :goto_1

    :cond_4
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->t:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->M:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    iget p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    goto :goto_1

    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    if-ne v1, v4, :cond_4

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    sub-float v0, v1, v0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->o:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:F

    iput-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->m:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    if-ne v1, v2, :cond_4

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->w:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-lez p3, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v4

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    :goto_0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->j:[I

    aget v1, p4, v5

    sub-int v1, p2, v1

    aget v2, p4, v4

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget v1, p4, v5

    aget v2, v0, v5

    add-int/2addr v1, v2

    aput v1, p4, v5

    aget v1, p4, v4

    aget v0, v0, v4

    add-int/2addr v0, v1

    aput v0, p4, v4

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    aput p3, p4, v4

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    if-gez p5, :cond_0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->h:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->g:F

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->s:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    goto :goto_1

    :pswitch_2
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    if-gez v2, :cond_4

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(F)V

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_5
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    if-ne v3, v5, :cond_5

    if-ne v2, v1, :cond_1

    sget-object v1, Landroid/support/v4/widget/SwipeRefreshLayout;->a:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->n:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->p:Z

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->c(F)V

    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->q:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->f:F

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->c:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1

    int-to-float v0, p2

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 2

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->r:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v0, p3

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->d:Z

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->I:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->l:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(IZ)V

    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->F:Z

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->J:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    :cond_0
    new-instance v1, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->k:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_2
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->E:F

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZZ)V

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->v:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->y:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->G:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->H:I

    goto :goto_1
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
