.class public Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field public static final STATE_NOTHING:[I


# instance fields
.field private final A:Lcom/alipay/mobile/socialsdk/api/view/h;

.field private B:Landroid/graphics/Rect;

.field private C:I

.field private D:Lcom/alipay/mobile/socialsdk/api/view/k;

.field private E:Lcom/alipay/mobile/socialsdk/api/view/j;

.field private F:Lcom/alipay/mobile/socialsdk/api/view/i;

.field private G:Lcom/alipay/mobile/socialsdk/api/view/m;

.field private H:Ljava/lang/Runnable;

.field private I:I

.field private J:Z

.field private K:Z

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:I

.field private final N:Landroid/graphics/Rect;

.field private O:I

.field private final P:I

.field private Q:Z

.field private R:Z

.field private S:Lcom/alipay/mobile/socialsdk/api/view/p;

.field private T:Z

.field private U:I

.field private V:I

.field private W:J

.field private Z:J

.field final a:[Z

.field private aa:I

.field private ab:I

.field private ac:J

.field private ad:I

.field private ae:J

.field private af:I

.field private ag:J

.field private ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

.field private ai:I

.field private aj:Landroid/util/SparseBooleanArray;

.field private ak:Landroid/view/ContextMenu$ContextMenuInfo;

.field private al:I

.field private am:I

.field private an:I

.field private ao:Landroid/view/VelocityTracker;

.field private final ap:Landroid/widget/Scroller;

.field private aq:Landroid/support/v4/widget/EdgeEffectCompat;

.field private ar:Landroid/support/v4/widget/EdgeEffectCompat;

.field private as:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;

.field private at:I

.field private au:Landroid/view/View;

.field private av:Lcom/alipay/mobile/socialsdk/api/view/l;

.field private aw:I

.field private ax:I

.field b:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ListAdapter;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Lcom/alipay/mobile/socialsdk/api/view/n;

.field private j:Lcom/alipay/mobile/socialsdk/api/view/g;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

.field private final t:I

.field private final u:I

.field private final v:I

.field private w:F

.field private x:F

.field private y:I

.field private final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->STATE_NOTHING:[I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const-wide/high16 v7, -0x8000000000000000L

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a:[Z

    .line 282
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    .line 283
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    .line 285
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 286
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 287
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->an:I

    .line 289
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h:Z

    .line 291
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ak:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 293
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->as:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;

    .line 294
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->at:I

    .line 296
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->t:I

    .line 298
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u:I

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v:I

    .line 300
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->P:I

    .line 302
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    .line 304
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    .line 306
    iput-boolean v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    .line 308
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k:Z

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    .line 312
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/h;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/h;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->A:Lcom/alipay/mobile/socialsdk/api/view/h;

    .line 314
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->M:I

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    .line 317
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aa:I

    .line 319
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    .line 321
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aa:I

    .line 322
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    .line 323
    iput-wide v7, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ac:J

    .line 324
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    .line 325
    iput-wide v7, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ae:J

    .line 326
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->af:I

    .line 327
    iput-wide v7, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ag:J

    .line 329
    sget-object v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    .line 330
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    .line 331
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    .line 332
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    .line 334
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/api/view/n;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    .line 335
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    .line 337
    iput-boolean v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p:Z

    .line 339
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 340
    iput-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 342
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setClickable(Z)V

    .line 343
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setFocusableInTouchMode(Z)V

    .line 344
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setWillNotDraw(Z)V

    .line 345
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setWillNotDraw(Z)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setClipToPadding(Z)V

    .line 349
    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    .line 351
    sget-object v0, Lcom/alipay/mobile/socialsdk/R$styleable;->HorizontalListView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 353
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->K:Z

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 361
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f()V

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w()V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/api/view/n;->b()V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    .line 363
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 364
    if-ltz v1, :cond_1

    .line 365
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->values()[Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setChoiceMode(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;)V

    .line 368
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 370
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f()V

    .line 371
    return-void

    .line 300
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v0

    goto/16 :goto_0
.end method

.method private A()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 6061
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 6063
    :goto_0
    if-eqz v0, :cond_3

    .line 6064
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->au:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6065
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->au:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6066
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setVisibility(I)V

    .line 6076
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-eqz v0, :cond_0

    .line 6077
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->layout(IIII)V

    .line 6086
    :cond_0
    :goto_2
    return-void

    .line 6061
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6070
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setVisibility(I)V

    goto :goto_1

    .line 6080
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->au:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 6081
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->au:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6084
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a()I
    .locals 3

    .prologue
    .line 2116
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 2118
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    const/16 v2, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 2116
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method private a(IZ)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 3409
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 3410
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v0

    .line 3438
    :cond_1
    :goto_0
    return p1

    .line 3414
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    .line 3415
    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p:Z

    if-nez v3, :cond_7

    .line 3416
    if-eqz p2, :cond_6

    .line 3417
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3418
    :goto_1
    if-ge p1, v2, :cond_3

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3428
    :cond_3
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_1

    :cond_4
    move p1, v0

    .line 3429
    goto :goto_0

    .line 3419
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3422
    :cond_6
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3423
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3424
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 3434
    :cond_7
    if-ltz p1, :cond_8

    if-lt p1, v2, :cond_1

    :cond_8
    move p1, v0

    .line 3435
    goto :goto_0
.end method

.method private a(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2401
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2403
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v0

    .line 2404
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2407
    :goto_1
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 2408
    :goto_2
    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move v4, v3

    .line 2410
    :goto_3
    const/4 v3, 0x0

    .line 2411
    if-ge v4, v0, :cond_4

    .line 2412
    sub-int/2addr v0, v4

    .line 2417
    :goto_4
    return v0

    .line 2403
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 2405
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 2407
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 2408
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move v4, v3

    goto :goto_3

    .line 2413
    :cond_4
    if-le v2, v1, :cond_5

    .line 2414
    sub-int v0, v2, v1

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_4
.end method

.method private a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)I
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 4448
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4449
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4454
    :goto_0
    return v0

    .line 4450
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_1

    .line 4451
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4452
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 4454
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->width:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 5384
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method private a(IIZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 4700
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    .line 4702
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v4

    move v3, p2

    .line 4705
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-nez v0, :cond_1

    .line 4710
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/n;->b(I)Landroid/view/View;

    move-result-object v1

    .line 4711
    if-eqz v1, :cond_1

    .line 4714
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;IIIZZZ)V

    .line 4726
    :goto_1
    return-object v1

    .line 4704
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v3

    move v4, p2

    goto :goto_0

    .line 4721
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a:[Z

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 4724
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;IIIZZZ)V

    goto :goto_1
.end method

.method private a(I[Z)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5271
    aput-boolean v4, p2, v4

    .line 5273
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/n;->c(I)Landroid/view/View;

    move-result-object v1

    .line 5274
    if-eqz v1, :cond_0

    .line 5317
    :goto_0
    return-object v1

    .line 5278
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/n;->d(I)Landroid/view/View;

    move-result-object v1

    .line 5281
    if-eqz v1, :cond_6

    .line 5282
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5284
    if-eq v0, v1, :cond_5

    .line 5285
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Landroid/view/View;I)V

    move-object v1, v0

    .line 5293
    :goto_1
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 5294
    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5297
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o:Z

    if-eqz v0, :cond_3

    .line 5298
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    .line 5300
    if-nez v0, :cond_7

    .line 5301
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y()Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    move-result-object v0

    .line 5306
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->b:J

    .line 5308
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5311
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->av:Lcom/alipay/mobile/socialsdk/api/view/l;

    if-nez v0, :cond_4

    .line 5312
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/l;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/socialsdk/api/view/l;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->av:Lcom/alipay/mobile/socialsdk/api/view/l;

    .line 5315
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->av:Lcom/alipay/mobile/socialsdk/api/view/l;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    goto :goto_0

    .line 5287
    :cond_5
    aput-boolean v3, p2, v4

    move-object v1, v0

    goto :goto_1

    .line 5290
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 5302
    :cond_7
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5303
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;
    .locals 1

    .prologue
    .line 5490
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    .line 1722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Focus direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    .line 1725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Focus direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1728
    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 2707
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_5

    move v1, v5

    .line 2708
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_6

    move v2, p2

    .line 2709
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_7

    move v3, v5

    .line 2710
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_8

    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    .line 2711
    :goto_3
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_9

    move v7, v5

    .line 2713
    :goto_4
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_a

    iget v8, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->P:I

    .line 2714
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v0, v6, :cond_0

    move-object v0, p0

    move v6, v5

    invoke-super/range {v0 .. v9}, Landroid/widget/AdapterView;->overScrollBy(IIIIIIIIZ)Z

    .line 2716
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->P:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2718
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 2719
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2723
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    .line 2724
    if-eqz v0, :cond_2

    .line 2725
    if-ne v0, v9, :cond_4

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2726
    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 2728
    int-to-float v1, p2

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    :goto_6
    int-to-float v0, v0

    div-float v0, v1, v0

    .line 2729
    if-lez p1, :cond_c

    .line 2730
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2732
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2733
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 2743
    :cond_3
    :goto_7
    if-eqz p1, :cond_4

    .line 2744
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2747
    :cond_4
    return-void

    :cond_5
    move v1, p2

    .line 2707
    goto :goto_0

    :cond_6
    move v2, v5

    .line 2708
    goto :goto_1

    .line 2709
    :cond_7
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    goto :goto_2

    :cond_8
    move v4, v5

    .line 2710
    goto :goto_3

    .line 2711
    :cond_9
    iget v7, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->P:I

    goto :goto_4

    :cond_a
    move v8, v5

    .line 2713
    goto :goto_5

    .line 2728
    :cond_b
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v0

    goto :goto_6

    .line 2735
    :cond_c
    if-gez p1, :cond_3

    .line 2736
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2738
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2739
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_7
.end method

.method private a(ILandroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 3211
    if-eq p1, v5, :cond_0

    .line 3212
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->M:I

    .line 3215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 3216
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 3215
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3218
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->J:Z

    .line 3219
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3220
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->J:Z

    .line 3222
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 3223
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->refreshDrawableState()V

    .line 3226
    :cond_1
    return-void

    .line 3220
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    .line 3196
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3197
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3199
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 4964
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    .line 4967
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    .line 4968
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    .line 4973
    :goto_0
    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(II)Landroid/view/View;

    .line 4975
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v()V

    .line 4978
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_1

    .line 4979
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    .line 4984
    :goto_1
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(II)Landroid/view/View;

    .line 4985
    return-void

    .line 4970
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4981
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private a(Landroid/view/View;II)V
    .locals 5

    .prologue
    .line 1988
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1989
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)V

    .line 1991
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2003
    :cond_0
    return-void

    .line 1996
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 1999
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v1, v0, v1

    .line 2000
    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2001
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIIZZZ)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 4732
    if-eqz p6, :cond_5

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    .line 4733
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int v5, v1, v0

    .line 4734
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 4736
    if-lez v0, :cond_6

    const/4 v2, 0x3

    if-ge v0, v2, :cond_6

    .line 4737
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    if-ne v0, p2, :cond_6

    const/4 v0, 0x1

    move v2, v0

    .line 4739
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    xor-int v6, v2, v0

    .line 4740
    if-eqz p7, :cond_7

    if-nez v5, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v3, v0

    .line 4743
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    .line 4744
    if-nez v0, :cond_e

    .line 4745
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y()Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    move-result-object v0

    move-object v4, v0

    .line 4748
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    iput v0, v4, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->a:I

    .line 4750
    if-eqz p7, :cond_9

    iget-boolean v0, v4, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->d:Z

    if-nez v0, :cond_9

    .line 4751
    if-eqz p5, :cond_8

    const/4 v0, -0x1

    :goto_4
    invoke-virtual {p0, p1, v0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4757
    :goto_5
    if-eqz v5, :cond_0

    .line 4758
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4761
    :cond_0
    if-eqz v6, :cond_1

    .line 4762
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4765
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 4766
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 4767
    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 4774
    :cond_2
    :goto_6
    if-eqz v3, :cond_c

    .line 4775
    invoke-direct {p0, p1, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)V

    .line 4780
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 4781
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 4783
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_3

    if-nez p5, :cond_3

    sub-int/2addr p3, v1

    .line 4784
    :cond_3
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v2, :cond_4

    if-nez p5, :cond_4

    sub-int/2addr p4, v0

    .line 4786
    :cond_4
    if-eqz v3, :cond_d

    .line 4787
    add-int/2addr v0, p4

    .line 4788
    add-int/2addr v1, p3

    .line 4790
    invoke-virtual {p1, p4, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 4795
    :goto_8
    return-void

    .line 4732
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 4737
    :cond_6
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 4740
    :cond_7
    const/4 v0, 0x1

    move v3, v0

    goto :goto_2

    .line 4751
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 4753
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->d:Z

    .line 4754
    if-eqz p5, :cond_a

    const/4 v0, -0x1

    :goto_9
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v0, v4, v7}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 4768
    :cond_b
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4769
    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 4770
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    goto :goto_6

    .line 4777
    :cond_c
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_7

    .line 4792
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4793
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_8

    :cond_e
    move-object v4, v0

    goto/16 :goto_3
.end method

.method private a(Landroid/view/View;Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)V
    .locals 2

    .prologue
    .line 4474
    invoke-direct {p0, p2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)I

    move-result v0

    .line 4475
    invoke-direct {p0, p2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)I

    move-result v1

    .line 4476
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 4477
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 3210
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private a(IILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v0, 0x42

    const/16 v1, 0x21

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2442
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h:Z

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2581
    :cond_1
    :goto_0
    return v4

    .line 2446
    :cond_2
    iget-boolean v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-eqz v5, :cond_3

    .line 2447
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r()V

    .line 2451
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 2453
    if-eq v5, v4, :cond_4

    .line 2454
    sparse-switch p1, :sswitch_data_0

    :cond_4
    move v0, v3

    .line 2548
    :cond_5
    :goto_1
    if-nez v0, :cond_1

    .line 2552
    packed-switch v5, :pswitch_data_0

    move v4, v3

    .line 2581
    goto :goto_0

    .line 2456
    :sswitch_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_6

    .line 2457
    invoke-direct {p0, p3, p2, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1

    .line 2458
    :cond_6
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2459
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(I)Z

    move-result v0

    goto :goto_1

    .line 2464
    :sswitch_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_7

    .line 2465
    const/16 v0, 0x82

    invoke-direct {p0, p3, p2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1

    .line 2466
    :cond_7
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2467
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(I)Z

    move-result v0

    goto :goto_1

    .line 2473
    :sswitch_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v0, :cond_8

    .line 2474
    invoke-direct {p0, p3, p2, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1

    .line 2475
    :cond_8
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2476
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(I)Z

    move-result v0

    goto :goto_1

    .line 2481
    :sswitch_3
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v1, :cond_9

    .line 2482
    invoke-direct {p0, p3, p2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/KeyEvent;II)Z

    move-result v0

    goto :goto_1

    .line 2483
    :cond_9
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2484
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(I)Z

    move-result v0

    goto :goto_1

    .line 2490
    :sswitch_4
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2491
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v0

    .line 2492
    if-nez v0, :cond_5

    .line 2493
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 2494
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_2
    move v0, v4

    .line 2498
    goto :goto_1

    .line 2494
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_d
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isLongClickable()Z

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_e

    if-eqz v1, :cond_10

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_e
    :goto_3
    if-eqz v1, :cond_a

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->F:Lcom/alipay/mobile/socialsdk/api/view/i;

    if-nez v0, :cond_f

    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/i;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/i;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->F:Lcom/alipay/mobile/socialsdk/api/view/i;

    :cond_f
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->F:Lcom/alipay/mobile/socialsdk/api/view/i;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/i;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->F:Lcom/alipay/mobile/socialsdk/api/view/i;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_10
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_3

    .line 2501
    :sswitch_5
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2502
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2503
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_11

    const/16 v0, 0x82

    :cond_11
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(I)Z

    :cond_12
    :goto_4
    move v0, v4

    .line 2510
    goto/16 :goto_1

    .line 2504
    :cond_13
    invoke-static {p3, v4}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2505
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2506
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_5
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(I)Z

    goto :goto_4

    :cond_14
    move v0, v2

    goto :goto_5

    .line 2513
    :sswitch_6
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2514
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2515
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_15

    :goto_6
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(I)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v3

    goto/16 :goto_1

    :cond_15
    move v1, v2

    goto :goto_6

    :cond_16
    move v0, v4

    goto/16 :goto_1

    .line 2516
    :cond_17
    const/4 v0, 0x2

    invoke-static {p3, v0}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2517
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2518
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_18

    :goto_7
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(I)Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v3

    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_7

    :cond_19
    move v0, v4

    goto/16 :goto_1

    .line 2523
    :sswitch_7
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2524
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2525
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_1a

    const/16 v0, 0x82

    :cond_1a
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(I)Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v3

    goto/16 :goto_1

    :cond_1b
    move v0, v4

    goto/16 :goto_1

    .line 2526
    :cond_1c
    const/4 v1, 0x2

    invoke-static {p3, v1}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2527
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2528
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_1d

    const/16 v0, 0x82

    :cond_1d
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(I)Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v3

    goto/16 :goto_1

    :cond_1e
    move v0, v4

    goto/16 :goto_1

    .line 2533
    :sswitch_8
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2534
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2535
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_1f

    :goto_8
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(I)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v3

    goto/16 :goto_1

    :cond_1f
    move v1, v2

    goto :goto_8

    :cond_20
    move v0, v4

    goto/16 :goto_1

    .line 2540
    :sswitch_9
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2541
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v1

    if-nez v1, :cond_22

    .line 2542
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_21

    const/16 v0, 0x82

    :cond_21
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(I)Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v3

    goto/16 :goto_1

    :cond_22
    move v0, v4

    goto/16 :goto_1

    .line 2554
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AdapterView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2557
    :pswitch_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2561
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2562
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-ltz v0, :cond_24

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_24

    .line 2563
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2565
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2566
    if-eqz v0, :cond_23

    .line 2567
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget-wide v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ae:J

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2568
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2571
    :cond_23
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    goto/16 :goto_0

    :cond_24
    move v4, v3

    .line 2575
    goto/16 :goto_0

    .line 2578
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2454
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/KeyEvent;II)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2421
    .line 2423
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2424
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v0

    .line 2425
    if-nez v0, :cond_0

    .line 2426
    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-gtz p2, :cond_1

    .line 2438
    :cond_0
    :goto_1
    return v0

    .line 2427
    :cond_1
    invoke-direct {p0, p3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    move p2, v2

    .line 2428
    goto :goto_0

    .line 2434
    :cond_2
    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2435
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1710
    if-ne p1, p2, :cond_0

    move v0, v1

    .line 1717
    :goto_0
    return v0

    .line 1714
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1716
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1717
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1716
    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5456
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ak:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->performHapticFeedback(I)Z

    :cond_1
    return v0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)I
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 4459
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4460
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4465
    :goto_0
    return v0

    .line 4461
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v0, :cond_1

    .line 4462
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4463
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 4465
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->height:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(II)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 4832
    const/4 v2, 0x0

    .line 4834
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v0

    .line 4836
    :goto_0
    if-le p2, v0, :cond_0

    if-gez p1, :cond_2

    .line 4853
    :cond_0
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 4855
    return-object v2

    .line 4834
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 4837
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    move v3, v1

    .line 4838
    :goto_1
    invoke-direct {p0, p1, p2, v4, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 4840
    iget-boolean v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v5, :cond_4

    .line 4841
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    sub-int/2addr v5, v6

    .line 4846
    :goto_2
    if-eqz v3, :cond_5

    .line 4850
    :goto_3
    add-int/lit8 p1, p1, -0x1

    move-object v2, v1

    move p2, v5

    goto :goto_0

    :cond_3
    move v3, v4

    .line 4837
    goto :goto_1

    .line 4843
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    sub-int/2addr v5, v6

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_3
.end method

.method private b()V
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2595
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    .line 2597
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 4492
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    .line 4493
    if-nez v0, :cond_0

    .line 4494
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y()Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    move-result-object v0

    .line 4495
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4498
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->a:I

    .line 4499
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->d:Z

    .line 4503
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_1

    .line 4505
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)I

    move-result v0

    move v2, v0

    move v0, p3

    move p3, v2

    .line 4508
    :goto_0
    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 4512
    return-void

    .line 4507
    :cond_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    return-void
.end method

.method private b(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1750
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    .line 1753
    const/4 v2, -0x1

    .line 1755
    const/16 v3, 0x21

    if-eq p1, v3, :cond_0

    const/16 v3, 0x11

    if-ne p1, v3, :cond_2

    .line 1756
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v0

    .line 1762
    :goto_0
    if-gez v2, :cond_4

    .line 1789
    :cond_1
    :goto_1
    return v0

    .line 1757
    :cond_2
    const/16 v3, 0x82

    if-eq p1, v3, :cond_3

    const/16 v3, 0x42

    if-ne p1, v3, :cond_9

    .line 1758
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    .line 1759
    goto :goto_0

    .line 1766
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result v2

    .line 1767
    if-ltz v2, :cond_1

    .line 1768
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 1769
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    .line 1771
    if-eqz v3, :cond_5

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v4

    sub-int/2addr v0, v4

    if-le v2, v0, :cond_5

    .line 1772
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 1775
    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 1776
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 1779
    :cond_6
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k(I)V

    .line 1780
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d()V

    .line 1782
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1783
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->invalidate()V

    :cond_7
    move v0, v1

    .line 1786
    goto :goto_1

    .line 1769
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    :cond_9
    move v3, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    return v0
.end method

.method private c(II)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 4859
    const/4 v2, 0x0

    .line 4862
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4864
    :goto_0
    if-ge p2, v0, :cond_0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-lt p1, v1, :cond_2

    .line 4882
    :cond_0
    return-object v2

    .line 4862
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4865
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-ne p1, v1, :cond_3

    move v3, v4

    .line 4867
    :goto_1
    invoke-direct {p0, p1, p2, v4, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 4869
    iget-boolean v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v5, :cond_4

    .line 4870
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    add-int/2addr v5, v6

    .line 4875
    :goto_2
    if-eqz v3, :cond_5

    .line 4879
    :goto_3
    add-int/lit8 p1, p1, 0x1

    move-object v2, v1

    move p2, v5

    goto :goto_0

    .line 4865
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 4872
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    add-int/2addr v5, v6

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    .line 2604
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    return-void
.end method

.method private c(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1803
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    .line 1806
    const/16 v2, 0x21

    if-eq p1, v2, :cond_0

    const/16 v2, 0x11

    if-ne p1, v2, :cond_4

    .line 1807
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-eqz v2, :cond_2

    .line 1808
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result v0

    .line 1809
    if-ltz v0, :cond_1

    .line 1810
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 1811
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k(I)V

    .line 1812
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d()V

    :cond_1
    move v0, v1

    .line 1830
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1831
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i()Z

    .line 1832
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->invalidate()V

    .line 1835
    :cond_3
    return v0

    .line 1817
    :cond_4
    const/16 v2, 0x82

    if-eq p1, v2, :cond_5

    const/16 v2, 0x42

    if-ne p1, v2, :cond_2

    .line 1818
    :cond_5
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1819
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result v0

    .line 1820
    if-ltz v0, :cond_6

    .line 1821
    const/4 v2, 0x3

    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 1822
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k(I)V

    .line 1823
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d()V

    :cond_6
    move v0, v1

    .line 1826
    goto :goto_0
.end method

.method private d(II)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 4886
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 4887
    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v2

    .line 4890
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 4892
    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    .line 4895
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_2

    .line 4896
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v4

    .line 4900
    :goto_1
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(II)Landroid/view/View;

    move-result-object v3

    .line 4903
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v()V

    .line 4906
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_3

    .line 4907
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v4

    .line 4911
    :goto_2
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(II)Landroid/view/View;

    move-result-object v1

    .line 4913
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v4

    .line 4914
    if-lez v4, :cond_0

    .line 4915
    invoke-direct {p0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p(I)V

    .line 4918
    :cond_0
    if-eqz v0, :cond_4

    move-object v0, v2

    .line 4923
    :goto_3
    return-object v0

    .line 4886
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4898
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v4

    goto :goto_1

    .line 4909
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_2

    .line 4920
    :cond_4
    if-eqz v3, :cond_5

    move-object v0, v3

    .line 4921
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 4923
    goto :goto_3
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2610
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->as:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->as:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;->onScroll(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;III)V

    .line 2615
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->onScrollChanged(IIII)V

    .line 2616
    return-void
.end method

.method private d(I)Z
    .locals 3

    .prologue
    .line 1850
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v0, :cond_1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN} for horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1852
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v0

    .line 1854
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k:Z

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1855
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1857
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1858
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1860
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1861
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    .line 1862
    check-cast v0, Landroid/view/ViewGroup;

    .line 1861
    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1864
    if-eqz v0, :cond_2

    .line 1866
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1867
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1868
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1870
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1871
    const/4 v0, 0x1

    .line 1889
    :goto_0
    return v0

    .line 1880
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    .line 1881
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1880
    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1883
    if-eqz v0, :cond_3

    .line 1884
    invoke-direct {p0, v0, p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 1889
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n:I

    return v0
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2887
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    .line 2888
    if-nez v2, :cond_1

    .line 2904
    :cond_0
    :goto_0
    return v0

    .line 2892
    :cond_1
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 2893
    goto :goto_0

    .line 2896
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2897
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2899
    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v4, :cond_4

    .line 2900
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 2901
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 2900
    goto :goto_0

    .line 2903
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 2904
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    :cond_5
    move v0, v1

    .line 2903
    goto :goto_0
.end method

.method private e(I)Z
    .locals 11

    .prologue
    .line 1902
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    .line 1905
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f:Z

    .line 1907
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_42

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m(I)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v7

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_9

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    :goto_0
    add-int/lit8 v0, v7, -0x1

    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int v0, v4, v0

    :cond_1
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_45

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a()I

    move-result v0

    sub-int v0, v6, v0

    move v2, v0

    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    move v1, v0

    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_3
    if-gt v0, v2, :cond_5

    const/4 v2, 0x0

    :goto_4
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    :goto_5
    if-eqz v7, :cond_2d

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    :catchall_0
    move-exception v0

    .line 1914
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f:Z

    .line 1915
    throw v0

    .line 1907
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v8, -0x1

    if-eq v4, v8, :cond_6

    sub-int v1, v2, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getMaxScrollAmount()I

    move-result v8

    if-lt v1, v8, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    sub-int/2addr v0, v2

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v1, v7

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_7
    sub-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_7

    :cond_9
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v6

    :goto_8
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq v4, v1, :cond_a

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int v0, v4, v0

    :cond_a
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-lez v1, :cond_44

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a()I

    move-result v0

    add-int/2addr v0, v6

    move v2, v0

    :goto_9
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    move v1, v0

    :goto_a
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_b
    if-lt v1, v2, :cond_e

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v6

    goto :goto_8

    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    move v1, v0

    goto :goto_a

    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_b

    :cond_e
    const/4 v7, -0x1

    if-eq v4, v7, :cond_f

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getMaxScrollAmount()I

    move-result v7

    if-lt v0, v7, :cond_f

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_f
    sub-int v0, v2, v1

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-nez v1, :cond_10

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_c
    sub-int v1, v6, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_10
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_c

    :cond_12
    const/16 v1, 0x82

    if-eq p1, v1, :cond_13

    const/16 v1, 0x42

    if-ne p1, v1, :cond_17

    :cond_13
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v1

    :goto_d
    if-eqz v0, :cond_16

    iget-boolean v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v6, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_f
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    :goto_10
    iget-boolean v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v6, :cond_1c

    :goto_11
    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_5

    :cond_14
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v1

    goto :goto_d

    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_e

    :cond_16
    move v0, v1

    goto :goto_e

    :cond_17
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    :goto_12
    if-eqz v0, :cond_1a

    iget-boolean v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v6, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_f

    :cond_18
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    goto :goto_12

    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_13

    :cond_1a
    move v0, v1

    goto :goto_13

    :cond_1b
    move v1, v0

    goto :goto_10

    :cond_1c
    const/4 v0, 0x0

    goto :goto_11

    :cond_1d
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int v8, v1, v0

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-eq v8, v0, :cond_24

    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m(I)I

    move-result v6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_22

    const/16 v0, 0x42

    if-eq p1, v0, :cond_22

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    const/16 v0, 0x21

    if-eq p1, v0, :cond_23

    const/16 v0, 0x11

    if-eq p1, v0, :cond_23

    const/4 v0, 0x0

    :goto_15
    const/4 v9, -0x1

    if-eq v6, v9, :cond_24

    if-eqz v1, :cond_1e

    if-lt v6, v8, :cond_1f

    :cond_1e
    if-eqz v0, :cond_24

    if-le v6, v8, :cond_24

    :cond_1f
    const/4 v0, 0x0

    move-object v9, v0

    :goto_16
    if-eqz v9, :cond_20

    invoke-virtual {v9}, Lcom/alipay/mobile/socialsdk/api/view/h;->a()I

    move-result v4

    invoke-virtual {v9}, Lcom/alipay/mobile/socialsdk/api/view/h;->b()I

    move-result v2

    :cond_20
    if-eqz v9, :cond_2f

    const/4 v1, 0x1

    :goto_17
    const/4 v0, -0x1

    if-eq v4, v0, :cond_43

    if-eqz v9, :cond_30

    const/4 v0, 0x1

    move v8, v0

    :goto_18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    const/4 v0, -0x1

    if-ne v4, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_22
    const/4 v0, 0x1

    move v1, v0

    goto :goto_14

    :cond_23
    const/4 v0, 0x1

    goto :goto_15

    :cond_24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v7, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v1, 0x21

    if-eq p1, v1, :cond_25

    const/16 v1, 0x11

    if-ne p1, v1, :cond_29

    :cond_25
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v1

    move v6, v1

    :goto_19
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_1a
    if-ge v1, v6, :cond_26

    sub-int v0, v6, v1

    if-lez v8, :cond_26

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    :goto_1b
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getMaxScrollAmount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    invoke-virtual {v7, p1}, Landroid/view/View;->requestFocus(I)Z

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->A:Lcom/alipay/mobile/socialsdk/api/view/h;

    invoke-virtual {v1, v8, v0}, Lcom/alipay/mobile/socialsdk/api/view/h;->a(II)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->A:Lcom/alipay/mobile/socialsdk/api/view/h;

    move-object v9, v0

    goto :goto_16

    :cond_27
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v1

    move v6, v1

    goto :goto_19

    :cond_28
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1a

    :cond_29
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    move v6, v1

    :goto_1c
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_1d
    if-le v1, v6, :cond_26

    sub-int v0, v1, v6

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_26

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1b

    :cond_2a
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    move v6, v1

    goto :goto_1c

    :cond_2b
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1d

    :cond_2c
    invoke-direct {p0, v7}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v1, :cond_2d

    invoke-virtual {v7, p1}, Landroid/view/View;->requestFocus(I)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->A:Lcom/alipay/mobile/socialsdk/api/view/h;

    invoke-virtual {v0, v8, v1}, Lcom/alipay/mobile/socialsdk/api/view/h;->a(II)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->A:Lcom/alipay/mobile/socialsdk/api/view/h;

    move-object v9, v0

    goto/16 :goto_16

    :cond_2d
    const/4 v0, 0x0

    move-object v9, v0

    goto/16 :goto_16

    :cond_2e
    const/4 v0, 0x0

    move-object v9, v0

    goto/16 :goto_16

    :cond_2f
    const/4 v1, 0x0

    goto/16 :goto_17

    :cond_30
    const/4 v0, 0x0

    move v8, v0

    goto/16 :goto_18

    :cond_31
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int v3, v0, v1

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int v1, v4, v0

    const/4 v0, 0x0

    const/16 v6, 0x21

    if-eq p1, v6, :cond_32

    const/16 v6, 0x11

    if-ne p1, v6, :cond_3e

    :cond_32
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v0, 0x1

    move-object v7, v5

    move v5, v1

    move v1, v0

    :goto_1e
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v10

    if-eqz v6, :cond_33

    if-nez v8, :cond_3f

    if-eqz v1, :cond_3f

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {v6, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v6, v5, v10}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;II)V

    :cond_33
    if-eqz v7, :cond_34

    if-nez v8, :cond_40

    if-nez v1, :cond_40

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {v7, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v7, v3, v10}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;II)V

    :cond_34
    invoke-direct {p0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j(I)V

    invoke-direct {p0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k:Z

    if-eqz v1, :cond_35

    if-nez v9, :cond_35

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_35
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n()V

    move v3, v4

    :goto_21
    if-lez v2, :cond_37

    const/16 v1, 0x21

    if-eq p1, v1, :cond_36

    const/16 v1, 0x11

    if-ne p1, v1, :cond_41

    :cond_36
    move v1, v2

    :goto_22
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i(I)Z

    const/4 v1, 0x1

    :cond_37
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k:Z

    if-eqz v2, :cond_39

    if-nez v9, :cond_39

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;)I

    move-result v5

    if-lez v5, :cond_39

    :cond_38
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_39
    const/4 v2, -0x1

    if-ne v4, v2, :cond_3a

    if-eqz v0, :cond_3a

    invoke-direct {p0, v0, p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3a

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    :cond_3a
    if-eqz v1, :cond_42

    if-eqz v0, :cond_3b

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(ILandroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aa:I

    :cond_3b
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->invalidate()V

    :cond_3c
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d()V

    const/4 v0, 0x1

    .line 1908
    :goto_23
    if-eqz v0, :cond_3d

    .line 1909
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->playSoundEffect(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1914
    :cond_3d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f:Z

    .line 1912
    return v0

    .line 1907
    :cond_3e
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    move-object v7, v6

    move-object v6, v5

    move v5, v3

    move v3, v1

    move v1, v0

    goto/16 :goto_1e

    :cond_3f
    const/4 v0, 0x0

    goto/16 :goto_1f

    :cond_40
    const/4 v0, 0x0

    goto/16 :goto_20

    :cond_41
    neg-int v1, v2

    goto :goto_22

    :cond_42
    const/4 v0, 0x0

    goto :goto_23

    :cond_43
    move-object v0, v5

    goto :goto_21

    :cond_44
    move v2, v6

    goto/16 :goto_9

    :cond_45
    move v2, v6

    goto/16 :goto_1
.end method

.method private f()V
    .locals 1

    .prologue
    .line 2909
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setHorizontalScrollBarEnabled(Z)V

    .line 2910
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setVerticalScrollBarEnabled(Z)V

    .line 2911
    return-void

    .line 2909
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f(I)V
    .locals 1

    .prologue
    .line 2619
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->at:I

    if-ne p1, v0, :cond_1

    .line 2627
    :cond_0
    :goto_0
    return-void

    .line 2623
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->as:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2624
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->at:I

    .line 2625
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->as:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 5344
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->D:Lcom/alipay/mobile/socialsdk/api/view/k;

    if-nez v0, :cond_0

    .line 2927
    :goto_0
    return-void

    .line 2926
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->D:Lcom/alipay/mobile/socialsdk/api/view/k;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic g(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 6045
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z()V

    return-void
.end method

.method private g(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2630
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    if-eqz v0, :cond_0

    move v0, v1

    .line 2631
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->t:I

    if-gt v3, v4, :cond_1

    if-nez v0, :cond_1

    .line 2658
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 2630
    goto :goto_0

    .line 2635
    :cond_1
    if-eqz v0, :cond_4

    .line 2636
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 2643
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2644
    if-eqz v0, :cond_2

    .line 2645
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2648
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h()V

    .line 2650
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 2651
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2652
    if-eqz v0, :cond_3

    .line 2653
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2656
    :cond_3
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    move v2, v1

    .line 2658
    goto :goto_1

    .line 2638
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    goto :goto_2
.end method

.method private h(I)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2846
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    .line 2847
    if-nez v2, :cond_1

    .line 2860
    :cond_0
    :goto_0
    return v0

    .line 2851
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 2852
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2854
    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le p1, v4, :cond_3

    .line 2855
    :cond_2
    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_4

    .line 2856
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 2851
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private h()V
    .locals 1

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->E:Lcom/alipay/mobile/socialsdk/api/view/j;

    if-nez v0, :cond_0

    .line 2946
    :goto_0
    return-void

    .line 2945
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->E:Lcom/alipay/mobile/socialsdk/api/view/j;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 2

    .prologue
    .line 177
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ae:J

    return-void
.end method

.method private i()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 3091
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 3092
    invoke-super {p0}, Landroid/widget/AdapterView;->awakenScrollBars()Z

    move-result v0

    .line 3094
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(I)Z
    .locals 16

    .prologue
    .line 2949
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v8

    .line 2950
    if-nez v8, :cond_0

    .line 2951
    const/4 v1, 0x1

    .line 3077
    :goto_0
    return v1

    .line 2954
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2955
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2957
    :goto_1
    add-int/lit8 v2, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2958
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2960
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v4

    .line 2961
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v7

    .line 2962
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v5

    .line 2963
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v9

    .line 2965
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_4

    move v3, v4

    .line 2967
    :goto_3
    sub-int v10, v3, v1

    .line 2968
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v6

    sub-int/2addr v6, v7

    .line 2970
    :goto_4
    sub-int v11, v2, v6

    .line 2973
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v12, :cond_6

    .line 2974
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v7

    sub-int v4, v5, v4

    .line 2979
    :goto_5
    if-gez p1, :cond_7

    .line 2980
    add-int/lit8 v4, v4, -0x1

    neg-int v4, v4

    move/from16 v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2985
    :goto_6
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 2987
    if-nez v9, :cond_8

    .line 2988
    if-lt v1, v3, :cond_8

    if-ltz v4, :cond_8

    const/4 v1, 0x1

    .line 2989
    :goto_7
    add-int v5, v9, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-ne v5, v7, :cond_9

    .line 2990
    if-gt v2, v6, :cond_9

    if-gtz v4, :cond_9

    const/4 v2, 0x1

    .line 2992
    :goto_8
    if-nez v1, :cond_1

    if-eqz v2, :cond_b

    .line 2993
    :cond_1
    if-eqz v4, :cond_a

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2955
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    .line 2958
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_2

    :cond_4
    move v3, v5

    .line 2965
    goto :goto_3

    .line 2969
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v9

    goto :goto_4

    .line 2976
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v9

    sub-int/2addr v4, v5

    goto :goto_5

    .line 2982
    :cond_7
    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_6

    .line 2988
    :cond_8
    const/4 v1, 0x0

    goto :goto_7

    .line 2990
    :cond_9
    const/4 v2, 0x0

    goto :goto_8

    .line 2993
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2996
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isInTouchMode()Z

    move-result v12

    .line 2997
    if-eqz v12, :cond_c

    .line 2998
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k()V

    .line 3001
    :cond_c
    const/4 v2, 0x0

    .line 3002
    const/4 v5, 0x0

    .line 3004
    if-gez v4, :cond_15

    const/4 v1, 0x1

    move v7, v1

    .line 3005
    :goto_9
    if-eqz v7, :cond_18

    .line 3006
    neg-int v1, v4

    add-int v6, v1, v3

    .line 3008
    const/4 v1, 0x0

    move v3, v1

    move v1, v5

    :goto_a
    if-lt v3, v8, :cond_16

    .line 3036
    :cond_d
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    .line 3038
    if-lez v1, :cond_e

    .line 3039
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->detachViewsFromParent(II)V

    .line 3044
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i()Z

    move-result v2

    if-nez v2, :cond_f

    .line 3045
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->invalidate()V

    .line 3048
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n(I)V

    .line 3050
    if-eqz v7, :cond_10

    .line 3051
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 3054
    :cond_10
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3055
    if-lt v10, v1, :cond_11

    if-ge v11, v1, :cond_13

    .line 3056
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v3

    if-eqz v7, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v1

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_1b

    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    :goto_c
    if-lez v3, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    add-int/2addr v1, v2

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(II)Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p(I)V

    .line 3059
    :cond_13
    :goto_d
    if-nez v12, :cond_26

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 3060
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v1, v2

    .line 3061
    if-ltz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 3062
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(ILandroid/view/View;)V

    .line 3073
    :cond_14
    :goto_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    .line 3075
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d()V

    .line 3077
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3004
    :cond_15
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_9

    .line 3009
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3010
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v5, :cond_17

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3012
    :goto_f
    if-ge v5, v6, :cond_d

    .line 3013
    add-int/lit8 v5, v1, 0x1

    .line 3017
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    add-int v14, v9, v3

    invoke-virtual {v1, v13, v14}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Landroid/view/View;I)V

    .line 3008
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v5

    goto/16 :goto_a

    .line 3010
    :cond_17
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v5

    goto :goto_f

    .line 3020
    :cond_18
    sub-int/2addr v6, v4

    .line 3022
    add-int/lit8 v1, v8, -0x1

    move v3, v1

    move v1, v5

    :goto_10
    if-ltz v3, :cond_d

    .line 3023
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3024
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v5, :cond_19

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    .line 3026
    :goto_11
    if-le v5, v6, :cond_d

    .line 3031
    add-int/lit8 v2, v1, 0x1

    .line 3032
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    add-int v5, v9, v3

    invoke-virtual {v1, v8, v5}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Landroid/view/View;I)V

    .line 3022
    add-int/lit8 v1, v3, -0x1

    move v15, v1

    move v1, v2

    move v2, v3

    move v3, v15

    goto :goto_10

    .line 3024
    :cond_19
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_11

    .line 3056
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v1

    goto/16 :goto_b

    :cond_1b
    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int v2, v1, v2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    move v15, v1

    move v1, v2

    move v2, v15

    :goto_12
    if-lez v3, :cond_1d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    sub-int v1, v2, v1

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(II)Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-nez v1, :cond_13

    if-eqz v4, :cond_13

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v2

    :goto_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    :goto_15
    sub-int v2, v1, v2

    add-int/lit8 v1, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_23

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_16
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x1

    if-lez v2, :cond_13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_1e

    if-le v1, v3, :cond_25

    :cond_1e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_28

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_17
    neg-int v1, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_24

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_18
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v()V

    goto/16 :goto_d

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int v2, v1, v2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    move v15, v1

    move v1, v2

    move v2, v15

    goto/16 :goto_12

    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto/16 :goto_13

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_14

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    goto/16 :goto_15

    :cond_23
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_16

    :cond_24
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_18

    :cond_25
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v1, v1, -0x1

    if-ne v4, v1, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v()V

    goto/16 :goto_d

    .line 3064
    :cond_26
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->M:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 3065
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->M:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v1, v2

    .line 3066
    if-ltz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 3067
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(ILandroid/view/View;)V

    goto/16 :goto_e

    .line 3070
    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_e

    :cond_28
    move v1, v2

    goto/16 :goto_17
.end method

.method private j(I)V
    .locals 2

    .prologue
    .line 3246
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    .line 3247
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ae:J

    .line 3248
    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 3207
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 3229
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-eq v0, v2, :cond_2

    .line 3230
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3231
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    .line 3234
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-eq v0, v1, :cond_1

    .line 3235
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    .line 3238
    :cond_1
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j(I)V

    .line 3239
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    .line 3241
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aa:I

    .line 3243
    :cond_2
    return-void
.end method

.method private k(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3251
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    .line 3252
    const/4 v1, 0x0

    .line 3254
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    .line 3255
    if-ltz v2, :cond_3

    .line 3256
    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_2

    .line 3263
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r()V

    .line 3265
    if-eqz v0, :cond_1

    .line 3266
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i()Z

    .line 3268
    :cond_1
    return-void

    .line 3258
    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-eq p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic k(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 2

    .prologue
    .line 175
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ac:J

    return-void
.end method

.method private l(I)V
    .locals 2

    .prologue
    .line 3271
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    .line 3272
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ac:J

    .line 3275
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->U:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 3276
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    .line 3277
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ac:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->W:J

    .line 3279
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    return-void
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 3282
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    packed-switch v0, :pswitch_data_0

    .line 3287
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3285
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private m(I)I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 3453
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I)V

    .line 3455
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 3456
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3458
    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_8

    .line 3459
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-eq v0, v3, :cond_2

    .line 3460
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    add-int/lit8 v0, v0, 0x1

    .line 3462
    :goto_0
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_3

    move v0, v3

    .line 3500
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 3460
    goto :goto_0

    .line 3466
    :cond_3
    if-ge v0, v1, :cond_4

    move v0, v1

    .line 3470
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getLastVisiblePosition()I

    move-result v2

    .line 3472
    :goto_2
    if-le v0, v2, :cond_6

    :cond_5
    move v0, v3

    .line 3500
    goto :goto_1

    .line 3473
    :cond_6
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3474
    sub-int v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 3472
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3479
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 3481
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-eq v2, v3, :cond_a

    .line 3482
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    add-int/lit8 v2, v2, -0x1

    .line 3484
    :goto_3
    if-ltz v2, :cond_9

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v2, v5, :cond_b

    :cond_9
    move v0, v3

    .line 3485
    goto :goto_1

    .line 3482
    :cond_a
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 3488
    :cond_b
    if-le v2, v0, :cond_d

    .line 3492
    :goto_4
    if-lt v0, v1, :cond_5

    .line 3493
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3494
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3492
    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_4
.end method

.method private m()V
    .locals 2

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3342
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3343
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3348
    :cond_0
    :goto_0
    return-void

    .line 3345
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->STATE_NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method static synthetic m(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    return v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 3351
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->af:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ae:J

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ag:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 3352
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->S:Lcom/alipay/mobile/socialsdk/api/view/p;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/p;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->S:Lcom/alipay/mobile/socialsdk/api/view/p;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->S:Lcom/alipay/mobile/socialsdk/api/view/p;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 3353
    :cond_3
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->af:I

    .line 3354
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ae:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ag:J

    .line 3356
    :cond_4
    return-void

    .line 3352
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o()V

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p()V

    goto :goto_0
.end method

.method private n(I)V
    .locals 4

    .prologue
    .line 4022
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v1

    .line 4024
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 4033
    return-void

    .line 4025
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4027
    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_1

    .line 4028
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4024
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4030
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1
.end method

.method static synthetic n(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 3380
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o()V

    return-void
.end method

.method private o(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 4928
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 4929
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 4931
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-gez v0, :cond_0

    .line 4932
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 4935
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 6

    .prologue
    .line 3381
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    .line 3382
    if-nez v0, :cond_0

    .line 3394
    :goto_0
    return-void

    .line 3386
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemPosition()I

    move-result v3

    .line 3387
    if-ltz v3, :cond_1

    .line 3388
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 3390
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 3389
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 3392
    :cond_1
    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 3396
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p()V

    return-void
.end method

.method static synthetic p(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 3397
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemPosition()I

    move-result v0

    .line 3398
    if-ltz v0, :cond_0

    .line 3400
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->sendAccessibilityEvent(I)V

    .line 3402
    :cond_0
    return-void
.end method

.method private p(I)V
    .locals 5

    .prologue
    .line 5035
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 5036
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 5085
    :cond_0
    :goto_0
    return-void

    .line 5041
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5045
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_4

    .line 5046
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 5052
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v1

    .line 5054
    :goto_2
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 5053
    :goto_3
    sub-int v0, v2, v0

    .line 5060
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5061
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5065
    :goto_4
    if-lez v0, :cond_0

    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-gtz v4, :cond_2

    if-ge v2, v1, :cond_0

    .line 5066
    :cond_2
    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-nez v4, :cond_3

    .line 5068
    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5072
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n(I)V

    .line 5074
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-lez v0, :cond_0

    .line 5075
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 5079
    :goto_5
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(II)Landroid/view/View;

    .line 5082
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v()V

    goto :goto_0

    .line 5048
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 5052
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v1

    goto :goto_2

    .line 5054
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_3

    .line 5061
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_4

    .line 5075
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_5
.end method

.method private q()I
    .locals 2

    .prologue
    .line 3405
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    return v0
.end method

.method static synthetic r(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    return v0
.end method

.method private r()V
    .locals 27

    .prologue
    .line 3750
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 4015
    :cond_0
    :goto_0
    return-void

    .line 3754
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    .line 3755
    if-nez v15, :cond_0

    .line 3756
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    .line 3762
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->invalidate()V

    .line 3764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    .line 3765
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4010
    if-nez v15, :cond_0

    .line 4011
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    .line 4012
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    goto :goto_0

    .line 3769
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v4

    .line 3771
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move v14, v2

    .line 3773
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v16

    .line 3774
    const/4 v7, 0x0

    .line 3777
    const/4 v5, 0x0

    .line 3779
    const/4 v6, 0x0

    .line 3781
    const/4 v3, 0x0

    .line 3782
    const/4 v2, 0x0

    .line 3784
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    packed-switch v8, :pswitch_data_0

    .line 3802
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int v3, v2, v3

    .line 3803
    if-ltz v3, :cond_3

    move/from16 v0, v16

    if-ge v3, v0, :cond_3

    .line 3804
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3808
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3810
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    if-ltz v8, :cond_4

    .line 3811
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    sub-int/2addr v7, v8

    .line 3815
    :cond_4
    add-int/2addr v3, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    move v13, v7

    .line 3818
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    move/from16 v17, v0

    .line 3819
    if-eqz v17, :cond_9

    .line 3820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-lt v3, v2, :cond_c

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/api/view/n;->c()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    move/from16 v18, v0

    if-lez v18, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->U:I

    packed-switch v2, :pswitch_data_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemPosition()I

    move-result v2

    move/from16 v0, v18

    if-lt v2, v0, :cond_7

    add-int/lit8 v2, v18, -0x1

    :cond_7
    if-gez v2, :cond_8

    const/4 v2, 0x0

    :cond_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result v3

    if-ltz v3, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    .line 3825
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-nez v2, :cond_21

    .line 3826
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4010
    if-nez v15, :cond_0

    .line 4011
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    .line 4012
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    goto/16 :goto_0

    .line 3769
    :cond_a
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v4

    goto/16 :goto_1

    .line 3771
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move v14, v2

    goto/16 :goto_2

    .line 3786
    :pswitch_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v8, v9

    .line 3787
    if-ltz v8, :cond_56

    move/from16 v0, v16

    if-ge v8, v0, :cond_56

    .line 3788
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    move v13, v7

    .line 3791
    goto/16 :goto_3

    :pswitch_1
    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    move v13, v7

    .line 3797
    goto/16 :goto_3

    .line 3820
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    cmp-long v6, v7, v18

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    add-int/lit8 v9, v2, -0x14

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v2, 0x0

    :goto_6
    if-lt v6, v9, :cond_d

    :goto_7
    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v7, v8}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    :goto_8
    add-int/lit8 v3, v2, 0x1

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    cmp-long v18, v7, v18

    if-nez v18, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v6, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v3, v6}, Landroid/support/v4/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 4009
    :catchall_0
    move-exception v2

    .line 4010
    if-nez v15, :cond_e

    .line 4011
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    .line 4012
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    .line 4014
    :cond_e
    throw v2

    .line 3820
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_11
    move v2, v3

    goto :goto_8

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v18, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    move/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->W:J

    move-wide/from16 v20, v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v20, v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v19, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long v22, v6, v8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    if-nez v24, :cond_55

    :cond_13
    :goto_9
    const/4 v2, -0x1

    :cond_14
    if-ltz v2, :cond_6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result v3

    if-ne v3, v2, :cond_6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->Z:J

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_1d

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v25

    cmp-long v3, v25, v20

    if-eqz v3, :cond_14

    add-int/lit8 v3, v19, -0x1

    if-ne v8, v3, :cond_19

    const/4 v3, 0x1

    move v6, v3

    :goto_b
    if-nez v9, :cond_1a

    const/4 v3, 0x1

    :goto_c
    if-eqz v6, :cond_16

    if-nez v3, :cond_13

    :cond_16
    if-nez v3, :cond_17

    if-eqz v7, :cond_1b

    if-nez v6, :cond_1b

    :cond_17
    add-int/lit8 v3, v8, 0x1

    const/4 v2, 0x0

    move v7, v2

    move v8, v3

    move v2, v3

    :cond_18
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    cmp-long v3, v25, v22

    if-lez v3, :cond_15

    goto :goto_9

    :cond_19
    const/4 v3, 0x0

    move v6, v3

    goto :goto_b

    :cond_1a
    const/4 v3, 0x0

    goto :goto_c

    :cond_1b
    if-nez v6, :cond_1c

    if-nez v7, :cond_18

    if-nez v3, :cond_18

    :cond_1c
    add-int/lit8 v3, v9, -0x1

    const/4 v2, 0x1

    move v7, v2

    move v9, v3

    move v2, v3

    goto :goto_d

    :cond_1d
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    goto :goto_a

    :pswitch_3
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v18, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    goto/16 :goto_5

    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result v2

    if-ltz v2, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    if-gez v2, :cond_9

    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    const-wide/high16 v2, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ae:J

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    const-wide/high16 v2, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ac:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->M:I

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n()V

    goto/16 :goto_5

    .line 3828
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_22

    .line 3829
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The content of the adapter has changed but TwoWayView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in TwoWayView("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3832
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3833
    const-string/jumbo v4, ") with Adapter("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3829
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3836
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j(I)V

    .line 3839
    const/4 v2, 0x0

    .line 3843
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 3844
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    .line 3846
    if-eqz v17, :cond_2a

    .line 3847
    const/4 v3, 0x0

    :goto_e
    move/from16 v0, v16

    if-lt v3, v0, :cond_29

    .line 3858
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 3859
    if-eqz v3, :cond_54

    .line 3862
    if-nez v17, :cond_53

    .line 3866
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v5

    .line 3867
    if-eqz v5, :cond_23

    .line 3869
    invoke-virtual {v5}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_23
    move-object v2, v3

    move-object v3, v5

    .line 3873
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestFocus()Z

    move-object v7, v2

    move-object v8, v3

    .line 3880
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->detachAllViewsFromParent()V

    .line 3882
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    packed-switch v2, :pswitch_data_2

    .line 3919
    if-nez v16, :cond_45

    .line 3920
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q()I

    move-result v2

    .line 3921
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j(I)V

    .line 3922
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 3946
    :goto_12
    invoke-virtual {v9}, Lcom/alipay/mobile/socialsdk/api/view/n;->d()V

    .line 3948
    if-eqz v3, :cond_4e

    .line 3949
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k:Z

    if-eqz v2, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 3950
    if-ne v3, v7, :cond_24

    .line 3951
    if-eqz v8, :cond_24

    .line 3952
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_4a

    :cond_24
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_4a

    const/4 v2, 0x0

    .line 3950
    :goto_13
    if-nez v2, :cond_4b

    .line 3958
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3959
    if-eqz v2, :cond_25

    .line 3960
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3963
    :cond_25
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(ILandroid/view/View;)V

    .line 3972
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_4d

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_15
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aa:I

    .line 3994
    :cond_26
    :goto_16
    if-eqz v8, :cond_27

    .line 3995
    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 3996
    invoke-virtual {v8}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 3999
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 4000
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    .line 4001
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    .line 4003
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    .line 4004
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-lez v2, :cond_28

    .line 4005
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n()V

    .line 4008
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4010
    if-nez v15, :cond_0

    .line 4011
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    .line 4012
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    goto/16 :goto_0

    .line 3848
    :cond_29
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v6, v3

    invoke-virtual {v9, v7, v8}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Landroid/view/View;I)V

    .line 3847
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 3851
    :cond_2a
    move/from16 v0, v16

    invoke-virtual {v9, v0, v6}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(II)V

    goto/16 :goto_f

    .line 3884
    :pswitch_4
    if-eqz v11, :cond_30

    .line 3886
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_2c

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3888
    :goto_17
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v3, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    move v5, v3

    :goto_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    :goto_19
    if-le v3, v14, :cond_2f

    sub-int v4, v5, v4

    sub-int/2addr v3, v14

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_2b
    :goto_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p(I)V

    move-object v3, v2

    goto/16 :goto_12

    .line 3886
    :cond_2c
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_17

    .line 3888
    :cond_2d
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    move v5, v3

    goto :goto_18

    :cond_2e
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_19

    :cond_2f
    if-ge v5, v4, :cond_2b

    sub-int/2addr v4, v5

    sub-int v3, v14, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1a

    .line 3890
    :cond_30
    sub-int v3, v14, v4

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s()I

    move-result v5

    const/4 v2, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v2, v6}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v4, :cond_32

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gt v4, v3, :cond_31

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_31
    :goto_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p(I)V

    move-object v3, v2

    .line 3893
    goto/16 :goto_12

    .line 3890
    :cond_32
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-gt v4, v3, :cond_31

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1b

    .line 3896
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(II)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 3897
    goto/16 :goto_12

    .line 3900
    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(II)Landroid/view/View;

    move-result-object v2

    .line 3901
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v()V

    move-object v3, v2

    .line 3902
    goto/16 :goto_12

    .line 3905
    :pswitch_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 3906
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o(I)Landroid/view/View;

    move-result-object v2

    .line 3907
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v()V

    move-object v3, v2

    .line 3908
    goto/16 :goto_12

    .line 3911
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(II)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 3912
    goto/16 :goto_12

    .line 3915
    :pswitch_9
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_34

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v2

    move v6, v2

    :goto_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_35

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v2

    :goto_1d
    if-lez v13, :cond_39

    add-int/lit8 v3, v10, -0x1

    const/4 v5, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v5, v11}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    add-int/2addr v2, v11

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_36

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    move v5, v3

    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_37

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    :goto_1f
    if-le v3, v14, :cond_33

    sub-int v10, v5, v4

    sub-int v12, v3, v14

    sub-int v4, v14, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v10, :cond_38

    neg-int v10, v4

    invoke-virtual {v6, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    neg-int v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_33
    :goto_20
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    add-int/lit8 v4, v4, -0x2

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(II)Landroid/view/View;

    :goto_21
    move-object v3, v2

    .line 3916
    goto/16 :goto_12

    .line 3915
    :cond_34
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v2

    move v6, v2

    goto :goto_1c

    :cond_35
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_1d

    :cond_36
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    move v5, v3

    goto :goto_1e

    :cond_37
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_1f

    :cond_38
    neg-int v10, v4

    invoke-virtual {v6, v10}, Landroid/view/View;->offsetLeftAndRight(I)V

    neg-int v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_20

    :cond_39
    if-gez v13, :cond_40

    if-eqz v11, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_3b

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_22
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v2

    :goto_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    move v5, v3

    :goto_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_3e

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    :goto_25
    if-ge v5, v4, :cond_3a

    sub-int v5, v4, v5

    sub-int v3, v14, v3

    sub-int v4, v14, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v4, :cond_3f

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3a
    :goto_26
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;I)V

    goto :goto_21

    :cond_3b
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_22

    :cond_3c
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v2

    goto :goto_23

    :cond_3d
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    move v5, v3

    goto :goto_24

    :cond_3e
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_25

    :cond_3f
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_26

    :cond_40
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IIZZ)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_42

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    move v5, v3

    :goto_27
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_43

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    :goto_28
    if-ge v6, v4, :cond_41

    add-int/lit8 v6, v4, 0x14

    if-ge v3, v6, :cond_41

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_44

    sub-int v3, v4, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_41
    :goto_29
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;I)V

    goto/16 :goto_21

    :cond_42
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    move v5, v3

    goto :goto_27

    :cond_43
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_28

    :cond_44
    sub-int v3, v4, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_29

    .line 3924
    :cond_45
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-ltz v2, :cond_47

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-ge v2, v3, :cond_47

    .line 3926
    if-eqz v12, :cond_52

    .line 3927
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_46

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3929
    :goto_2a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(II)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_12

    .line 3927
    :cond_46
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_2a

    .line 3930
    :cond_47
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-ge v2, v3, :cond_49

    .line 3932
    if-eqz v10, :cond_51

    .line 3933
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_48

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3936
    :goto_2b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(II)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_12

    .line 3933
    :cond_48
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_2b

    .line 3938
    :cond_49
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(II)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_12

    .line 3952
    :cond_4a
    const/4 v2, 0x1

    goto/16 :goto_13

    .line 3965
    :cond_4b
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 3966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_14

    .line 3969
    :cond_4c
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(ILandroid/view/View;)V

    goto/16 :goto_14

    .line 3972
    :cond_4d
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    goto/16 :goto_15

    .line 3974
    :cond_4e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    if-lez v2, :cond_50

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_50

    .line 3975
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3977
    if-eqz v2, :cond_4f

    .line 3978
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(ILandroid/view/View;)V

    .line 3987
    :cond_4f
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz v8, :cond_26

    .line 3988
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_16

    .line 3981
    :cond_50
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aa:I

    .line 3982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2c

    :cond_51
    move v2, v4

    goto :goto_2b

    :cond_52
    move v2, v4

    goto/16 :goto_2a

    :cond_53
    move-object v3, v5

    goto/16 :goto_10

    :cond_54
    move-object v7, v2

    move-object v8, v5

    goto/16 :goto_11

    :cond_55
    move v7, v2

    move v8, v3

    move v9, v3

    move v2, v3

    goto/16 :goto_d

    :cond_56
    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    move v13, v7

    goto/16 :goto_3

    .line 3784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3820
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3882
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private s()I
    .locals 2

    .prologue
    .line 4341
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    .line 4342
    if-gez v0, :cond_0

    .line 4343
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    .line 4346
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4347
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4349
    return v0
.end method

.method static synthetic s(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    return v0
.end method

.method static synthetic t(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    return-void
.end method

.method private t()Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 4353
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v10

    .line 4354
    if-gtz v10, :cond_1

    .line 4431
    :cond_0
    :goto_0
    return v3

    .line 4361
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v0

    .line 4363
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    .line 4365
    :goto_2
    iget v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 4366
    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    .line 4369
    if-lt v4, v5, :cond_5

    add-int v6, v5, v10

    if-ge v4, v6, :cond_5

    .line 4370
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4373
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_3
    move v1, v4

    move v4, v0

    move v0, v2

    .line 4415
    :goto_4
    iput v7, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    .line 4416
    iput v7, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 4417
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    .line 4419
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    .line 4421
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result v0

    .line 4422
    if-lt v0, v5, :cond_10

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_10

    .line 4423
    const/4 v1, 0x4

    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 4424
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m()V

    .line 4425
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k(I)V

    .line 4426
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d()V

    .line 4431
    :goto_5
    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    .line 4361
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    .line 4363
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_2

    .line 4373
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_3

    .line 4374
    :cond_5
    if-ge v4, v5, :cond_a

    move v6, v3

    move v4, v3

    .line 4378
    :goto_6
    if-lt v6, v10, :cond_6

    move v0, v2

    move v1, v5

    goto :goto_4

    .line 4379
    :cond_6
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4380
    iget-boolean v8, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v8, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 4382
    :goto_7
    if-nez v6, :cond_7

    move v4, v1

    .line 4387
    :cond_7
    if-lt v1, v0, :cond_9

    .line 4389
    add-int v0, v5, v6

    move v4, v1

    move v1, v0

    move v0, v2

    .line 4391
    goto :goto_4

    .line 4380
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_7

    .line 4378
    :cond_9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_6

    .line 4395
    :cond_a
    add-int v0, v5, v10

    add-int/lit8 v4, v0, -0x1

    .line 4398
    add-int/lit8 v0, v10, -0x1

    move v9, v0

    move v6, v3

    :goto_8
    if-gez v9, :cond_b

    move v0, v3

    move v1, v4

    move v4, v6

    goto :goto_4

    .line 4399
    :cond_b
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4400
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    .line 4401
    :goto_9
    iget-boolean v11, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v11, :cond_e

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 4403
    :goto_a
    add-int/lit8 v11, v10, -0x1

    if-ne v9, v11, :cond_c

    move v6, v0

    .line 4407
    :cond_c
    if-gt v8, v1, :cond_f

    .line 4408
    add-int v1, v5, v9

    move v4, v0

    move v0, v3

    .line 4410
    goto/16 :goto_4

    .line 4400
    :cond_d
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_9

    .line 4401
    :cond_e
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    goto :goto_a

    .line 4398
    :cond_f
    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_8

    :cond_10
    move v0, v7

    .line 4428
    goto :goto_5
.end method

.method static synthetic u(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 3749
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r()V

    return-void
.end method

.method private u()Z
    .locals 1

    .prologue
    .line 4439
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4440
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m()V

    .line 4441
    const/4 v0, 0x1

    .line 4444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic v(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5145
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5166
    :cond_0
    :goto_0
    return-void

    .line 5149
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5152
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_2

    .line 5153
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    sub-int/2addr v1, v2

    .line 5158
    :goto_1
    if-gez v1, :cond_3

    .line 5163
    :goto_2
    if-eqz v0, :cond_0

    .line 5164
    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n(I)V

    goto :goto_0

    .line 5155
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private w()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 5321
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5323
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->removeAllViewsInLayout()V

    .line 5325
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aa:I

    .line 5326
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 5327
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    .line 5328
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    .line 5329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    .line 5330
    iput v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->af:I

    .line 5331
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ag:J

    .line 5333
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    .line 5335
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j(I)V

    .line 5336
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    .line 5338
    iput v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->M:I

    .line 5339
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->N:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 5341
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->invalidate()V

    .line 5342
    return-void
.end method

.method static synthetic w(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 3

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->E:Lcom/alipay/mobile/socialsdk/api/view/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/j;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->E:Lcom/alipay/mobile/socialsdk/api/view/j;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->E:Lcom/alipay/mobile/socialsdk/api/view/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/j;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->E:Lcom/alipay/mobile/socialsdk/api/view/j;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic x(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    return v0
.end method

.method private x()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5345
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 5381
    :goto_0
    return-void

    .line 5349
    :cond_0
    iput-boolean v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    .line 5351
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-ltz v0, :cond_3

    .line 5352
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5354
    iget-wide v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ac:J

    iput-wide v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->W:J

    .line 5355
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    .line 5357
    if-eqz v0, :cond_1

    .line 5358
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    .line 5361
    :cond_1
    iput v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->U:I

    goto :goto_0

    .line 5358
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 5364
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5365
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 5367
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 5368
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->W:J

    .line 5373
    :goto_2
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    .line 5375
    if-eqz v0, :cond_4

    .line 5376
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    .line 5379
    :cond_4
    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->U:I

    goto :goto_0

    .line 5370
    :cond_5
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->W:J

    goto :goto_2

    .line 5376
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_3
.end method

.method static synthetic y(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ae:J

    return-wide v0
.end method

.method private y()Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 5481
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_0

    .line 5482
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;-><init>(II)V

    .line 5484
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private z()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6046
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6047
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v3, v1

    .line 6052
    :goto_0
    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->R:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-super {p0, v0}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 6053
    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->Q:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 6055
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->au:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6056
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->A()V

    .line 6058
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 6047
    goto :goto_0

    :cond_2
    move v0, v2

    .line 6052
    goto :goto_1

    :cond_3
    move v1, v2

    .line 6053
    goto :goto_2
.end method

.method static synthetic z(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->H:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 3545
    invoke-super {p0}, Landroid/widget/AdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 5495
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 689
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    .line 690
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    .line 1092
    if-nez v2, :cond_1

    move v0, v1

    .line 1114
    :cond_0
    :goto_0
    return v0

    .line 1096
    :cond_1
    mul-int/lit8 v0, v2, 0x64

    .line 1098
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1099
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1101
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1102
    if-lez v1, :cond_2

    .line 1103
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1106
    :cond_2
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1107
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1109
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1110
    if-lez v1, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1139
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 1140
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    .line 1142
    if-ltz v1, :cond_0

    if-nez v2, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return v0

    .line 1146
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1147
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1149
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1150
    if-lez v2, :cond_0

    .line 1151
    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v2, v3, v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1171
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1173
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    if-eqz v1, :cond_0

    .line 1175
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1178
    :cond_0
    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3139
    :goto_0
    return-void

    .line 3105
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_1

    .line 3106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 3111
    :goto_1
    int-to-float v1, v0

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 3112
    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    .line 3114
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i(I)Z

    move-result v0

    .line 3116
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3117
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 3108
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    .line 3119
    :cond_2
    if-eqz v0, :cond_4

    .line 3120
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    .line 3121
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 3123
    if-lez v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 3122
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v1

    :goto_3
    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v0

    .line 3125
    if-eqz v0, :cond_3

    .line 3129
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3133
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3136
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 3137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    goto :goto_0

    .line 3123
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_2

    .line 3122
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1063
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    .line 1064
    if-nez v2, :cond_1

    move v0, v1

    .line 1086
    :cond_0
    :goto_0
    return v0

    .line 1068
    :cond_1
    mul-int/lit8 v0, v2, 0x64

    .line 1070
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1071
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1073
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1074
    if-lez v1, :cond_2

    .line 1075
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1078
    :cond_2
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1079
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1081
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1082
    if-lez v1, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1119
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 1120
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    .line 1122
    if-ltz v1, :cond_0

    if-nez v2, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return v0

    .line 1126
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1127
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1129
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1130
    if-lez v2, :cond_0

    .line 1131
    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v2, v3, v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1159
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1161
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    if-eqz v1, :cond_0

    .line 1163
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1166
    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 3550
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->K:Z

    .line 3551
    if-nez v0, :cond_0

    .line 3552
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/graphics/Canvas;)V

    .line 3555
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3557
    if-eqz v0, :cond_1

    .line 3558
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/graphics/Canvas;)V

    .line 3560
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 3641
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 3642
    if-nez v0, :cond_0

    .line 3644
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 3645
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 3648
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3652
    :cond_0
    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 3659
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 3564
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3568
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_6

    .line 3569
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    or-int/lit8 v0, v0, 0x0

    .line 3572
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_0

    .line 3573
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    or-int/2addr v0, v1

    .line 3576
    :cond_0
    if-eqz v0, :cond_1

    .line 3577
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3579
    :cond_1
    return-void

    .line 3569
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 3573
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v4, :cond_5

    neg-int v4, v1

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :cond_5
    int-to-float v1, v1

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3505
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3506
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m()V

    .line 3507
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y()Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 5500
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v2, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_2

    .line 595
    :cond_0
    new-array v0, v1, [J

    .line 606
    :cond_1
    return-object v0

    .line 598
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    .line 599
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    .line 600
    new-array v0, v3, [J

    .line 602
    :goto_0
    if-ge v1, v3, :cond_1

    .line 603
    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->SINGLE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 564
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    .line 581
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 5505
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ak:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 835
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 836
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 840
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getItemMargin()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k:Z

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 795
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 2106
    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 805
    .line 808
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    .line 818
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    move v0, v1

    .line 825
    :goto_2
    return v0

    :cond_0
    move-object p1, v0

    .line 809
    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 819
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 820
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 818
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ac:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ab:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 3590
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-ltz v0, :cond_0

    .line 3591
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3593
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isItemChecked(I)Z
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 546
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 907
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 909
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 910
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 912
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    if-nez v0, :cond_0

    .line 913
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/g;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    .line 914
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 917
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    .line 918
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n:I

    .line 919
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    .line 922
    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h:Z

    .line 923
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5

    .prologue
    .line 3512
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->J:Z

    if-eqz v0, :cond_1

    .line 3514
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 3540
    :cond_0
    :goto_0
    return-object v0

    .line 3520
    :cond_1
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 3525
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 3526
    const/4 v2, -0x1

    .line 3527
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_3

    move v1, v2

    .line 3535
    :cond_2
    if-ltz v1, :cond_0

    .line 3536
    add-int/lit8 v2, v1, 0x1

    .line 3537
    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3536
    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3528
    :cond_3
    aget v4, v0, v1

    if-eq v4, v3, :cond_2

    .line 3527
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 927
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 930
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/n;->b()V

    .line 932
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 933
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 935
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->G:Lcom/alipay/mobile/socialsdk/api/view/m;

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->G:Lcom/alipay/mobile/socialsdk/api/view/m;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->H:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 946
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->H:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 949
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h:Z

    .line 950
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 16

    .prologue
    .line 844
    invoke-super/range {p0 .. p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 846
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    if-gez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 847
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 850
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    .line 851
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n:I

    .line 852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    .line 855
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->t()Z

    .line 858
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 859
    const/4 v5, -0x1

    .line 860
    const/4 v3, 0x0

    .line 862
    if-eqz v9, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getScrollY()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 867
    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v2, v4

    if-ge v1, v2, :cond_2

    .line 868
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 869
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r()V

    .line 874
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z:Landroid/graphics/Rect;

    .line 875
    const v1, 0x7fffffff

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v11

    .line 877
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 879
    const/4 v4, 0x0

    :goto_0
    if-lt v4, v11, :cond_4

    .line 898
    :cond_3
    if-ltz v5, :cond_6

    .line 899
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelectionFromOffset(II)V

    .line 903
    :goto_1
    return-void

    .line 881
    :cond_4
    add-int v2, v12, v4

    invoke-interface {v9, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 882
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 886
    invoke-virtual {v13, v10}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 887
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 888
    sparse-switch p2, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v8, v2, v7

    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v7, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v7, v14

    :goto_2
    sub-int/2addr v2, v6

    sub-int v6, v7, v8

    mul-int/2addr v6, v6

    mul-int/2addr v2, v2

    add-int/2addr v2, v6

    .line 890
    if-ge v2, v1, :cond_7

    .line 893
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_5

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_3
    move v3, v4

    move v15, v1

    move v1, v2

    move v2, v15

    .line 879
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v2

    goto :goto_0

    .line 888
    :sswitch_1
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    iget v7, v10, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v8, v2, v7

    iget v2, v10, Landroid/graphics/Rect;->right:I

    iget v7, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v7, v14

    goto :goto_2

    :sswitch_3
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :sswitch_4
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v8, v2, v7

    iget v2, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    iget v7, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v7, v14

    goto/16 :goto_2

    .line 893
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v1

    goto/16 :goto_3

    .line 901
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    goto/16 :goto_1

    :cond_7
    move v2, v3

    move v3, v5

    goto/16 :goto_4

    .line 888
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1641
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1642
    const-class v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1643
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1648
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1649
    const-class v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1651
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 1653
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1654
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 1655
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1658
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1659
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1662
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1219
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 1294
    :goto_0
    return v0

    .line 1223
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1224
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v2

    .line 1294
    goto :goto_0

    .line 1226
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    .line 1227
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1229
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1234
    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v4, :cond_3

    :goto_3
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    .line 1236
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h(I)I

    move-result v0

    .line 1238
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    .line 1239
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x:F

    .line 1241
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    move v0, v3

    .line 1242
    goto :goto_0

    .line 1226
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1234
    goto :goto_3

    .line 1243
    :cond_4
    if-ltz v0, :cond_1

    .line 1244
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    .line 1245
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    goto :goto_1

    .line 1251
    :pswitch_1
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    if-nez v0, :cond_1

    .line 1252
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b()V

    .line 1256
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1258
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1259
    if-gez v0, :cond_5

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onInterceptTouchEvent could not find pointer with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1261
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - did TwoWayView receive an inconsistent event stream?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 1262
    goto :goto_0

    .line 1267
    :cond_5
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_6

    .line 1268
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1273
    :goto_4
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x:F

    add-float/2addr v0, v1

    .line 1274
    float-to-int v1, v0

    .line 1275
    int-to-float v4, v1

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x:F

    .line 1277
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 1278
    goto/16 :goto_0

    .line 1270
    :cond_6
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_4

    .line 1286
    :pswitch_2
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    .line 1287
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1288
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c()V

    .line 1289
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    goto/16 :goto_1

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1604
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1609
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1614
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f:Z

    .line 3722
    if-eqz p1, :cond_0

    .line 3723
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 3724
    :goto_0
    if-lt v0, v2, :cond_2

    .line 3728
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/n;->a()V

    .line 3731
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r()V

    .line 3733
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f:Z

    .line 3735
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3736
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3738
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_1

    .line 3739
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_3

    .line 3740
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 3741
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 3747
    :cond_1
    :goto_1
    return-void

    .line 3725
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 3724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3743
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 3744
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3664
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3667
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 3668
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 3669
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3670
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3672
    const/4 v4, 0x0

    .line 3673
    const/4 v3, 0x0

    .line 3675
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    .line 3676
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-lez v0, :cond_10

    if-eqz v5, :cond_1

    .line 3677
    if-nez v6, :cond_10

    .line 3678
    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a:[Z

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I[Z)Landroid/view/View;

    move-result-object v4

    .line 3681
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_8

    move v0, p1

    .line 3683
    :goto_1
    const/4 v3, 0x0

    invoke-direct {p0, v4, v3, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Landroid/view/View;II)V

    .line 3685
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 3686
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 3688
    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    const/4 v8, -0x1

    invoke-virtual {v7, v4, v8}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Landroid/view/View;I)V

    .line 3693
    :goto_2
    if-nez v5, :cond_2

    .line 3694
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 3695
    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_2

    .line 3696
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 3700
    :cond_2
    if-nez v6, :cond_f

    .line 3701
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 3702
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 3703
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3707
    :cond_3
    :goto_3
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v1, :cond_4

    const/high16 v1, -0x80000000

    if-ne v6, v1, :cond_4

    .line 3708
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-nez v4, :cond_9

    add-int v0, v1, v3

    .line 3711
    :cond_4
    :goto_4
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v1, :cond_6

    const/high16 v1, -0x80000000

    if-ne v5, v1, :cond_6

    .line 3712
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-nez v4, :cond_c

    add-int/2addr v1, v3

    :cond_5
    :goto_5
    move v2, v1

    .line 3715
    :cond_6
    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setMeasuredDimension(II)V

    .line 3716
    return-void

    .line 3675
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto/16 :goto_0

    :cond_8
    move v0, p2

    .line 3681
    goto :goto_1

    .line 3708
    :cond_9
    add-int/2addr v3, v1

    iget v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    iget-object v8, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    iget-object v9, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a:[Z

    const/4 v1, 0x0

    move v11, v1

    move v1, v3

    move v3, v11

    :goto_6
    if-le v3, v7, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    invoke-direct {p0, v3, v9}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I[Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v3, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Landroid/view/View;II)V

    if-lez v3, :cond_b

    add-int/2addr v1, v6

    :cond_b
    const/4 v10, -0x1

    invoke-virtual {v8, v4, v10}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Landroid/view/View;I)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v4, v0, :cond_4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_6

    .line 3712
    :cond_c
    add-int/2addr v3, v1

    iget v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    iget-object v8, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a:[Z

    const/4 v1, 0x0

    move v11, v1

    move v1, v3

    move v3, v11

    :goto_7
    if-gt v3, v6, :cond_5

    invoke-direct {p0, v3, v8}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(I[Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v3, p2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Landroid/view/View;II)V

    if-lez v3, :cond_d

    add-int/2addr v1, v5

    :cond_d
    const/4 v9, -0x1

    invoke-virtual {v7, v4, v9}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Landroid/view/View;I)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-lt v4, v2, :cond_e

    move v1, v2

    goto :goto_5

    :cond_e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_7

    :cond_f
    move v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v3

    move v3, v4

    goto/16 :goto_2
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 985
    const/4 v1, 0x0

    .line 987
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    if-eq v2, p2, :cond_1

    .line 988
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->onScrollChanged(IIII)V

    .line 989
    iput p2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    .line 997
    :goto_0
    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->invalidate()V

    .line 999
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i()Z

    .line 1001
    :cond_0
    return-void

    .line 991
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    if-eq v2, p1, :cond_2

    .line 992
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->onScrollChanged(IIII)V

    .line 993
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 5583
    check-cast p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    .line 5584
    invoke-virtual {p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5586
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    .line 5587
    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->e:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->Z:J

    .line 5589
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->a:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 5590
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    .line 5591
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    .line 5592
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->a:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->W:J

    .line 5593
    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->d:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    .line 5594
    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->c:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    .line 5595
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->U:I

    .line 5611
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->g:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 5612
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->g:Landroid/util/SparseBooleanArray;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    .line 5615
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 5616
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->h:Landroid/support/v4/util/LongSparseArray;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    .line 5619
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->f:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    .line 5621
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    .line 5622
    return-void

    .line 5596
    :cond_3
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->b:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 5597
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j(I)V

    .line 5600
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    .line 5602
    iput v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->M:I

    .line 5603
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    .line 5604
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    .line 5605
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->b:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->W:J

    .line 5606
    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->d:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    .line 5607
    iget v0, p1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->c:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    .line 5608
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->U:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x0

    .line 5510
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5511
    new-instance v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 5513
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    if-eqz v0, :cond_0

    .line 5514
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    iget-wide v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->a:J

    iput-wide v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->a:J

    .line 5515
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    iget-wide v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->b:J

    iput-wide v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->b:J

    .line 5516
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->c:I

    iput v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->c:I

    .line 5517
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->d:I

    iput v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->d:I

    .line 5518
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->e:I

    iput v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->e:I

    move-object v0, v3

    .line 5578
    :goto_0
    return-object v0

    .line 5523
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 5524
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemId()J

    move-result-wide v4

    .line 5525
    iput-wide v4, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->a:J

    .line 5526
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v2

    iput v2, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->e:I

    .line 5528
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    .line 5529
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aa:I

    iput v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->c:I

    .line 5530
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->d:I

    .line 5531
    iput-wide v8, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->b:J

    .line 5561
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 5562
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_3
    iput-object v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->g:Landroid/util/SparseBooleanArray;

    .line 5565
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 5566
    new-instance v2, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v2}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 5568
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    .line 5569
    :goto_4
    if-lt v1, v4, :cond_b

    .line 5573
    iput-object v2, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->h:Landroid/support/v4/util/LongSparseArray;

    .line 5576
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    iput v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->f:I

    move-object v0, v3

    .line 5578
    goto :goto_0

    :cond_3
    move v0, v1

    .line 5523
    goto :goto_1

    .line 5532
    :cond_4
    if-eqz v0, :cond_7

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-lez v0, :cond_7

    .line 5545
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5546
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_5
    iput v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->c:I

    .line 5548
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    .line 5549
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-lt v0, v2, :cond_5

    .line 5550
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    add-int/lit8 v0, v0, -0x1

    .line 5553
    :cond_5
    iput v0, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->d:I

    .line 5554
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->b:J

    goto :goto_2

    .line 5546
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_5

    .line 5556
    :cond_7
    iput v1, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->c:I

    .line 5557
    iput-wide v8, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->b:J

    .line 5558
    iput v1, v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$SavedState;->d:I

    goto :goto_2

    .line 5562
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    goto :goto_3

    :cond_9
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move v0, v1

    :goto_6
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-lt v0, v4, :cond_a

    move-object v0, v2

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 5570
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v6, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5569
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x0

    const/4 v2, -0x1

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1299
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1302
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v9

    .line 1302
    goto :goto_0

    .line 1305
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h:Z

    if-eqz v0, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b()V

    .line 1312
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1315
    packed-switch v0, :pswitch_data_0

    .line 1569
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 1570
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    move v1, v9

    .line 1573
    goto :goto_0

    .line 1317
    :pswitch_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-nez v0, :cond_3

    .line 1318
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1322
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1327
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    .line 1329
    float-to-int v0, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 1331
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    .line 1332
    iput v10, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x:F

    .line 1334
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-nez v2, :cond_3

    .line 1335
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 1339
    iput v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1340
    invoke-direct {p0, v9}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    .line 1341
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h(I)I

    move v1, v9

    .line 1342
    goto :goto_0

    :cond_5
    move v0, v3

    .line 1327
    goto :goto_2

    .line 1343
    :cond_6
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    if-ltz v2, :cond_8

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1344
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1345
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->D:Lcom/alipay/mobile/socialsdk/api/view/k;

    if-nez v2, :cond_7

    new-instance v2, Lcom/alipay/mobile/socialsdk/api/view/k;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/k;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->D:Lcom/alipay/mobile/socialsdk/api/view/k;

    :cond_7
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->D:Lcom/alipay/mobile/socialsdk/api/view/k;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1348
    :cond_8
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    goto :goto_1

    .line 1354
    :pswitch_1
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1355
    if-gez v0, :cond_9

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onInterceptTouchEvent could not find pointer with id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1357
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " - did TwoWayView receive an inconsistent event stream?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1363
    :cond_9
    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_b

    .line 1364
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1369
    :goto_3
    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-eqz v3, :cond_a

    .line 1372
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r()V

    .line 1375
    :cond_a
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x:F

    add-float/2addr v3, v4

    .line 1376
    float-to-int v4, v3

    .line 1377
    int-to-float v5, v4

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x:F

    .line 1379
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    packed-switch v3, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_1

    .line 1385
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g(I)Z

    goto/16 :goto_1

    .line 1366
    :cond_b
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_3

    .line 1390
    :pswitch_4
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    .line 1391
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    if-ne v0, v6, :cond_10

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_c
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v0, v2

    :goto_4
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_5
    invoke-direct {p0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i(I)Z

    move-result v3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_6
    if-eqz v3, :cond_3

    neg-int v3, v4

    sub-int/2addr v0, v2

    sub-int v0, v3, v0

    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(II)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_5

    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_6

    :cond_10
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    sub-int v5, v3, v4

    neg-int v0, v4

    if-gez v5, :cond_11

    if-gez v3, :cond_12

    :cond_11
    if-lez v5, :cond_16

    if-gtz v3, :cond_16

    :cond_12
    neg-int v0, v3

    add-int v3, v4, v0

    :goto_7
    if-eqz v0, :cond_13

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(II)V

    :cond_13
    if-eqz v3, :cond_3

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    if-eqz v0, :cond_14

    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_14
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i(I)Z

    iput v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_17

    move v0, v2

    :cond_15
    :goto_8
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    iput v10, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x:F

    goto/16 :goto_1

    :cond_16
    move v3, v1

    goto :goto_7

    :cond_17
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h(I)I

    move-result v0

    if-ne v0, v2, :cond_15

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1399
    :pswitch_5
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g()V

    .line 1400
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1401
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    .line 1403
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 1404
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1405
    if-eqz v0, :cond_18

    .line 1406
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1409
    :cond_18
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_19

    .line 1410
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v1, v0

    .line 1413
    :cond_19
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c()V

    goto/16 :goto_1

    .line 1418
    :pswitch_6
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    packed-switch v0, :pswitch_data_2

    :goto_9
    :pswitch_7
    move v0, v1

    .line 1555
    :goto_a
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g()V

    .line 1556
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h()V

    .line 1557
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 1559
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1a

    .line 1560
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 1563
    :cond_1a
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c()V

    move v1, v0

    goto/16 :goto_1

    .line 1422
    :pswitch_8
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    .line 1423
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1428
    iget-boolean v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v6, :cond_22

    .line 1430
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_21

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_21

    move v0, v9

    .line 1435
    :goto_b
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_20

    if-eqz v0, :cond_20

    .line 1436
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    if-eqz v0, :cond_1b

    .line 1437
    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1440
    :cond_1b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->G:Lcom/alipay/mobile/socialsdk/api/view/m;

    if-nez v0, :cond_1c

    .line 1441
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/m;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/m;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->G:Lcom/alipay/mobile/socialsdk/api/view/m;

    .line 1444
    :cond_1c
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->G:Lcom/alipay/mobile/socialsdk/api/view/m;

    .line 1445
    iput v3, v5, Lcom/alipay/mobile/socialsdk/api/view/m;->a:I

    .line 1446
    invoke-virtual {v5}, Lcom/alipay/mobile/socialsdk/api/view/m;->a()V

    .line 1448
    iput v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    .line 1450
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    if-ne v0, v9, :cond_26

    .line 1451
    :cond_1d
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    if-nez v0, :cond_24

    .line 1452
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g()V

    .line 1457
    :goto_c
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 1459
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1460
    iput v9, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1462
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 1463
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->C:I

    invoke-direct {p0, v0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(ILandroid/view/View;)V

    .line 1464
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 1466
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 1467
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1468
    if-eqz v0, :cond_1e

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_1e

    .line 1469
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 1473
    :cond_1e
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->H:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    .line 1474
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1477
    :cond_1f
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/f;

    invoke-direct {v0, p0, v4, v5}, Lcom/alipay/mobile/socialsdk/api/view/f;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;Lcom/alipay/mobile/socialsdk/api/view/m;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->H:Ljava/lang/Runnable;

    .line 1493
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->H:Ljava/lang/Runnable;

    .line 1494
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 1493
    invoke-virtual {p0, v0, v3, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1504
    :cond_20
    :goto_d
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1505
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m()V

    move v0, v1

    .line 1507
    goto/16 :goto_a

    :cond_21
    move v0, v1

    .line 1430
    goto/16 :goto_b

    .line 1432
    :cond_22
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_23

    move v0, v9

    goto/16 :goto_b

    :cond_23
    move v0, v1

    goto/16 :goto_b

    .line 1454
    :cond_24
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h()V

    goto :goto_c

    .line 1496
    :cond_25
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1497
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m()V

    goto :goto_d

    .line 1499
    :cond_26
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1500
    invoke-virtual {v5}, Lcom/alipay/mobile/socialsdk/api/view/m;->run()V

    goto :goto_d

    .line 1511
    :pswitch_9
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1512
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1520
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_27

    .line 1521
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    .line 1522
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    .line 1521
    invoke-static {v0, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    move v4, v0

    .line 1528
    :goto_e
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2e

    .line 1529
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1530
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    .line 1532
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ap:Landroid/widget/Scroller;

    .line 1533
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_28

    move v2, v10

    :goto_f
    float-to-int v3, v2

    .line 1534
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_29

    :goto_10
    float-to-int v4, v4

    .line 1535
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_2a

    move v5, v1

    .line 1536
    :goto_11
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_2b

    move v6, v1

    .line 1537
    :goto_12
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_2c

    const/high16 v7, -0x80000000

    .line 1538
    :goto_13
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v2, :cond_2d

    const v8, 0x7fffffff

    :goto_14
    move v2, v1

    .line 1532
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1540
    iput v10, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w:F

    move v0, v9

    .line 1541
    goto/16 :goto_a

    .line 1524
    :cond_27
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ao:Landroid/view/VelocityTracker;

    .line 1525
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y:I

    .line 1524
    invoke-static {v0, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    move v4, v0

    goto :goto_e

    :cond_28
    move v2, v4

    .line 1533
    goto :goto_f

    :cond_29
    move v4, v10

    .line 1534
    goto :goto_10

    .line 1535
    :cond_2a
    const/high16 v5, -0x80000000

    goto :goto_11

    .line 1536
    :cond_2b
    const v6, 0x7fffffff

    goto :goto_12

    :cond_2c
    move v7, v1

    .line 1537
    goto :goto_13

    :cond_2d
    move v8, v1

    .line 1538
    goto :goto_14

    .line 1543
    :cond_2e
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1544
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    move v0, v1

    .line 1547
    goto/16 :goto_a

    .line 1550
    :cond_2f
    :pswitch_a
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1551
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(I)V

    goto/16 :goto_9

    :cond_30
    move v2, v1

    goto/16 :goto_5

    .line 1315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 1379
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 1418
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    .prologue
    .line 1578
    if-eqz p1, :cond_2

    .line 1580
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k()V

    .line 1585
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1586
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r()V

    .line 1589
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m()V

    .line 1600
    :cond_1
    :goto_0
    return-void

    .line 1591
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->am:I

    .line 1592
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1593
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    if-eqz v0, :cond_1

    .line 1594
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->O:I

    .line 1595
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1596
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 954
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 956
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 958
    :goto_0
    if-nez p1, :cond_2

    .line 959
    if-ne v0, v2, :cond_0

    .line 961
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ad:I

    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    .line 980
    :cond_0
    :goto_1
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->an:I

    .line 981
    return-void

    :cond_1
    move v0, v2

    .line 956
    goto :goto_0

    .line 965
    :cond_2
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->an:I

    if-eq v0, v3, :cond_0

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->an:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 967
    if-ne v0, v2, :cond_3

    .line 969
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->t()Z

    goto :goto_1

    .line 973
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k()V

    .line 974
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 975
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1667
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1703
    :cond_0
    :goto_0
    return v0

    .line 1671
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1673
    :sswitch_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1675
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_2

    .line 1676
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1682
    :goto_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i(I)Z

    move v0, v1

    .line 1683
    goto :goto_0

    .line 1678
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_1

    .line 1688
    :sswitch_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    if-lez v2, :cond_0

    .line 1690
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_3

    .line 1691
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1697
    :goto_2
    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i(I)Z

    move v0, v1

    .line 1698
    goto :goto_0

    .line 1693
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 1671
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5409
    .line 5411
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->MULTIPLE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_5

    .line 5412
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 5413
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5415
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5416
    if-eqz v0, :cond_3

    .line 5417
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5423
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    .line 5424
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    :goto_2
    move v0, v2

    .line 5449
    :goto_3
    if-eqz v0, :cond_1

    .line 5450
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v0, v5, :cond_b

    :goto_4
    if-lt v1, v4, :cond_c

    .line 5453
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    :cond_2
    move v0, v2

    .line 5412
    goto :goto_0

    .line 5419
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 5426
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    goto :goto_2

    .line 5430
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->SINGLE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_f

    .line 5431
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 5432
    :goto_5
    if-eqz v0, :cond_9

    .line 5433
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5434
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5436
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5437
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 5438
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5441
    :cond_6
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    :cond_7
    :goto_6
    move v0, v2

    .line 5446
    goto :goto_3

    :cond_8
    move v0, v2

    .line 5431
    goto :goto_5

    .line 5442
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5443
    :cond_a
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    goto :goto_6

    :cond_b
    move v2, v1

    .line 5450
    goto :goto_4

    :cond_c
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v5, v3, v1

    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_e

    check-cast v0, Landroid/widget/Checkable;

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_d
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_e
    if-eqz v2, :cond_d

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_7

    :cond_f
    move v0, v1

    goto/16 :goto_3
.end method

.method public pointToPosition(II)I
    .locals 4

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->B:Landroid/graphics/Rect;

    .line 1041
    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->B:Landroid/graphics/Rect;

    .line 1043
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->B:Landroid/graphics/Rect;

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildCount()I

    move-result v1

    .line 1047
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_1

    .line 1058
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 1048
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1050
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 1051
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1053
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1054
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 1047
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 1210
    if-eqz p1, :cond_0

    .line 1211
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c()V

    .line 1214
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1215
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3583
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    if-nez v0, :cond_0

    .line 3584
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 3586
    :cond_0
    return-void
.end method

.method public scrollBy(I)V
    .locals 0

    .prologue
    .line 3635
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i(I)Z

    .line 3636
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3

    .prologue
    .line 1622
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1623
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1624
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getLastVisiblePosition()I

    move-result v1

    .line 1626
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aw:I

    if-ne v2, v0, :cond_0

    .line 1627
    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ax:I

    if-ne v2, v1, :cond_0

    .line 1636
    :goto_0
    return-void

    .line 1630
    :cond_0
    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aw:I

    .line 1631
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ax:I

    .line 1635
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w()V

    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/n;->b()V

    .line 738
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    .line 739
    iput-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    .line 741
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->af:I

    .line 742
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ag:J

    .line 744
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    .line 753
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n:I

    .line 754
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    .line 756
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/g;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/socialsdk/api/view/g;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    .line 757
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j:Lcom/alipay/mobile/socialsdk/api/view/g;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 759
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(I)V

    .line 761
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o:Z

    .line 762
    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p:Z

    .line 764
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o:Z

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_3

    .line 766
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    .line 769
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q()I

    move-result v0

    .line 770
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j(I)V

    .line 771
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    .line 773
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    if-nez v0, :cond_4

    .line 774
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n()V

    .line 784
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->z()V

    .line 785
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    .line 786
    return-void

    .line 777
    :cond_5
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m:I

    .line 778
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->o:Z

    .line 779
    iput-boolean v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->p:Z

    .line 781
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->n()V

    goto :goto_0
.end method

.method public setChoiceMode(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;)V
    .locals 2

    .prologue
    .line 711
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    .line 713
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    .line 722
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->K:Z

    .line 453
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 6014
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 6015
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->au:Landroid/view/View;

    .line 6016
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->A()V

    .line 6017
    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6021
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6022
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 6024
    :goto_0
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->Q:Z

    .line 6025
    if-nez p1, :cond_0

    .line 6026
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->R:Z

    .line 6029
    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    :goto_1
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 6030
    return-void

    :cond_1
    move v0, v2

    .line 6022
    goto :goto_0

    :cond_2
    move v2, v1

    .line 6029
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6034
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6035
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 6037
    :goto_0
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->R:Z

    .line 6038
    if-eqz p1, :cond_0

    .line 6039
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->Q:Z

    .line 6042
    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    :goto_1
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 6043
    return-void

    :cond_1
    move v0, v2

    .line 6035
    goto :goto_0

    :cond_2
    move v2, v1

    .line 6042
    goto :goto_1
.end method

.method public setItemChecked(IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ah:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    sget-object v3, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->MULTIPLE:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_6

    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 624
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 626
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    if-eqz p2, :cond_4

    .line 628
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 634
    :cond_2
    :goto_1
    if-eq v0, p2, :cond_3

    .line 635
    if-eqz p2, :cond_5

    .line 636
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    .line 670
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g:Z

    if-nez v0, :cond_0

    .line 671
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l:Z

    .line 672
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x()V

    .line 673
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    goto :goto_0

    .line 630
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 638
    :cond_5
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    goto :goto_2

    .line 642
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 646
    :goto_3
    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 647
    :cond_7
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 649
    if-eqz v0, :cond_8

    .line 650
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 656
    :cond_8
    if-eqz p2, :cond_b

    .line 657
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 659
    if-eqz v0, :cond_9

    .line 660
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 663
    :cond_9
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    goto :goto_2

    :cond_a
    move v0, v2

    .line 642
    goto :goto_3

    .line 664
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aj:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 665
    :cond_c
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ai:I

    goto :goto_2
.end method

.method public setItemMargin(I)V
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    if-ne v0, p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e:I

    .line 389
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    goto :goto_0
.end method

.method public setItemsCanFocus(Z)V
    .locals 1

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k:Z

    .line 404
    if-nez p1, :cond_0

    .line 405
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setDescendantFocusability(I)V

    .line 407
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->as:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$OnScrollListener;

    .line 424
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d()V

    .line 425
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1020
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1024
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_1

    .line 1026
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1028
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1029
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1036
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    goto :goto_0

    .line 1032
    :cond_2
    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->aq:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1033
    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ar:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_1
.end method

.method public setRecyclerListener(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i:Lcom/alipay/mobile/socialsdk/api/view/n;

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Lcom/alipay/mobile/socialsdk/api/view/n;Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;)V

    .line 440
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 3599
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelectionFromOffset(II)V

    .line 3600
    return-void
.end method

.method public setSelectionFromOffset(II)V
    .locals 2

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 3632
    :cond_0
    :goto_0
    return-void

    .line 3607
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3608
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(IZ)I

    move-result p1

    .line 3609
    if-ltz p1, :cond_2

    .line 3610
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(I)V

    .line 3616
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 3617
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->al:I

    .line 3619
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d:Z

    if-eqz v0, :cond_5

    .line 3620
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    .line 3625
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->T:Z

    if-eqz v0, :cond_3

    .line 3626
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->V:I

    .line 3627
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->W:J

    .line 3630
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    goto :goto_0

    .line 3613
    :cond_4
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->I:I

    goto :goto_1

    .line 3622
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r:I

    goto :goto_2
.end method

.method public setSelector(I)V
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 464
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->L:Landroid/graphics/drawable/Drawable;

    .line 480
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 481
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 483
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 484
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m()V

    .line 485
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1183
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1184
    if-ltz v3, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1188
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 1189
    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    .line 1190
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1194
    :goto_0
    if-nez v0, :cond_0

    .line 1196
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1195
    invoke-static {v0, v3, v4, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->ak:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1199
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 1205
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
